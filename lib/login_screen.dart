import 'package:flutter/material.dart';
import 'package:se_534_project/signup_screen.dart';
import 'package:se_534_project/tabs_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final number = TextEditingController();
  final password = TextEditingController();
  bool showpass = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: <Widget>[
            Expanded(

              child: Container(
                color: Colors.grey[800],
                child: Column(

                  children: [
                    Center(
                      child: Expanded(
                        child: Container(

                          child: Image.network('https://media3.giphy.com/media/W5NO9EmJww1Bgn7SyS/giphy.gif?cid=790b76119cd929779affaf53d47511a943a4c6ed1a6a2446&rid=giphy.gif&ct=g',alignment:Alignment.bottomCenter ,),




                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.grey[800],
                width: double.infinity,
                child: Column(

                  children: <Widget>[
                    Container(
                      color: Colors.grey[800],
                      margin: EdgeInsets.only(top: 10, left: 15),
                      width: double.infinity,
                      child: Text(
                        'WELCOME\nBACK ! ',
                        style: TextStyle(
                          fontFamily: 'Font2',
                          color: Colors.white,
                          fontSize:
                              MediaQuery.of(context).size.aspectRatio * 70,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: number,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: 'Mobile Number',
                          suffixIcon:Icon(Icons.phone_android),
                          floatingLabelStyle: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                (BorderSide(width: 1.0, color: Colors.grey)),
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                (BorderSide(width: 1.0, color: Colors.amber)),
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        obscureText: showpass ? false : true,
                        enableSuggestions: false,
                        autocorrect: false,
                        controller: password,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: showpass
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.remove_red_eye),
                          floatingLabelStyle: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                (BorderSide(width: 1.0, color: Colors.grey)),
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                (BorderSide(width: 1.0, color: Colors.amber)),
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Checkbox(
                            splashRadius: 30,
                            side: BorderSide(width: 2),
                            activeColor: Colors.amber,
                            value: showpass,
                            onChanged: (newval) {
                              setState(() {
                                showpass = newval!;
                              });
                            },
                          ),
                          Text(
                            'Show Password',
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                color: showpass ? Colors.amber : Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 6),
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: TextButton(
                            onPressed: sign,
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                  fontSize: 22,
                                  decoration: TextDecoration.underline),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.grey[500],
                                elevation: 0,
                                shadowColor: Colors.white),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 10),
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.075,
                          child: ElevatedButton(
                            onPressed: logg,
                            child: Text(
                              'LOG IN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily:'Font2',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                enableFeedback: false,
                                elevation: 10,
                                backgroundColor: Colors.grey[500],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void logg() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyHomePage()));
  }

  void sign() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
  }
}
