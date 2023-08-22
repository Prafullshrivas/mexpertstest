import 'package:flutter/material.dart';
import 'package:mexpertstest/registerpage.dart';

import 'emaillogin.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
        body:
        Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/images/bg 1.png"),
    fit: BoxFit.cover,
    ),
    ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Padding(
                padding:   EdgeInsets.only(top: 650),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => emaillogin(),),
                    );
                  },

                  child: Padding(
                     padding:   EdgeInsets.all(10.0),
                     child: new Container(
                      //width: 100.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                        color: Colors.yellow,
                        border:
                        new Border.all( ),
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      child: new Center(
                        child: new Text(
                          'Log In With Email',
                          style: new TextStyle(
                              fontSize: 15.0,color:  Color(0xff254D71),
                          ),
                        ),
                      ),
                  ),
                   ),
                ),
              ),
              Padding(
                padding:   EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Registration(),),
                    );
                  },
                  child: new Container(
                    //width: 100.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                      color:  Color(0xff254D71),
                      border:
                      new Border.all(),
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    child: new Center(
                      child: new Text(
                        'REGISTER',
                        style: new TextStyle(
                            fontSize: 15.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ]


            ),
          ),
        ),



      );
  }
}
