
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lifeway/notifications.dart';
import 'package:lifeway/theme/colors.dart';
import 'package:lifeway/theme/icons.dart';
import 'package:lifeway/tools/SizeConfig.dart';

import 'theme/images.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}
class Msg{
  final isme;
  final isimg;
  final text;
  Msg({this.isme,this.isimg,this.text});
}
class _ChatScreenState extends State<ChatScreen> {

  late List<Msg> mymsg=[];
  @override
  void initState() {
    mymsg.add(Msg(isimg: false,isme: false,text: "This is part of your           \n donation"));
    mymsg.add(Msg(isimg: true,isme: false,text: ""));
    mymsg.add(Msg(isimg: false,isme: false,text: ""));
    mymsg.add(Msg(isimg: false,isme: true,text: "Ohh Thanks"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: thirdColor,
     appBar: AppBar(
       elevation: 0,
       backgroundColor: primaryColor,

       title:SizedBox(
           height: MediaQuery.of(context).size.height*0.3,
           width: MediaQuery.of(context).size.height*0.3,
       child:
       Row(children: [
         Container(
             alignment: Alignment.centerLeft,
             height: MediaQuery.of(context).size.height*0.3,
             child:
             CircleAvatar(backgroundColor: secondColor,

                 child:Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.002),child:
                 SizedBox(
                     height: MediaQuery.of(context).size.height,
                     width: MediaQuery.of(context).size.width,
                     child:CircleAvatar(backgroundColor: primaryColor,
                         child:Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.0035),child:
                         SizedBox(
                           height: MediaQuery.of(context).size.height,
                           width: MediaQuery.of(context).size.width,
                           child:CircleAvatar(backgroundColor: thirdColor,),))
                     )
                 )
                 )
             )),
         SizedBox(width: MediaQuery.of(context).size.width*0.025,),
         Text("Support Team",
           textAlign: TextAlign.center,
           style: TextStyle(color: white,fontWeight:FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*2),),

       ],),),
       actions: [
         IconButton(onPressed: (){}, icon: Icon(Icons.menu,size: MediaQuery.of(context).size.height*0.045,))
       ],
     ),
     floatingActionButton: SizedBox(width: MediaQuery.of(context).size.width,child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [Spacer(),
       GestureDetector(onTap: (){
         Fluttertoast.showToast(msg: "Comming soon!");
       },child:Container(
         width: MediaQuery.of(context).size.width,
         margin:  EdgeInsets.only(bottom: 2.5,left: MediaQuery.of(context).size.width*0.1),
         child: Container(
             padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05, top: 4),
             alignment: Alignment.centerLeft,
             decoration: BoxDecoration(
               border: Border.all(color: secondColor, width: 1.8),
                color: thirdColor,
               borderRadius:  BorderRadius.all(Radius.circular(MediaQuery.of(context).size.height*0.025)),
             ),
             width:MediaQuery.of(context).size.width,
             child: TextFormField(
               enabled: false,
               textAlign: TextAlign.left,
               obscureText: false,
               decoration: InputDecoration(
                 border: InputBorder.none,
                 hintText: "write a message",
                 hintStyle: TextStyle(color: black.withOpacity(0.60)),
                 suffixIcon: IconButton(
                   onPressed: () async {},
                   icon:
                   FittedBox(child: Image.asset("assets/icons/send.png"),fit: BoxFit.fill,)
                 ),
               ),
               style: const TextStyle(
                 color: Colors.blue,
                 fontWeight: FontWeight.w600,
               ),
             )),
       ),),

       ],),),
     body:SingleChildScrollView(
       child: Container(
         padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
         child: ListView.builder(
         shrinkWrap: true,
           itemCount: mymsg.length,
           itemBuilder: (BuildContext context,int index){
         return
         msg(mymsg[index].isme,mymsg[index].isimg,mymsg[index].text);
       }),),
      )
    );
  }
Widget msg(bool isme,bool isimg,String text){
    return (!isimg&&!isme&&text=="")?

    Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.005,bottom: MediaQuery.of(context).size.height*0.005,left: MediaQuery.of(context).size.height*0.01,right: MediaQuery.of(context).size.height*0.01),

      decoration: BoxDecoration(
          color: gray.withOpacity(0.20),
          borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.height*0.02))
      ),
      child: Text("Today",textAlign: TextAlign.center,
        style: TextStyle(color: white,fontWeight:FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*1.8),),

    )])
        :(isimg)?
    Container(
      transform: Matrix4.translationValues(MediaQuery.of(context).size.height*0.015, 0, 0),
      alignment: Alignment.centerLeft,
        width: MediaQuery.of(context).size.height*0.2,
        height: MediaQuery.of(context).size.height*0.325,
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02,bottom: MediaQuery.of(context).size.height*0.02),
         padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
        child: Image.asset("assets/images/img4.png"))
        :(isme)?
    Row(
        textDirection: TextDirection.rtl,
        children: [
    Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02,bottom: MediaQuery.of(context).size.height*0.02),
      padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
      decoration: BoxDecoration(
          color: const Color(0xFF1E1E1E),
          borderRadius: BorderRadius.only(topRight: const Radius.circular(0),topLeft: Radius.circular(MediaQuery.of(context).size.height*0.02),bottomRight: Radius.circular(MediaQuery.of(context).size.height*0.02),bottomLeft:Radius.circular(MediaQuery.of(context).size.height*0.02) )
      ),
      child: Text(text,
        style: TextStyle(color: white,fontWeight:FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*2),),

    )]):Row(
      textDirection: TextDirection.ltr,
      children: [
      CircleAvatar(backgroundColor: gray.withOpacity(0.40),),
      SizedBox(
        width: MediaQuery.of(context).size.width*0.02,
      ),
      Column(children: [
        SizedBox(
        height: MediaQuery.of(context).size.height*0.03,
      ),
        Container(
          transform: Matrix4.translationValues(0,MediaQuery.of(context).size.height*0.015, 0),
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.01,right: MediaQuery.of(context).size.height*0.01),
          // width: MediaQuery.of(context).size.width*0.8,
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(topLeft: const Radius.circular(0),topRight: Radius.circular(MediaQuery.of(context).size.height*0.02),bottomRight: Radius.circular(MediaQuery.of(context).size.height*0.02),bottomLeft:Radius.circular(MediaQuery.of(context).size.height*0.02) )
          ),
          child: Text(text,
            style: TextStyle(color: white,fontWeight:FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*2),),

        ),
      ],)
    ],);
}
}
