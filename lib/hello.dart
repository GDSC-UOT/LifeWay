
import 'package:flutter/material.dart';
import 'package:lifeway/home.dart';
import 'package:lifeway/theme/colors.dart';
import 'package:lifeway/theme/icons.dart';
import 'package:lifeway/thirdpartyscreen.dart';
import 'package:lifeway/tools/SizeConfig.dart';

import 'theme/images.dart';


class Hello extends StatefulWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: primaryColor,
      body:Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.15),
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child:
    Column(children: [
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
      SizedBox(height: MediaQuery.of(context).size.height*0.085),
      SizedBox(width: MediaQuery.of(context).size.width*0.75,child:
      Text("Thank you for registering in the application of life. You can give life to many people who do not have it by donating whatever you\nwant.",
        textAlign: TextAlign.center,
        style: TextStyle(color: white,fontWeight:FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*2.5),),
      ),
      SizedBox(height: MediaQuery.of(context).size.height*0.08,),
      ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Home()));
      },
        style: ElevatedButton.styleFrom(backgroundColor: secondColor,shape:
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.008),

        )), child:
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width*0.75,
          height: MediaQuery.of(context).size.height*0.065,
          child:
          Text("Next",textAlign:TextAlign.center,style: TextStyle(color: white,fontWeight:FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*3.2),),
        ),
      ),
    ], ),
      )
    );
  }
}
