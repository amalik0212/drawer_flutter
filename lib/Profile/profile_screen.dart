import 'package:drawer_flutter/Components/constants.dart';
import 'package:drawer_flutter/Drawer/Drawer_Screen.dart';
import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

// ignore: must_be_immutable
class ProfileScreen extends KFDrawerContent {
  ProfileScreen({
    Key key,
  });

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size _height = MediaQuery.of(context).size;
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
          backgroundColor: kPrimaryColorOne,
        ),
        body: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: _height.height,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
      onWillPop: onBackPressed,
    );
  }

  Future<bool> onBackPressed() {
    return Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
      builder: (context) {
        return DrawerScreen();
      },
    ), (route) => false);
  }
}
