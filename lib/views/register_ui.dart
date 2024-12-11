import 'package:flutter/material.dart';
import 'package:sau_coffee_app_project/views/login_ui.dart';
import 'package:sau_coffee_app_project/views/pin_ui.dart';

class RegisterUI extends StatefulWidget {
  const RegisterUI({super.key});

  @override
  State<RegisterUI> createState() => _RegisterUIState();
}

class _RegisterUIState extends State<RegisterUI> {
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
                    //image
                    Center(
                      child: Image.asset(
                        'assets/images/ShopfeeRegis.png',
                        width: MediaQuery.of(context).size.width * 0.65,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Text(
                      'Name',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                          color: Colors.grey),
                    ),
                    
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 55,
                      child: TextField(
                        
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          hintText: 'Your name...',
                          hintStyle: TextStyle(color: Colors.grey),
                          
                        ),
                      ),
                    ),
                    Text(
                      'No.phone',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                          color: Colors.grey),
                    ),
                   
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 55,
                      child: TextField(
                      
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
                          
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'By tapping "Register" you agree to our ',
                        style: TextStyle(color: Colors.grey),
                        ),
                        
                      ],
                    ),
                    Row(
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => const RegisterUI()),
                              );
                            },
                            child: Text(
                              "                       Term of use",
                              style: TextStyle(color: Colors.blue[600]),
                            ),
                          ),
                        ),
                        Text(
                          '  and ',
                        style: TextStyle(color: Colors.grey),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => const RegisterUI()),
                              );
                            },
                            child: Text(
                              "Privacy Policy",
                              style: TextStyle(color: Colors.blue[600]),
                            ),
                          ),
                        ),
                    ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    
                    ElevatedButton(
                      onPressed: () {
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => const PinUI()),
                              );
                            },
                      child: Text(
                        'Register',
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
                      height: MediaQuery.of(context).size.height * 0.25,
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Have an Account? ",
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => const LoginUI()),
                              );
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.brown[600]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ));
  }
}
