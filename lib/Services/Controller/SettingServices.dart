import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingServices extends GetxService {
  late SharedPreferences sharedPreferences;
  late User fireBaseCurrUser;

  Future<SettingServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}
