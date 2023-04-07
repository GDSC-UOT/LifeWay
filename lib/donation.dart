
import 'package:flutter/material.dart';
import 'package:lifeway/notifications.dart';
import 'package:lifeway/theme/colors.dart';
import 'package:lifeway/theme/icons.dart';
import 'package:lifeway/tools/SizeConfig.dart';

import 'theme/images.dart';


class DonationScreen extends StatefulWidget {
  const DonationScreen({Key? key}) : super(key: key);

  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  late List title=["Clothes","Food","Book","Money"," Something else"];
  late List imgs=["assets/icons/clothes.png","assets/icons/food.png","assets/icons/book.png","assets/icons/dolar.png","assets/icons/box.png"];




  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: primaryColor,
     appBar: AppBar(
       elevation: 0,
       backgroundColor: primaryColor,
       actions: [
         Container(
           margin: EdgeInsets.only(right:MediaQuery.of(context).size.height*0.015,),
           height: MediaQuery.of(context).size.height*0.06,
           width: MediaQuery.of(context).size.height*0.06,
           child:profile,),
       ],
     ),
     body:SingleChildScrollView(child:
    Column(
      mainAxisSize: MainAxisSize.min,
      children: [
      SizedBox(height: MediaQuery.of(context).size.height*0.025),
        Text("Donation",
        textAlign: TextAlign.center,
        style: TextStyle(color: white,fontWeight:FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*4),),
      SizedBox(height: MediaQuery.of(context).size.height*0.03),
        SizedBox(child: ListView.builder(
          itemCount: title.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context,int index){
        return mycard(title[index], imgs[index]);
      }))
    ], ),
      )
    );
  }

  Widget mycard(String text, dynamic imgPath) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(MediaQuery.of(context).size.height * 0.02),
          ),
          border: Border.all(color: white)),
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.015),
      margin: EdgeInsets.all(MediaQuery.of(context).size.height * 0.018),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
                color: white,
                fontWeight: FontWeight.bold,
                fontSize: SizeConfig.blockSizeVertical * 2.8),
          ),
          const Spacer(),
          Image.asset(
            imgPath,
            width: MediaQuery.of(context).size.height * 0.05,
            height: MediaQuery.of(context).size.height * 0.05,
          ),
        ],
      ),
    );
  }
}
