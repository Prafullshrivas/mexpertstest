import 'package:flutter/material.dart';

import 'homepage.dart';

class emaillogin extends StatefulWidget {
  const emaillogin({super.key});

  @override
  State<emaillogin> createState() => _emailloginState();
}

class _emailloginState extends State<emaillogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
       alignment: Alignment.center,
      child: Padding(
        padding:   EdgeInsets.all(18.0),
        child: Container(
           width:500,
          height: 500,
          decoration: new BoxDecoration(
            color: Colors.white,
            border:
            new Border.all(color: Colors.white, width: 2.0),
            borderRadius: new BorderRadius.circular(10.0),
          ),
          child: Column(

            children: [
              Padding(
                padding:   EdgeInsets.only(top:60.0),
                child: Text("Sign in to your account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              ),
              SizedBox(height: 30,),
              Padding(
                padding:   EdgeInsets.all(20.0),
                child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white70,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Colors.yellow, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                  ),),
              ),
               Padding(
                padding:   EdgeInsets.all(12.0),
                child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white70,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Colors.yellow, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                  ),),
              ),
              SizedBox(height: 15,),
              Padding(
                padding:   EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage(),),
                    );
                  },
                  child: new Container(
                    //width: 100.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                      color:  Color(0xff254D71),
                      border:
                      new Border.all(),
                      borderRadius: new BorderRadius.circular(5.0),
                    ),
                    child: new Center(
                      child: new Text(
                        'LOG IN',
                        style: new TextStyle(
                            fontSize: 15.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   PageTransition(
                  //       type: PageTransitionType.rightToLeft,
                  //       child: Registration(),
                  //       duration: Duration(milliseconds: 1000),
                  //       inheritTheme: true,
                  //       ctx: context),
                  // );
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Registration()));
                },
                child: Text.rich(
                  TextSpan(text: '', children: [
                    TextSpan(
                      text: 'FORGET PASSWORD',
                      style: TextStyle(color:  Color(0xff254D71),
                      ),
                    ),
                  ]),
                ),
              ),


            ],
          )

        ),
      ),
     ),
        ),
    );
  }
}
