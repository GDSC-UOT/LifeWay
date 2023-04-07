import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lifeway/login.dart';
import 'package:lifeway/theme/colors.dart';
import 'package:lifeway/tools/SizeConfig.dart';
import '';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  
  @override
  void initState() {
    _timer=Timer.periodic(const Duration(seconds: 3), (timer) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Login()));
    });
    super.initState();
  }
  
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: primaryColor,
      body:  Center(child: Text("Life Way",style: TextStyle(color: white,fontSize: SizeConfig.blockSizeVertical*7,fontFamily: 'Kalam'),),),
    );
  }
}
