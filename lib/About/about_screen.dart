import 'package:drawer_flutter/Components/constants.dart';
import 'package:drawer_flutter/Drawer/Drawer_Screen.dart';
import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

// ignore: must_be_immutable
class AboutScreen extends KFDrawerContent {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    Size _height = MediaQuery.of(context).size;
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Change Password'),
          centerTitle: true,
          backgroundColor: kPrimaryColorOne,
        ),
        body: Container(
          width: double.infinity,
          height: _height.height,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: _height.height * 0.1,
              ),
              Image.asset(
                'assets/ak.png',
                height: 200,
                width: 200,
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Powered By',
                    style: TextStyle(
                      color: kPrimaryColorTwo,
                      fontSize: 20.0,
                      fontFamily: 'Assistant',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'AK Network Expert',
                    style: TextStyle(
                      fontFamily: 'Libre_Baskerville',
                      fontSize: 30.0,
                      color: kPrimaryColorTwo,
                    ),
                  ),
                ],
              ),
            ],
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
