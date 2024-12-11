// ignore_for_file: unused_field, unused_element

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sau_coffee_app_project/views/checkout_ui.dart';

class CustomOrderUi extends StatefulWidget {
  const CustomOrderUi({super.key});

  @override
  State<CustomOrderUi> createState() => _CustomOrderUiState();
}

class _CustomOrderUiState extends State<CustomOrderUi> {
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

  String selectedVariant = 'Ice';
  String selectedSize = 'Regular';
  String selectedSugar = 'Normal';
  String selectedIce = 'Normal';

  Map<String, bool> toppings = {
    'Extra Expresso': false,
    'Cincau': false,
    'Coffe Jelly': false,
    'Chocolate Ice Cream': false,
  };


  Map<String, int> toppingPrices = {
    'Extra Expresso': 5,
    'Cincau': 6,
    'Coffe Jelly': 3,
    'Chocolate Ice Cream': 7,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            title: Text('Customize Order'),
            backgroundColor: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              color: Colors.grey[200],
            ),
            Column(
              children: [
//Coffee image
                Center(
                  child: Image.asset(
                    'assets/images/CoffeeCustom.png',
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                ),
//Coffee detail
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.grey[300]!),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Coffee',
                            style: GoogleFonts.kanit(
                              color: Colors.brown,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.005,
                        ),
                        Row(
                          children: [
                           
                            Text(
                              'Coffee Milk',
                              style: GoogleFonts.kanit(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.49,
                            ),
                            Text(
                              '25 Baht',
                              style: GoogleFonts.kanit(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04),
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),

                        Row(
                          children: [
                            Text(
                              'Ice americano + fresh milk',
                              style: GoogleFonts.kanit(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.07,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 10.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                 
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      child: FloatingActionButton(
                                        heroTag: 'minus',
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                topLeft: Radius.circular(10))),
                                        onPressed: _decrementCounter,
                                        backgroundColor: Colors.brown,
                                        child: Icon(Icons.remove),
                                      ),
                                    ),
                                   
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                          border: Border.all(
                                              width: 1, color: Colors.brown)),
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
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
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(0)),
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      child: FloatingActionButton(
                                        heroTag: 'plus',
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10))),
                                        onPressed: _incrementCounter,
                                        backgroundColor: Colors.brown,
                                        child: Icon(
                                          Icons.add,
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),

                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              Text(
                                '4.9',
                                style: GoogleFonts.kanit(
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(' (23) • Ratings and reviews'),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.25,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.brown,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),

                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.32,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.grey[300]!),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Customize',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.005),
                      
                        Row(
                          children: [
                            Text('Variant'),
                            Spacer(),
                            ChoiceChip(
                              showCheckmark: false,
                              selectedColor: Colors.brown,
                              avatarBorder: Border.all(color: Colors.brown),
                              label: Text(
                                'Ice',
                              ),
                              labelStyle: TextStyle(
                                color: selectedVariant == 'Ice'
                                    ? Colors.white
                                    : Colors.brown,
                              ),
                              selected: selectedVariant == 'Ice',
                              onSelected: (bool selected) {
                                setState(() {
                                  selectedVariant = 'Ice';
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            ChoiceChip(
                              showCheckmark: false,
                              selectedColor: Colors.brown,
                              avatarBorder: Border.all(color: Colors.brown),
                              label: Text('Hot'),
                              labelStyle: TextStyle(
                                color: selectedVariant == 'Hot'
                                    ? Colors.white
                                    : Colors.brown,
                              ),
                              selected: selectedVariant == 'Hot',
                              onSelected: (bool selected) {
                                setState(() {
                                  selectedVariant = 'Hot';
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.005),
                     
                        Row(
                          children: [
                            Text('Size'),
                            Spacer(),
                            ChoiceChip(
                              showCheckmark: false,
                              selectedColor: Colors.brown,
                              avatarBorder: Border.all(color: Colors.brown),
                              label: Text('Regular'),
                              labelStyle: TextStyle(
                                color: selectedSize == 'Regular'
                                    ? Colors.white
                                    : Colors.brown,
                              ),
                              selected: selectedSize == 'Regular',
                              onSelected: (bool selected) {
                                setState(() {
                                  selectedSize = 'Regular';
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            ChoiceChip(
                              showCheckmark: false,
                              selectedColor: Colors.brown,
                              avatarBorder: Border.all(color: Colors.brown),
                              label: Text('Medium'),
                              labelStyle: TextStyle(
                                color: selectedSize == 'Medium'
                                    ? Colors.white
                                    : Colors.brown,
                              ),
                              selected: selectedSize == 'Medium',
                              onSelected: (bool selected) {
                                setState(() {
                                  selectedSize = 'Medium';
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            ChoiceChip(
                              showCheckmark: false,
                              selectedColor: Colors.brown,
                              avatarBorder: Border.all(color: Colors.brown),
                              label: Text('Large'),
                              labelStyle: TextStyle(
                                color: selectedSize == 'Large'
                                    ? Colors.white
                                    : Colors.brown,
                              ),
                              selected: selectedSize == 'Large',
                              onSelected: (bool selected) {
                                setState(() {
                                  selectedSize = 'Large';
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.005),
                    
                        Row(
                          children: [
                            Text('Sugar'),
                            Spacer(),
                       
                            ChoiceChip(
                              showCheckmark: false,
                              selectedColor: Colors.brown,
                              avatarBorder: Border.all(color: Colors.brown),
                              label: Text('Normal'),
                              labelStyle: TextStyle(
                                color: selectedSugar == 'Normal'
                                    ? Colors.white
                                    : Colors.brown,
                              ),
                              selected: selectedSugar == 'Normal',
                              onSelected: (bool selected) {
                                setState(() {
                                  selectedSugar = 'Normal';
                                });
                              },
                            ),
                            SizedBox(width: 10),
                        
                            ChoiceChip(
                              showCheckmark: false,
                              selectedColor: Colors.brown,
                              avatarBorder: Border.all(color: Colors.brown),
                              label: Text('Less'),
                              labelStyle: TextStyle(
                                color: selectedSugar == 'Less'
                                    ? Colors.white
                                    : Colors.brown,
                              ),
                              selected: selectedSugar == 'Less',
                              onSelected: (bool selected) {
                                setState(() {
                                  selectedSugar = 'Less';
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.005),
               
                        Row(
                          children: [
                            Text('Ice'),
                            Spacer(),
                     
                            ChoiceChip(
                              showCheckmark: false,
                              selectedColor: Colors.brown,
                              avatarBorder: Border.all(color: Colors.brown),
                              label: Text('Normal'),
                              labelStyle: TextStyle(
                                color: selectedIce == 'Normal'
                                    ? Colors.white
                                    : Colors.brown,
                              ),
                              selected: selectedIce == 'Normal',
                              onSelected: (bool selected) {
                                setState(() {
                                  selectedIce = 'Normal';
                                });
                              },
                            ),
                            SizedBox(width: 10),
                    
                            ChoiceChip(
                              showCheckmark: false,
                              selectedColor: Colors.brown,
                              avatarBorder: Border.all(color: Colors.brown),
                              label: Text('Less'),
                              labelStyle: TextStyle(
                                color: selectedIce == 'Less'
                                    ? Colors.white
                                    : Colors.brown,
                              ),
                              selected: selectedIce == 'Less',
                              onSelected: (bool selected) {
                                setState(() {
                                  selectedIce = 'Less';
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),

                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.36,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.grey[300]!),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Topping',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            ...toppings.keys.map((String key) {
                              return CheckboxListTile(
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(key),
                                    Text('${toppingPrices[key]} Baht'),
                                  ],
                                ),
                                activeColor: Colors.brown,
                                value: toppings[key],
                                onChanged: (bool? value) {
                                  setState(() {
                                    toppings[key] = value ?? false;
                                  });
                                },
                                controlAffinity: ListTileControlAffinity
                                    .trailing, 
                              );
                            }).toList(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),

                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Note',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey)),
                            hintText: '   Optional',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * 0.07,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                )
              ],
            ),
          ],
        ),
      ),
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
                                builder: (context) => CheckoutUi()),
                          );
                        },
                        child: Text(
                          'Add Order',
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
