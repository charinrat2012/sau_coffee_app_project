// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:sau_coffee_app_project/views/custom_order_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
 
  List<Widget> _showView = [HomeUi()];
  int _currentIndex = 0;
  
  List<String> _discount = [
    'assets/images/Discount10.png',
    'assets/images/Discount15.png',
    'assets/images/Discount35.png',
  ];

 
    List<String> _menu = [
    'assets/images/Coffee1.png',
    'assets/images/Coffee2.png',
    'assets/images/Coffee3.png',
    'assets/images/Coffee4.png',
    'assets/images/Coffee5.png',
    'assets/images/Coffee6.png',
    'assets/images/Coffee7.png',
    'assets/images/Coffee8.png',
    'assets/images/Coffee9.png',
    'assets/images/Coffee10.png',
    'assets/images/Coffee11.png',
    'assets/images/Coffee12.png',
    'assets/images/Coffee13.png',
    'assets/images/Coffee14.png',
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1,
            vertical: MediaQuery.of(context).size.height * 0.06,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
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
                    hintText: 'What would you like to drink today',
                    hintStyle: TextStyle(color: Colors.grey),
                    // prefixIcon: Icon(
                    //   Icons.person,
                    //   color: Colors.yellow,
                    // ),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _discount.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                          right: 10.0,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            _discount[index],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                'Coffee',
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                color: Colors.brown,
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CustomOrderUi()),
                  );
              },
              
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: _menu.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: 10.0,
                        right: 10.0,
                        top: 10.0,
                        bottom: 10.0,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          _menu[index],
                        ),
                      ),
                    );
                  }),
            ),
          )
            ],
          ),
        ),
      ),
    
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        // selectedItemColor: Colors.yellow,
        // unselectedItemColor: Colors.grey[400],
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.brown,
          ),

          /// History
          SalomonBottomBarItem(
            icon: Icon(Icons.history),
            title: Text("History"),
            selectedColor: Colors.brown,
          ),

          /// History
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Account"),
            selectedColor: Colors.brown,
          ),
        ],
      ),
    );
  }
}
