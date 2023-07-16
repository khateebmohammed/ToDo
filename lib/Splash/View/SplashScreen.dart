import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () => Get.offNamed("loginPage"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ([...Colors.primaries]..shuffle()).first.shade50,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(),
            Image.asset(
              "images/icon.png",
            ),
            Text(
              "splashTitle".tr,
              style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: ([...Colors.primaries]..shuffle()).first.shade800,
              ),
            )
          ],
        ),
      ),
    );
  }
}
