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

class WorkPage extends StatelessWidget {
  const WorkPage({Key? key}) : super(key: key);

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
                              "Works",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                fontSize: 24,
                                color: Color.fromARGB(255, 34, 52, 83),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "Paragraph 4(1), Schedule I provides provision for the following works under MGNREGA",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.blueAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "I. Category A: Public Works Relating to Natural Resources Management",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          // Divider(
                          //   color: Colors.blueAccent,
                          // ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "i. Water conservation & water harvesting structures to augment and improve groundwater like underground dykes, earthen dams, stop dams, check dams with special focus on recharging groundwater including drinking water sources.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "ii. Watershed management works, such as contour trenches, terracing, contour bunds, boulder checks, gabion structures & springshed development, resulting in a comprehensive treatment of a watershed.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "iii. Micro & minor irrigation works; creation, renovation & maintenance of irrigation canals & drains",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "iv. Renovation of traditional waterbodies, including desilting of irrigation tanks & other waterbodies.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "v. Afforestation, tree plantation & horticulture in common; forest lands, road margins, canal bunds, tank foreshores & coastal belts duly providing right to usufruct to the households covered in Paragraph 5.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "vi. Land development works in common land.",
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
                              "II. Category B: Individual Assets for Vulnerable Sections (only for Households in Paragraph 5 of Schedule I)",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          // Divider(
                          //   color: Colors.blueAccent,
                          // ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "i. Improving productivity of lands of households specified in Paragraph 5 through land development & by providing suitable infrastructure for irrigation including dug wells, farm ponds & other water harvesting structures.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "ii. Improving livelihoods through horticulture, sericulture, plantation& farm forestry.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "iii. Development of fallow or wastelands of households defined in Paragraph 5 of the Schedule I to bring it under cultivation.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "iv. Unskilled wage component in construction of houses sanctioned under the Indira Awaas Yojana or such other State or Central Government Scheme.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "v. Creating infrastructure for promotion of livestock, such as poultry shelter, goat shelter, piggery shelter, cattle shelter & fodder troughs for cattle.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "vi. Creating infrastructure for promotion of fisheries, such as fish drying yards, storage facilities & promotion of fisheries in seasonal waterbodies on public land.",
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
                              "III. Category C: Common Infrastructure for NRLM Compliant Self-help Groups",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          // Divider(
                          //   color: Colors.blueAccent,
                          // ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "i. Works for promoting agricultural productivity by creating durable infrastructure required for bio-fertilisers & post-harvest facilities including pucca storage facilities for agricultural produce",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "ii. Common worksheds for livelihood activities of self-help groups.",
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
                              "IV. Category D: Rural Infrastructure",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          // Divider(
                          //   color: Colors.blueAccent,
                          // ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "i. Rural sanitation related works, such as individual household latrines, school toilet units, Anganwadi toilets either independently or in convergence with schemes of other Government Departments to achieve 'open defecation free' status; solid & liquid waste management as per prescribed norms.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "ii. Providing all-weather rural road connectivity to unconnected villages & to connect identified rural production centres to the existing pucca road network & construction of pucca internal roads or streets including side drains & culverts within a village.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "iii. Construction of play fields.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "iv. Works for improving disaster preparedness or restoration of roads or restoration of other essential public infrastructure including flood control & protection works, providing drainage in waterlogged areas, deepening & repairing of flood channels, chaur renovation, construction of storm water drains for coastal protection.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "V. Construction of buildings for Gram Panchayats, women self-help groups' federations, cyclone shelters, anganwadi centres, village haats & crematoria at the village or block-level.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "vi. Construction of Food Grain Storage Structures for implementing the provisions of The National Food Security Act, 2013 (20 of 2013).",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "vii. Production of building material required for construction works under the Act.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "viii. Maintenance of rural public assets created under the Act.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "ix. Any other work, which may be notified by the Central Government in consultation with the State.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          // Divider(
                          //   color: Colors.blueAccent,
                          // ),
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
                          Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 15)),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                            child: Text(
                              "Works",
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
                              "Paragraph 4(1), Schedule I provides provision for the following works under MGNREGA",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.blueAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "I. Category A: Public Works Relating to Natural Resources Management",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          // Divider(
                          //   color: Colors.blueAccent,
                          // ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "i. Water conservation & water harvesting structures to augment and improve groundwater like underground dykes, earthen dams, stop dams, check dams with special focus on recharging groundwater including drinking water sources.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "ii. Watershed management works, such as contour trenches, terracing, contour bunds, boulder checks, gabion structures & springshed development, resulting in a comprehensive treatment of a watershed.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "iii. Micro & minor irrigation works; creation, renovation & maintenance of irrigation canals & drains",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "iv. Renovation of traditional waterbodies, including desilting of irrigation tanks & other waterbodies.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "v. Afforestation, tree plantation & horticulture in common; forest lands, road margins, canal bunds, tank foreshores & coastal belts duly providing right to usufruct to the households covered in Paragraph 5.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "vi. Land development works in common land.",
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
                              "II. Category B: Individual Assets for Vulnerable Sections (only for Households in Paragraph 5 of Schedule I)",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          // Divider(
                          //   color: Colors.blueAccent,
                          // ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "i. Improving productivity of lands of households specified in Paragraph 5 through land development & by providing suitable infrastructure for irrigation including dug wells, farm ponds & other water harvesting structures.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "ii. Improving livelihoods through horticulture, sericulture, plantation& farm forestry.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "iii. Development of fallow or wastelands of households defined in Paragraph 5 of the Schedule I to bring it under cultivation.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "iv. Unskilled wage component in construction of houses sanctioned under the Indira Awaas Yojana or such other State or Central Government Scheme.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "v. Creating infrastructure for promotion of livestock, such as poultry shelter, goat shelter, piggery shelter, cattle shelter & fodder troughs for cattle.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "vi. Creating infrastructure for promotion of fisheries, such as fish drying yards, storage facilities & promotion of fisheries in seasonal waterbodies on public land.",
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
                              "III. Category C: Common Infrastructure for NRLM Compliant Self-help Groups",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          // Divider(
                          //   color: Colors.blueAccent,
                          // ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "i. Works for promoting agricultural productivity by creating durable infrastructure required for bio-fertilisers & post-harvest facilities including pucca storage facilities for agricultural produce",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "ii. Common worksheds for livelihood activities of self-help groups.",
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
                              "IV. Category D: Rural Infrastructure",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          // Divider(
                          //   color: Colors.blueAccent,
                          // ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "i. Rural sanitation related works, such as individual household latrines, school toilet units, Anganwadi toilets either independently or in convergence with schemes of other Government Departments to achieve 'open defecation free' status; solid & liquid waste management as per prescribed norms.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "ii. Providing all-weather rural road connectivity to unconnected villages & to connect identified rural production centres to the existing pucca road network & construction of pucca internal roads or streets including side drains & culverts within a village.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "iii. Construction of play fields.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "iv. Works for improving disaster preparedness or restoration of roads or restoration of other essential public infrastructure including flood control & protection works, providing drainage in waterlogged areas, deepening & repairing of flood channels, chaur renovation, construction of storm water drains for coastal protection.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "V. Construction of buildings for Gram Panchayats, women self-help groups' federations, cyclone shelters, anganwadi centres, village haats & crematoria at the village or block-level.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "vi. Construction of Food Grain Storage Structures for implementing the provisions of The National Food Security Act, 2013 (20 of 2013).",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "vii. Production of building material required for construction works under the Act.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "viii. Maintenance of rural public assets created under the Act.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "ix. Any other work, which may be notified by the Central Government in consultation with the State.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          // Divider(
                          //   color: Colors.blueAccent,
                          // ),
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
              iconColor: Colors.blueAccent,
              title: const Text(
                'Works',
                style: TextStyle(fontSize: 18),
              ),
              textColor: Colors.blueAccent,
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
