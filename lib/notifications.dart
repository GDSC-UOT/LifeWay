
import 'package:flutter/material.dart';
import 'package:lifeway/theme/colors.dart';
import 'package:lifeway/theme/icons.dart';
import 'package:lifeway/thirdpartyscreen.dart';
import 'package:lifeway/tools/SizeConfig.dart';

import 'theme/images.dart';


class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: primaryColor,
      body:Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child:
    Column(children: [
      Text("Notification",
        textAlign: TextAlign.center,
        style: TextStyle(color: white,fontWeight:FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*3.9),),
      SizedBox(height: MediaQuery.of(context).size.height*0.05),
      SizedBox(
          height: MediaQuery.of(context).size.height*0.3,
          width: MediaQuery.of(context).size.height*0.3,
          child:
          CircleAvatar(backgroundColor: secondColor,
              child:Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.002),child:
              SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child:CircleAvatar(backgroundColor: primaryColor,
                      child:Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.02),child:
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child:profile,))
                  )
              )
              )
          )),

      SizedBox(height: MediaQuery.of(context).size.height*0.015),
      Text("Nara",
        textAlign: TextAlign.center,
        style: TextStyle(color: white,fontWeight:FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*3),),

      SizedBox(height: MediaQuery.of(context).size.height*0.05,),
      btn("what's new"),
      SizedBox(height: MediaQuery.of(context).size.height*0.035,),
      btn("statistics"),
    ], ),
      )
    );
  }
  Widget btn(String title){
    return ElevatedButton(onPressed: (){
    },
      style: ElevatedButton.styleFrom(elevation:0,backgroundColor: primaryColor,shape:
      RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.02),
          side: BorderSide(color: white))
      ), child:
      Container(
        alignment: Alignment.centerLeft,
        width: MediaQuery.of(context).size.width*0.75,
        height: MediaQuery.of(context).size.height*0.085,
        child:
        Text(title,textAlign:TextAlign.left,style: TextStyle(color: white,fontWeight:FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*2.7),),
      ),
    );
  }
}
