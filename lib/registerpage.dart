import 'package:flutter/material.dart';
  import 'package:flutter/services.dart';


class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  // checkbox parameter//
  bool isChecked = false;
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }
  //--------------

  bool isChecked1 = false;
  Color getColor1(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }
//controllers for passing validation conditon//
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cnfmpasswordController = TextEditingController();

  // final emailController = TextEditingController();
  // final passController = TextEditingController();
  String name = "";
  String email = "";
  String password = "";
  String number = "";
  String cnfmpassword = "";

  bool passwordVisible = true;
  bool passwordVisible1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff254D71), //<-- SEE HERE

      appBar: AppBar(
        centerTitle: true,
        //backgroundColor: Color(0xff254D71),
        title: Text(
          "Register with skenu",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              height: 4),
        ),
         backgroundColor: Colors.yellow,
       ),

      body: Padding(
        padding:   EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
               Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Username',
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.white),
                     ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'EMAIL',
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.white),

                ),
              ),
              SizedBox(height: 15,),
              TextField(

                  decoration: InputDecoration(
                      border: OutlineInputBorder(),


                      hintText: "PASSWORD",
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.white),


                  )),
              SizedBox(height: 15,),

              TextField(
                controller: passwordController,
                obscureText: passwordVisible,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'CONFIRM PASSWORD',
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.white),


                ),
              ),
SizedBox(height:20,),
              Container(
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text(
                    'Agree terms and condition',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 15.0,color: Colors.white),
                  ),
                ]),
              ),

              Padding(
                padding:   EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Registration(),),
                    // );
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
                        'REGISTER',
                        style: new TextStyle(
                            fontSize: 15.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

