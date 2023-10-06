import 'package:arplayground/vrScreen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: CustomAppBar(),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Divider(),
              SizedBox(height: 10),
              SizedBox(height: 15),
              Center(
                child: Wrap(
                  spacing: 16, // spacing between cards
                  runSpacing: 16, // spacing between rows
                  children: [
                    _buildCard(
                      'https://upload.wikimedia.org/wikipedia/commons/7/75/Army_Heritage_Museum_B.A.R..jpg',
                      'M1918',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VRScreen(
                              modelName: "M1918",
                              modelUrl: "assets/medical/M1918.glb",
                              description:
                                  "The M1918 Browning Automatic Rifle (BAR) is a legendary firearm that has played an important role in American military history. The weapon was designed by John M. Browning, a renowned American firearms designer, in the early 1900s.",
                            ),
                          ),
                        );
                      },
                    ),
                    _buildCard(
                      'https://upload.wikimedia.org/wikipedia/commons/e/ea/PEO_M240B_Profile.jpg',
                      'M240B',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VRScreen(
                              modelName: "M240B",
                              modelUrl: "assets/medical/M240.glb",
                              description:
                                  "The M240B Medium Machine Gun is a variant of the M240 mounted on Bradley Fighting Vehicles and Abrams tanks. It has been reconfigured for ground applications with collapsible buttstock, adjustable bipod, iron sights and forward rail assemblies. The system has a maximum effective range of 1,200 meters.",
                            ),
                          ),
                        );
                      },
                    ),
                    _buildCard(
                      'https://topwar.ru/uploads/posts/2020-03/1584076844_5_-cmmg-mk47-mutant-in-7_62.jpg',
                      'MK 47',
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VRScreen(
                            modelName: "MK 47",
                            modelUrl: "assets/medical/mk14.glb",
                            description:
                                "The Mk 47 has the latest sensing, targeting and ballistics technology. The Lightweight Video Sight produced by Raytheon, the Mk 47's fire control system, utilizes the latest in laser rangefinding, I2 night vision and ballistic computer technology.",
                          ),
                        ),
                      ),
                    ),
                    _buildCard(
                      'https://liquipedia.net/commons/images/2/24/FF_M4A1.png',
                      'M4A1',
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VRScreen(
                            modelName: "M4A1",
                            modelUrl: "assets/medical/M4A1.glb",
                            description:
                                "The M4 carbine has been used for close quarters operations where the M16 would be too long and bulky to use effectively. It has been a compact, light, customizable, and accurate weapon. Like other firearms, failure to properly maintain the M4 can result in malfunctions. This became apparent as it saw continued use in the sandy environments of Iraq and Afghanistan",
                          ),
                        ),
                      ),
                    ),
                    _buildCard(
                      'https://modernfirearms.net/wp-content/uploads/2010/10/m4a1-colt.jpg',
                      'AR15',
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VRScreen(
                            modelName: "AR15",
                            modelUrl: "assets/medical/AR15.glb",
                            description:
                                "Designed by American gun manufacturer ArmaLite in 1956, it was based on its AR-10 rifle. The ArmaLite AR-15 was designed to be a lightweight rifle and to fire a new high-velocity, lightweight, small-caliber cartridge to allow infantrymen to carry more ammunition.",
                          ),
                        ),
                      ),
                    ),
                    _buildCard(
                      'https://www.rooftopdefense.com/wp-content/uploads/2022/01/MARS-L.jpg',
                      'New Zealand Rifle',
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VRScreen(
                            modelName: "New Zealand Rifle",
                            modelUrl: "assets/medical/LMT15.glb",
                            description:
                                "The rifle is generally equipped with the Trijicon ACOG scope with an RMR red dot mounted on top. Most recent design upgrade with enhanced features based on the AR-15/M4/M-16 family of firearms. Equipped with M7 bayonet. Used by New Zealand Special Air Service.",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String imgUrl, String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(8.0),
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                imgUrl,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//
//
//
//
//
// Appbar
//
//
//
//
//

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        backgroundColor: Colors.blue[50],
        elevation: 0,
        title: Text(
          'Assault',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
