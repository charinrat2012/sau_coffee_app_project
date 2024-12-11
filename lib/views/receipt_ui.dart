import 'package:flutter/material.dart';
import 'package:sau_coffee_app_project/views/home_ui.dart';

class ReceiptUi extends StatefulWidget {
  const ReceiptUi({super.key});

  @override
  State<ReceiptUi> createState() => _ReceiptUiState();
}

class _ReceiptUiState extends State<ReceiptUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            title: Text('Receipt Order'),
            backgroundColor: Colors.white,
          ),
        ),
      ),
      body: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1,
                vertical: MediaQuery.of(context).size.height * 0.02,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[200],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        
                        Center(
                          child: Image.asset('assets/images/Correct.png',
                              alignment: Alignment.topCenter,
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.1),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Text(
                          'Thank you!',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.03,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Your transaction was successful',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        
                        Row(
                          children: [
                            Text(
                              'ID Transaction ',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.13,
                            ),
                            Text(
                              'D123456789ABC',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        
                        Row(
                          children: [
                            Text(
                              'Date',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.42,
                            ),
                            Text(
                              ' 10 July24',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                      
                        Row(
                          children: [
                            Text(
                              'Time',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.43,
                            ),
                            Text(
                              '07:27 PM',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Divider(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Item',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                       
                        Row(
                          children: [
                            Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Coffee Milk',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.42,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'x1',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                          ],
                        ),
                        
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Ice, Regular, Normal Sugar, Normal Ice',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Payment Summary',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.007,
                        ),
                      
                        Row(
                          children: [
                            Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Price',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.42,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '25 Baht',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.007,
                        ),
                       
                        Row(
                          children: [
                            Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Voucher',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '0',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.007,
                        ),
                      
                        Row(
                          children: [
                            Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.42,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '25 Baht',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                            ),
                          ),
                        ),
                          ],
                        ),
                      
                        Row(
                          children: [
                            SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                        ),
                            Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Payment Method',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Cash',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),


                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeUi()),
                      );
                    },
                    child: Text(
                      'Home',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: MediaQuery.of(context).size.height * 0.02),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown[600],
                        fixedSize: Size(
                          MediaQuery.of(context).size.width * 0.5,
                          MediaQuery.of(context).size.height * 0.065,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
