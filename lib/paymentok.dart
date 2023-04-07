
import 'package:flutter/material.dart';
import 'package:lifeway/theme/colors.dart';
import 'package:lifeway/theme/icons.dart';
import 'package:lifeway/thirdpartyscreen.dart';
import 'package:lifeway/tools/SizeConfig.dart';

import 'theme/images.dart';


class PaymentOk extends StatefulWidget {
  const PaymentOk({Key? key}) : super(key: key);

  @override
  State<PaymentOk> createState() => _PaymentOkState();
}

class _PaymentOkState extends State<PaymentOk> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(backgroundColor: primaryColor,elevation: 0,),
      body:Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child:
    Column(children: [
      SizedBox(height: MediaQuery.of(context).size.height*0.01),
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
                        child:check,))
                  )
              )
              )
          )),

      SizedBox(height: MediaQuery.of(context).size.height*0.015),
      Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),child:Text("Payment completed successfully. Thank you for making the world a better place. We will let you know\nthe details",
        textAlign: TextAlign.center,
        style: TextStyle(color: white,fontWeight:FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*3),),)

    ], ),
      )
    );
  }
}
