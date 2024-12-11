// ignore_for_file: unnecessary_import
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:sau_coffee_app_project/views/home_ui.dart';
import 'package:sau_coffee_app_project/views/pin_ui.dart';
import 'package:sau_coffee_app_project/views/register_ui.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1,
                vertical: MediaQuery.of(context).size.height * 0.06,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),

                    Center(
                      child: Image.asset(
                        'assets/images/SAUcoffee.png',
                        width: MediaQuery.of(context).size.width * 0.65,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),

                    Text(
                      'No.phone',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                          color: Colors.grey),
                    ),
                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height * 0.015,
                    // ),
//textfield no phone
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 55,
                      child: TextField(
                        // controller: ,
                        // keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          hintText: 'Your phone...',
                          hintStyle: TextStyle(color: Colors.grey),
                          // prefixIcon: Icon(
                          //   Icons.person,
                          //   color: Colors.yellow,
                          // )
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => const PinUI()),
                              );
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.02),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown[600],
                          fixedSize: Size(
                            MediaQuery.of(context).size.width * 1,
                            MediaQuery.of(context).size.height * 0.065,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.32,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an Account? ",
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => const RegisterUI()),
                              );
                            },
                            child: Text(
                              "Register",
                              style: TextStyle(color: Colors.brown[600]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
            ))));
  }
}
