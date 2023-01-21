import 'dart:collection';
import 'dart:core';
import 'dart:core';
import 'dart:core';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:exif/exif.dart';
import 'package:final_nav_bar/Main%20Pages/About.dart';
import 'package:final_nav_bar/Main%20Pages/Background.dart';
import 'package:final_nav_bar/Main%20Pages/Home.dart';
import 'package:final_nav_bar/Main%20Pages/Objective.dart';
import 'package:final_nav_bar/Main%20Pages/Stakeholders.dart';
import 'package:final_nav_bar/Main%20Pages/TenEntitlement.dart';
import 'package:final_nav_bar/Main%20Pages/Works.dart';
import 'package:final_nav_bar/form.dart';
import 'package:final_nav_bar/object_detect.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_connect/http/src/multipart/multipart_file.dart';
import 'dart:developer' as log;
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:path/path.dart';
import 'package:async/async.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

class mse_officer extends StatefulWidget {
  mse_officer() : super();

  final String title = "Flutter Save Image in Preferences";

  @override
  _mse_officer createState() => _mse_officer();
}

class _mse_officer extends State<mse_officer> {
  File? image;
  // Declare this variable
  String myText = "Initial Text";

  var gpsLatitude;
  var gpsLongitude;
  String dropdownValue = 'latur';

  void UpdateText(String text) {
    setState(() {
      myText = text;
    });
  }

  postRequest(String img_url) async {
    var url = 'https://mnrega-thisDot.syfnx800.repl.co/mse';

    Map data = {
      'img_url': img_url,
      'latitude': gpsLatitude.toString(),
      'longitude': gpsLongitude.toString(),
      'zone': dropdownValue
    };

    //encode Map to JSON
    var body = json.encode(data);

    var response = await http.post(Uri.parse(url),
        headers: {"Content-Type": "application/json"}, body: body);
    print("${response.statusCode}");
    print("${response.body}");

    UpdateText(response.body.toString());

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

  getLoc(XFile image) async {
    var bytes = await image.readAsBytes();
    var tags = await readExifFromBytes(bytes);
    UpdateText("loading...");
    if (tags.containsKey('GPS GPSLongitude')) {
      gpsLatitude = tags['GPS GPSLatitude'];
      final latdir = tags['GPS GPSLatitudeRef'];
      gpsLongitude = tags['GPS GPSLongitude'];
      final longdir = tags['GPS GPSLongitudeRef'];

      UpdateText("GpsLatitude$gpsLatitude\nGpsLongitude$gpsLongitude");

      String s = tags.toString();
      var str = s.split(", ");

      log.log(tags.toString(), name: "data");
      log.log(gpsLatitude.toString(), name: "GPSLatitude");
      log.log(gpsLongitude.toString(), name: "GPSLongitude");
      log.log(latdir.toString(), name: "latdir");
      log.log(longdir.toString(), name: "longdir");
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 252, 248, 248),
            child: Container(
              margin: const EdgeInsets.all(60),
            ),
          ),
          Text(
            myText,
            style: TextStyle(fontSize: 20),
          ),
          MaterialButton(
              color: Colors.blue,
              child: const Text("Pick Image from Gallery",
                  style: TextStyle(
                      color: Colors.white70, fontWeight: FontWeight.bold)),
              onPressed: () {
                pickImage();
              }),
          SizedBox(
            height: 20,
          ),
          image != null ? Image.file(image!) : Text("No image selected"),
          SizedBox(
            height: 50,
          ),
          // Step 2.
          DropdownButton<String>(
            // Step 3.
            value: dropdownValue,
            // Step 4.
            items: <String>['latur', 'beed', 'karjat']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(fontSize: 20),
                ),
              );
            }).toList(),
            // Step 5.
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
                print(newValue);
              });
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Selected Value: $dropdownValue',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 0,
          children: [
            ListTile(
              leading: const Icon(Icons.location_pin),
              title: const Text(
                'Home',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Home(),
                ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.location_pin),
              title: const Text(
                'Background',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Backgroundpage(),
                ));
              },
            ),
            const Divider(
              color: Colors.blueAccent,
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text(
                'About MGNREGA',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AboutPage(),
                ));
              },
            ),
            const Divider(
              color: Colors.blueAccent,
            ),
            ListTile(
              leading: const Icon(Icons.games_outlined),
              iconColor: Colors.blueAccent,
              title: const Text(
                'OCR',
                style: TextStyle(fontSize: 18),
              ),
              textColor: Colors.blueAccent,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => mse_officer(),
                ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.games_outlined),
              iconColor: Colors.blueAccent,
              title: const Text(
                'Object Detect',
                style: TextStyle(fontSize: 18),
              ),
              textColor: Colors.blueAccent,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => object_detect(),
                ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.games_outlined),
              iconColor: Colors.blueAccent,
              title: const Text(
                'Objectives',
                style: TextStyle(fontSize: 18),
              ),
              textColor: Colors.blueAccent,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ObjectivePage(),
                ));
              },
            ),
            const Divider(
              color: Colors.blueAccent,
            ),
            ListTile(
              leading: const Icon(Icons.stacked_bar_chart),
              title: const Text(
                'Stakeholders',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const StakeholderPage(),
                ));
              },
            ),
            const Divider(
              color: Colors.blueAccent,
            ),
            ListTile(
              leading: const Icon(Icons.verified_user),
              title: const Text(
                'Ten Entitlement',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const TenEntitlementPage(),
                ));
              },
            ),
            const Divider(
              color: Colors.blueAccent,
            ),
            ListTile(
              leading: const Icon(Icons.work),
              title: const Text(
                'Works',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const WorkPage(),
                ));
              },
            ),
            const Divider(
              color: Colors.blueAccent,
            ),
            ListTile(
              leading: const Icon(Icons.share_location_sharp),
              title: const Text(
                'Search Assets',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => myForm(),
                ));
              },
            ),
            const Divider(
              color: Colors.blueAccent,
            ),
            // ListTile(
            //   leading: const Icon(Icons.my_location),
            //   title: const Text('Nearby Assets'),
            //   onTap: () {
            //     // Navigator.of(context).push(MaterialPageRoute(
            //     //   builder: (context) => const NearbyAssetsPage(),
            //     // ));
            //   },
            // ),
            // const Divider(
            //   color: Colors.blueAccent,
            // ),
          ],
        ),
      );
}
