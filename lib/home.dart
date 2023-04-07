import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:lifeway/chatscreen.dart';
import 'package:lifeway/notifications.dart';
import 'homescreen.dart';
import 'theme/colors.dart';
import 'theme/images.dart';
import 'thirdpartyscreen.dart';
import 'tools/SizeConfig.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late int index = 3;
  final pages=[
    const ThirdPartyScreen(title: "Contact Us",text: "You can contact us to help you with what you want about our application and its use, or if you have feedback",button: "Talk to us",bar: false,),

    const Notifications(),
    const SizedBox.shrink(),
    // const ChatScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: primaryColor,
          title: Container(
            transform: Matrix4.translationValues(-MediaQuery.of(context).size.height*0.06, 0, 0),
          child:
          Text("Hello!",textAlign:TextAlign.left,style: TextStyle(color: white,fontWeight:FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*2.7),),
        ),
          leading: const SizedBox.shrink(),
          actions: [Container(
            margin: EdgeInsets.only(right:MediaQuery.of(context).size.height*0.015),
            height: MediaQuery.of(context).size.height*0.06,
            width: MediaQuery.of(context).size.height*0.06,
            child:profile,),],
        ),
        body:pages[index],
      bottomNavigationBar: CurvedNavigationBar(
      index: index,
      height: MediaQuery.of(context).size.height*0.087,
      items: <Widget>[
        Image.asset("assets/icons/account.png",width: MediaQuery.of(context).size.height*0.05,height: MediaQuery.of(context).size.height*0.05,),
        Image.asset("assets/icons/question.png",width: MediaQuery.of(context).size.height*0.05,height: MediaQuery.of(context).size.height*0.05,),
        IconButton(onPressed:() {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChatScreen()));
        }, icon: Image.asset("assets/icons/chat.png",width: MediaQuery.of(context).size.height*0.05,height: MediaQuery.of(context).size.height*0.05,),),
        Image.asset("assets/icons/home.png",width: MediaQuery.of(context).size.height*0.05,height: MediaQuery.of(context).size.height*0.05,),
      ],
      color: thirdColor,
      buttonBackgroundColor: thirdColor,
      backgroundColor: primaryColor,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 500),
      onTap: (value)  {
        if(value!=2){
        setState(() {
          index=value;
        });}
        else{
          index=3;
        }
      },
      letIndexChange: (index) => (index==2)?false:true,
    ),

    );
  }
  Widget myCard(String title,String imgpath){
    return Container(
      height: 40,
      margin: EdgeInsets.all(MediaQuery.of(context).size.height*0.015),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: secondColor,
        borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.height*0.05))
      ),
    );
  }
}
