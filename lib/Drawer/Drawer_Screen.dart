import 'dart:ui';
import 'package:drawer_flutter/About/about_screen.dart';
import 'package:drawer_flutter/Components/RegisterClassses.dart';
import 'package:drawer_flutter/Components/constants.dart';
import 'package:drawer_flutter/Profile/profile_screen.dart';
import 'package:drawer_flutter/Setting/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  KFDrawerController _drawerController;

  @override
  void initState() {
    super.initState();
    _drawerController = KFDrawerController(
      initialPage: ClassBuilder.fromString('HomeScreen'),
      items: [
        KFDrawerItem.initWithPage(
          text: Text('Profile',
              style: TextStyle(color: Colors.white, fontSize: 18)),
          icon: Icon(Icons.person, color: Colors.white),
          page: ProfileScreen(),
        ),
        KFDrawerItem.initWithPage(
          text: Text('Setting',
              style: TextStyle(color: Colors.white, fontSize: 18)),
          icon: Icon(Icons.settings, color: Colors.white),
          page: SettingScreen(),
        ),
        KFDrawerItem.initWithPage(
          text: Text('About',
              style: TextStyle(color: Colors.white, fontSize: 18)),
          icon: Icon(Icons.info, color: Colors.white),
          page: AboutScreen(),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: KFDrawer(
        controller: _drawerController,
        header: Padding(
          padding: const EdgeInsets.only(right: 120),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              width: MediaQuery.of(context).size.width * 0.8,
              child: Padding(
                padding: EdgeInsets.only(right: 50.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: ExactAssetImage('assets/pic.png'),
                    ),
                    Text(
                      "Asad Malik",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      'Admin',
                      style: TextStyle(color: Colors.white54, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        footer: KFDrawerItem(
          text: Text(
            'Logout',
            style: TextStyle(
              color: Colors.white54,
              fontSize: 18,
            ),
          ),
          icon: Icon(Icons.logout, color: Colors.white54),
          onPressed: () {},
        ),
        decoration: BoxDecoration(
          color: kPrimaryColorTwo,
        ),
      ),
    );
  }
}
