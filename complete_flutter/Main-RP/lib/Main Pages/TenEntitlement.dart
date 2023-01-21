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

class TenEntitlementPage extends StatelessWidget {
  const TenEntitlementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.shortestSide < 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text("MNREGA"),
        backgroundColor: Color.fromARGB(255, 30, 56, 100),
      ),
      drawer: const NavigationDrawer(),
      backgroundColor: Colors.white,
      body: isMobile
          ? SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                            child: Text(
                              "Ten Entitlement",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                fontSize: 24,
                                color: Color.fromARGB(255, 30, 56, 100),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "Entitlement I - Right to a Job Card (JC)",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.blueAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "Entitlement II - Right to Demand and receive work within 15 days",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.blueAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "Entitlement III - Right to Unemployment Allowance",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.blueAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "Entitlement IV - Right to plan & prepare a shelf of projects",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.blueAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "Entitlement V - Right to obtain work within a radius of 5 km",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.blueAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "Entitlement VI - Right to worksite facilities",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.blueAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "Entitlement VII - Right to notified wage rate",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.blueAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "Entitlement VIII - Right to receive wages within 15 days",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.blueAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "Entitlement IX - Compensation for delay in payment of wages",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.blueAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                            child: Text(
                              "Entitlement X- Right to time bound redress of grievances, right to conduct concurrent social audits and social audits of all Mahatma Gandhi NREGA expenditure",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
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
                    padding: const EdgeInsets.fromLTRB(10.0, 40.0, 10, 30),
                    child: Container(
                      width: 1100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                            child: Text(
                              "Ten Entitlement",
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
                              "Entitlement I - Right to a Job Card (JC)",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.blueAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "Entitlement II - Right to Demand and receive work within 15 days",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.blueAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "Entitlement III - Right to Unemployment Allowance",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.blueAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "Entitlement IV - Right to plan & prepare a shelf of projects",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.blueAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "Entitlement V - Right to obtain work within a radius of 5 km",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.blueAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "Entitlement VI - Right to worksite facilities",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.blueAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "Entitlement VII - Right to notified wage rate",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.blueAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "Entitlement VIII - Right to receive wages within 15 days",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.blueAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "Entitlement IX - Compensation for delay in payment of wages",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.blueAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                            child: Text(
                              "Entitlement X- Right to time bound redress of grievances, right to conduct concurrent social audits and social audits of all Mahatma Gandhi NREGA expenditure",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
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
              leading: const Icon(Icons.info),
              title: const Text(
                'OCR',
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
              iconColor: Colors.blueAccent,
              title: const Text(
                'Ten Entitlement',
                style: TextStyle(fontSize: 18),
              ),
              textColor: Colors.blueAccent,
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
