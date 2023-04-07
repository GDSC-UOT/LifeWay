
import 'package:flutter/material.dart';
import 'package:lifeway/notifications.dart';
import 'package:lifeway/theme/colors.dart';
import 'package:lifeway/theme/icons.dart';
import 'package:lifeway/tools/SizeConfig.dart';

import 'theme/images.dart';


class ThirdPartyScreen extends StatefulWidget {
  final title;
  final text;
  final button;
  final bar;
  const ThirdPartyScreen({Key? key, this.title, this.text, this.button, this.bar}) : super(key: key);

  @override
  State<ThirdPartyScreen> createState() => _ThirdPartyScreenState();
}

class _ThirdPartyScreenState extends State<ThirdPartyScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: (widget.bar)?AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        actions: [
          Container(
            margin: EdgeInsets.only(right:MediaQuery.of(context).size.height*0.015,),
            height: MediaQuery.of(context).size.height*0.06,
          width: MediaQuery.of(context).size.height*0.06,
          child:profile,),
        ],
      ):const PreferredSize( preferredSize: Size.fromHeight(0),child: SizedBox.shrink(),),
      body:Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.07),
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child:
    Column(children: [
      SizedBox(height: MediaQuery.of(context).size.height*0.035),
        Text(widget.title,
        textAlign: TextAlign.center,
        style: TextStyle(color: white,fontWeight:FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*4),),
      SizedBox(height: MediaQuery.of(context).size.height*0.1),
      SizedBox(width: MediaQuery.of(context).size.width*0.75,child:
      Text(widget.text,
        textAlign: TextAlign.center,
        style: TextStyle(color: white,fontWeight:FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*2.5),),
      ),

      SizedBox(height: MediaQuery.of(context).size.height*0.15,),
      ElevatedButton(onPressed: (){

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
          Text(widget.button,textAlign:TextAlign.center,style: TextStyle(color: white,fontWeight:FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*3.2),),
        ),
      ),
    ], ),
      )
    );
  }
}
