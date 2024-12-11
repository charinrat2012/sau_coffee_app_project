// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:sau_coffee_app_project/views/home_ui.dart';
import 'package:sau_coffee_app_project/views/register_ui.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinUI extends StatefulWidget {
  const PinUI({super.key});

  @override
  State<PinUI> createState() => _PinUIState();
}

class _PinUIState extends State<PinUI> {
  List<String> currentPin = ["", "", "", "", "", ""]; 
  TextEditingController pinController = TextEditingController();
  Widget buildPinDot(int index) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentPin[index] == "*" ? Colors.black : Colors.grey, 
      ),
    );
  }
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
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                
                Center(
                  child: Image.asset(
                    'assets/images/Pin.png',
                    width: MediaQuery.of(context).size.width * 0.65,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Center(
                  child: Text(
                    'Enter 6 digit PIN for secure account access',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
               
                Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(6, (index) {
                    return buildPinDot(index);
                    
                  }),
                ),
                SizedBox(height: 0),
                TextField(
                  controller: pinController,
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.transparent,
                  cursorErrorColor: Colors.transparent,
                  obscureText: true, 
                  maxLength: 6, 
                  style: TextStyle(
                    color: Colors.transparent, 
                  ),
                  onChanged: (value) {
                    setState(() {
                      for (int i = 0; i < value.length; i++) {
                        currentPin[i] = "*";
                      }
                      for (int i = value.length; i < 6; i++) {
                        currentPin[i] = "";
                      }
                    });
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    counterText: "",
                  ),
                ),
              ],
            ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot PIN? ",
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterUI()),
                          );
                        },
                        child: Text(
                          "Change PIN",
                          style: TextStyle(color: Colors.blue),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeUi()),
                    );
                  },
                  child: Text(
                    'Confirm',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: MediaQuery.of(context).size.height * 0.02),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PinDot {}
