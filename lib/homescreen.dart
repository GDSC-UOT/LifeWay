import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:lifeway/donation.dart';
import 'package:lifeway/notifications.dart';
import 'package:lifeway/theme/colors.dart';
import 'package:lifeway/thirdpartyscreen.dart';
import 'package:lifeway/tools/SizeConfig.dart';

import 'theme/icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late int index = 0;
  late List imgs=["assets/images/img1.png","assets/images/img2.png","assets/images/img3.png"];
  late List titles=["Donation","Volunteering","Giving A Job"];
  late List onclick=[
    (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const DonationScreen()));
    },
    (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ThirdPartyScreen(title: "Volunteering",text: "You can be a volunteer with us by clicking on the form below to register your information and we will inform you of the details",button: "Register",bar: true,)));
    },
    (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ThirdPartyScreen(title: "Provide a job",text: "You can provide a job opportunity for those who need it. You can register the job information in the form below and we will inform you of the details",button: "Register",bar: true,)));
    },
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: primaryColor,
        body:
        Container(
          margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.03 ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              itemCount: titles.length,
              itemBuilder: (BuildContext context,int index){
            return myCard(titles[index], imgs[index],onclick[index]);
          })

        ),
    );
  }
  Widget myCard(String title,String imgpath,dynamic function){
    Image img= Image.asset(imgpath);
    return TextButton(onPressed: function, child:Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height*0.25,
      margin: EdgeInsets.only(left:MediaQuery.of(context).size.height*0.02,right: MediaQuery.of(context).size.height*0.02),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image:
          DecorationImage(
              image: img.image
              ,fit: BoxFit.fill,
      alignment: Alignment.center,opacity: 0.65
          ),
        borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.height*0.03)),
      ),
      child: Text(title,textAlign:TextAlign.center,style: TextStyle(color: white,fontWeight:FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*2.7),),

    ));
  }
}
