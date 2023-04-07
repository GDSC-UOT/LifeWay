import 'package:flutter/material.dart';
import 'package:lifeway/hello.dart';
import 'package:lifeway/theme/colors.dart';

import 'tools/SizeConfig.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late bool hint = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: primaryColor,
        body: Container(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child:
                  //   Container(
                  // height: MediaQuery.of(context).size.height,
                  // width: MediaQuery.of(context).size.width,
                  // child:
                  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                        color: white,
                        fontSize: SizeConfig.blockSizeVertical * 3.8),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.002,
                  ),
                  Text(
                    "Enter your details",
                    style: TextStyle(
                        color: white.withOpacity(0.38),
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.blockSizeVertical * 2.2),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                              MediaQuery.of(context).size.height * 0.03),
                          topRight: Radius.circular(
                              MediaQuery.of(context).size.height * 0.03),
                        ),
                        color: thirdColor),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          margin: EdgeInsets.all(
                              MediaQuery.of(context).size.height * 0.02),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                    MediaQuery.of(context).size.height * 0.01),
                              ),
                              border: Border.all(color: secondColor)),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: SizeConfig.blockSizeVertical * 1.9),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                  fontSize: SizeConfig.blockSizeVertical * 1.9),
                              floatingLabelStyle: TextStyle(
                                  color: black.withOpacity(0.40),
                                  fontWeight: FontWeight.bold,
                                  fontSize: SizeConfig.blockSizeVertical * 2.5),
                              labelText: "Email Address",
                              labelStyle: TextStyle(
                                  color: black.withOpacity(0.40),
                                  fontWeight: FontWeight.bold),
                              contentPadding: EdgeInsets.all(
                                  MediaQuery.of(context).size.height * 0.008),
                              // contentPadding: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.008,right:MediaQuery.of(context).size.height*0.008 ),
                              focusedErrorBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                            ),
                            cursorColor: secondColor,
                            obscureText: false,
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          margin: EdgeInsets.all(
                              MediaQuery.of(context).size.height * 0.02),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                    MediaQuery.of(context).size.height * 0.01),
                              ),
                              border: Border.all(color: secondColor)),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: SizeConfig.blockSizeVertical * 1.9),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                  fontSize: SizeConfig.blockSizeVertical * 1.9),
                              floatingLabelStyle: TextStyle(
                                  color: black.withOpacity(0.40),
                                  fontWeight: FontWeight.bold,
                                  fontSize: SizeConfig.blockSizeVertical * 2.5),
                              labelText: "Password",
                              labelStyle: TextStyle(
                                  color: black.withOpacity(0.40),
                                  fontWeight: FontWeight.bold),
                              contentPadding: EdgeInsets.all(
                                  MediaQuery.of(context).size.height * 0.008),
                              // contentPadding: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.008,right:MediaQuery.of(context).size.height*0.008 ),
                              focusedErrorBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                              suffixIcon: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  // color: primaryColor,
                                  alignment: Alignment.center,
                                  width:
                                      MediaQuery.of(context).size.width * 0.08,
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (hint) {
                                          hint = false;
                                        } else {
                                          hint = true;
                                        }
                                      });
                                    },
                                    icon: Icon(
                                      (hint)
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      size: 25,
                                      color: black.withOpacity(0.40),
                                    ),
                                  )),
                            ),
                            cursorColor: secondColor,
                            obscureText: hint,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.035,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Hello()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: secondColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    MediaQuery.of(context).size.height * 0.008),
                              )),
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: MediaQuery.of(context).size.height * 0.065,
                            child: Text(
                              "Next",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: SizeConfig.blockSizeVertical * 2.7),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        Row(
                          children: [
                            const Spacer(),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.25,
                              child: Divider(
                                color: black,
                                thickness: 2,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.035,
                            ),
                            Text(
                              "Or sign in with",
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: SizeConfig.blockSizeVertical * 2.2),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.035,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.25,
                              child: Divider(
                                color: black,
                                thickness: 2,
                              ),
                            ),
                            const Spacer(),

                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Spacer(),
                            soicalMedia("Google", "assets/icons/google.png"),
                            const Spacer(),
                            soicalMedia("Facebook", "assets/icons/facebook.png"),
                            const Spacer(),

                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ))
        // )
        );
  }

  Widget soicalMedia(String text, String imgPath) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(MediaQuery.of(context).size.height * 0.01),
          ),
          border: Border.all(color: gray)),
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.015),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
                color: black,
                fontWeight: FontWeight.bold,
                fontSize: SizeConfig.blockSizeVertical * 2.8),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          Image.asset(
            imgPath,
            width: MediaQuery.of(context).size.height * 0.05,
            height: MediaQuery.of(context).size.height * 0.05,
          )
        ],
      ),
    );
  }
}
