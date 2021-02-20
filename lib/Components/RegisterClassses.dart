import 'package:drawer_flutter/About/about_screen.dart';
import 'package:drawer_flutter/Home/HomeScreen.dart';
import 'package:drawer_flutter/Profile/profile_screen.dart';
import 'package:drawer_flutter/Setting/setting_screen.dart';

typedef T Constructor<T>();

final Map<String, Constructor<Object>> _constructors =
    <String, Constructor<Object>>{};

void register<T>(Constructor<T> constructor) {
  _constructors[T.toString()] = constructor;
}

class ClassBuilder {
  static void registerClasses() {
    register<AboutScreen>(() => AboutScreen());
    register<HomeScreen>(() => HomeScreen());
    register<SettingScreen>(() => SettingScreen());
    register<ProfileScreen>(() => ProfileScreen());
  }

  static dynamic fromString(String type) {
    return _constructors[type]();
  }
}
