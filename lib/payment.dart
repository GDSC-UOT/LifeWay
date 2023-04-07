
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lifeway/paymentok.dart';
import 'package:lifeway/theme/colors.dart';
import 'package:lifeway/theme/icons.dart';
import 'package:lifeway/thirdpartyscreen.dart';
import 'package:lifeway/tools/SizeConfig.dart';

import 'theme/images.dart';


class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}
class Mycard {
  final int id;
  final String img;
  Mycard(this.id, this.img,);
}
class _PaymentState extends State<Payment> {

  late List<Mycard> cardC = [];
  late List<Widget> cardCw = [];
  late List img=["assets/icons/card1.png","assets/icons/card3.png","assets/icons/card2.png"];
  final CarouselController _controller = CarouselController();

getcard(){
  cardC.clear();
  cardCw.clear();
  for(var i=0;i<3;i++){
    cardC.add(Mycard(i,img[i]));
  }

}

@override
  void initState() {
  getcard();
  super.initState();
  }

  @override
  Widget build(BuildContext context) {
    cardC.forEach((e){
      cardCw.add(
          Container(
            // margin: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.005,right: MediaQuery.of(context).size.height*0.005),
            width: MediaQuery.of(context).size.width*0.6,
            height: MediaQuery.of(context).size.height*0.2,
            child: Image.asset(e.img),
          ));
    });
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: primaryColor,
      body:Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child:
    Column(children: [
      SizedBox(height: MediaQuery.of(context).size.height*0.06),

      Text("payment method",
        textAlign: TextAlign.center,
        style: TextStyle(color: white,fontWeight:FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*3.9),),
      SizedBox(height: MediaQuery.of(context).size.height*0.025),
      Row(children: [
        SizedBox(width: MediaQuery.of(context).size.width*0.07,),
        Text("My cards",
          textAlign: TextAlign.center,
          style: TextStyle(color: white,fontWeight:FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*2.3),),
        const Spacer(),

       Container(
         padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
         decoration: BoxDecoration(
           color: thirdColor,
           borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.height*0.1))
         ),
         child: Row(children: [
         Icon(Icons.add,size: MediaQuery.of(context).size.height*0.03),
           SizedBox(width: MediaQuery.of(context).size.width*0.02,),

           Text("New Card",
           textAlign: TextAlign.center,
           style: TextStyle(color: black,fontWeight:FontWeight.normal,fontSize: SizeConfig.blockSizeVertical*1.8),),

       ],),),
        SizedBox(width: MediaQuery.of(context).size.width*0.05,),
      ],),
      SizedBox(height: MediaQuery.of(context).size.height*0.015),

      CarouselSlider(
        items: cardCw,
        carouselController: _controller,
        options: CarouselOptions(
            viewportFraction: 0.7,
            enlargeCenterPage: false,
            aspectRatio: 1,
            height: MediaQuery.of(context).size.height*0.2,
            onPageChanged: (index, reason) {
              setState(() {
              });
            }),
      ),
      SizedBox(height: MediaQuery.of(context).size.height*0.03),

      btn("Payment via cash"),
      SizedBox(height: MediaQuery.of(context).size.height*0.035,),
      btn("Payment via Credit"),
    ], ),
      )
    );
  }
  Widget btn(String title){
    return ElevatedButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentOk()));
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
