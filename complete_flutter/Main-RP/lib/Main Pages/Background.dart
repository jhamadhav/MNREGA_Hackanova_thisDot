import 'package:final_nav_bar/Main%20Pages/Home.dart';
import 'package:final_nav_bar/form.dart';
import 'package:flutter/material.dart';
import 'package:final_nav_bar/Main%20Pages/Background.dart';
import 'package:final_nav_bar/Main%20Pages/About.dart';
import 'package:final_nav_bar/Main%20Pages/Objective.dart';
import 'package:final_nav_bar/Main%20Pages/Stakeholders.dart';
import 'package:final_nav_bar/Main%20Pages/TenEntitlement.dart';
import 'package:final_nav_bar/Main%20Pages/Works.dart';
import 'package:final_nav_bar/Main%20Pages/SearchAssets.dart';
// import 'package:final_nav_bar/NearbyAssets.dart';

class Backgroundpage extends StatelessWidget {
  const Backgroundpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.shortestSide < 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text("MNREGA"),
        backgroundColor: Color.fromARGB(255, 30, 56, 100),
      ),
      drawer: const NavigationDrawer(),
      backgroundColor: Color.fromARGB(255, 249, 250, 252),
      body: isMobile
          ? SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 203, 208, 214),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 78, 89, 106),
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: Offset(4, 4)),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
                          Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Center(
                                child: Text(
                                  "BACKGROUND",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                    fontSize: 28,
                                    color: Color.fromARGB(255, 39, 58, 91),
                                  ),
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "To address twin objectives of 'Planning' & 'Accountability' in tracking the Mahatma Gandhi National Rural Employment Guarantee Scheme (MGNREGS)-sponsored works & created 'Assets', the Ministry of Rural Development (MoRD), Government of India, has designed & implemented a technical solution 'GeoMGNREGA'.",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Abel',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
                            child: Text(
                              "It is a path breaking initiative that uses space technology for 'Geotagging' all assets created under MGNREGS for improved planning, effective monitoring, enhanced visibility & greater transparency. GeoMGNREGA was launched on 30th of September 2016 in public domain, with a vision to make assets under MGNREGS transparent. It is a combination of Remote Sensing (RS) & Geographical Information System (GIS)-based technologies that serve as an effective tool to collect, store & analyze the various assets under MGNREGS, such as Farm Ponds, Percolation Tanks, Check Dams, Irrigation Channels, Rural Roads etc.",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Abel',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          : SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 40.0, 10, 10),
                    child: Container(
                      width: 1100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 219, 214, 214),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                            child: Text(
                              "Background",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                fontSize: 24,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "To address twin objectives of 'Planning' & 'Accountability' in tracking the Mahatma Gandhi National Rural Employment Guarantee Scheme (MGNREGS)-sponsored works & created 'Assets', the Ministry of Rural Development (MoRD), Government of India, has designed & implemented a technical solution 'GeoMGNREGA'.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
                            child: Text(
                              "It is a path breaking initiative that uses space technology for 'Geotagging' all assets created under MGNREGS for improved planning, effective monitoring, enhanced visibility & greater transparency. GeoMGNREGA was launched on 30th of September 2016 in public domain, with a vision to make assets under MGNREGS transparent. It is a combination of Remote Sensing (RS) & Geographical Information System (GIS)-based technologies that serve as an effective tool to collect, store & analyze the various assets under MGNREGS, such as Farm Ponds, Percolation Tanks, Check Dams, Irrigation Channels, Rural Roads etc.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
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
              iconColor: Colors.blueAccent,
              title: const Text(
                'Background',
                style: TextStyle(fontSize: 18),
              ),
              textColor: Colors.blueAccent,
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
              title: const Text(
                'Objectives',
                style: TextStyle(fontSize: 18),
              ),
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
