// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sau_coffee_app_project/views/custom_order_ui.dart';
import 'package:sau_coffee_app_project/views/receipt_ui.dart';

class CheckoutUi extends StatefulWidget {
  const CheckoutUi({super.key});

  @override
  State<CheckoutUi> createState() => _CheckoutUiState();
}

class _CheckoutUiState extends State<CheckoutUi> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 1) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
//Appbar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), 
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 4), 
              ),
            ],
          ),
          child: AppBar(
            title: Text('Checkout'),
            backgroundColor: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [

            Center(
              child: Image.asset(
                'assets/images/ChecklistImg.png',
                width: MediaQuery.of(context).size.width * 1,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),

            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),

                Padding(
                  padding: const EdgeInsets.all(.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CustomOrderUi(),
                          ),
                        );
                      },
                      child: Text(
                        '< Add order',
                        style: TextStyle(
                          color: Colors.brown,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {},
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                Row(
                  children: [
                  
                    Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: FloatingActionButton(
                        heroTag: 'minus',
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.brown,
                            ),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                topLeft: Radius.circular(10))),
                        onPressed: _decrementCounter,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.remove),
                      ),
                    ),
                   
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          border: Border.all(width: 1, color: Colors.brown)),
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: Text(
                        '$_counter',
                        style: GoogleFonts.kanit(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                 
                    Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(0)),
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: FloatingActionButton(
                        heroTag: 'plus',
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.brown,
                            ),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        onPressed: _incrementCounter,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.add,
                          size: MediaQuery.of(context).size.width * 0.05,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      //bottomnavbar
      bottomNavigationBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), 

        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(4, 0), 
              ),
            ],
          ),
          
          child: BottomAppBar(
            height: MediaQuery.of(context).size.height * 0.15,
            color: Colors.white,
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Total',
                            style: GoogleFonts.kanit(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Text(
                          '    25 Baht',
                          style: GoogleFonts.kanit(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05),
                        )
                      ],
                    ),
                    Spacer(),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.07,
                      child: FloatingActionButton(
                        heroTag: 'Order',
                        backgroundColor: Colors.brown,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReceiptUi()),
                          );
                        },
                        child: Text(
                          'Checkout',
                          style: GoogleFonts.kanit(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
