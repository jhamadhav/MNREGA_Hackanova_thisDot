import 'dart:collection';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:developer' as log;
import 'package:exif/exif.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
// import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:async/async.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? image;
  // Declare this variable
  String myText = "Initial Text";

  void UpdateText(String text) {
    setState(() {
      myText = text;
    });
  }

  postRequest(String img_url) async {
    var url = 'https://mnrega-thisDot.syfnx800.repl.co/ocr';

    Map data = {'url': img_url};
    //encode Map to JSON
    var body = json.encode(data);

    var response = await http.post(Uri.parse(url),
        headers: {"Content-Type": "application/json"}, body: body);
    print("${response.statusCode}");
    print("${response.body}");
    UpdateText(jsonDecode(response.body)["text"]);
    return response;
  }

  upload(File imageFile) async {
    // open a bytestream
    var stream =
        new http.ByteStream(DelegatingStream.typed(imageFile.openRead()));
    // get file length
    var length = await imageFile.length();

    // string to uri
    var uri = Uri.parse("https://mnrega.el.r.appspot.com/uploads");

    // create multipart request
    var request = new http.MultipartRequest("POST", uri);

    // multipart that takes file
    var multipartFile = new http.MultipartFile('file', stream, length,
        filename: basename(imageFile.path));

    // add file to multipart
    request.files.add(multipartFile);

    // send
    var response = await request.send();

    print(response.statusCode);

    // listen for response
    var img_url = "";
    response.stream.transform(utf8.decoder).listen((value) {
      log.log(value, name: "Response");
      img_url = jsonDecode(value)["data"];
      postRequest(img_url);
    });
    log.log(img_url, name: "Response2");
  }

  void getLoc(XFile image) async {
    var bytes = await image.readAsBytes();
    var tags = await readExifFromBytes(bytes);

    if (tags.containsKey('GPS GPSLongitude')) {
      final gpsLatitude = tags['GPS GPSLatitude'];
      final latdir = tags['GPS GPSLatitudeRef'];
      final gpsLongitude = tags['GPS GPSLongitude'];
      final longdir = tags['GPS GPSLongitudeRef'];

      String s = tags.toString();
      var str = s.split(", ");

      log.log(tags.toString(), name: "data");
      log.log(gpsLatitude.toString(), name: "GPSLatitude");
      log.log(gpsLongitude.toString(), name: "GPSLongitude");
      log.log(latdir.toString(), name: "latdir");
      log.log(longdir.toString(), name: "longdir");

      // print_location =
      //     "GPSLatitude${gpsLatitude}GPSLongitude${gpsLongitude}Latdir${gpsLatitude}Longdir$longdir";
    }
  }

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;

      final imageTemp = File(image.path);
      getLoc(image!);
      upload(File(image.path));

      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future pickImageC() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if (image == null) return;

      final imageTemp = File(image.path);
      getLoc(image!);
      upload(File(image.path));

      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  // Future<bool> _onBackPress() {
  //   return showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         content: Text('Exit From The App'),
  //         actions: [
  //           TextButton(
  //             onPressed: () {
  //               Navigator.of(context).pop(false);
  //             },
  //             child: Text('No'),
  //           ),
  //           TextButton(
  //             onPressed: () {
  //               Navigator.of(context).pop(true);
  //             },
  //             child: Text('Yes'),
  //           ),
  //         ],
  //       );
  //     },
  //   ).then((value) => value ?? false);
  // }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // return _onBackPress();
        return true;
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Image Picker Example"),
          ),
          body: Center(
            child: Column(
              children: [
                Text(myText),
                MaterialButton(
                    color: Colors.blue,
                    child: const Text("Pick Image from Gallery",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold)),
                    onPressed: () {
                      pickImage();
                    }),
                MaterialButton(
                    color: Colors.blue,
                    child: const Text("Pick Image from Camera",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold)),
                    onPressed: () {
                      pickImageC();
                    }),
                SizedBox(
                  height: 20,
                ),
                image != null ? Image.file(image!) : Text("No image selected")
              ],
            ),
          )),
    );
  }
}
