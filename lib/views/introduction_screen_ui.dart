import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:sau_coffee_app_project/views/login_ui.dart';

class IntroductionUI extends StatefulWidget {
  const IntroductionUI({super.key});

  @override
  State<IntroductionUI> createState() => _IntroductionUIState();
}

class _IntroductionUIState extends State<IntroductionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 150, bottom: 10),
        child: IntroductionScreen(
          scrollPhysics: BouncingScrollPhysics(),
          // autoScrollDuration: 2000,
          pages: [
           
            PageViewModel(
              decoration: PageDecoration(pageColor: Colors.white),
              titleWidget: Text(
                "Choose and customize your Drinks",
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              image: Image.asset(
                "assets/images/Shopfee.png",
                height: MediaQuery.of(context).size.height * 0.7,
              ),
              bodyWidget: Text(
                  'Customize your own drink exactly how you like it by adding any topping you like!!!'),
            ),
         
            PageViewModel(
              decoration: PageDecoration(pageColor: Colors.white),
              titleWidget: Text(
                "Quickly and easly",
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              image: Image.asset(
                "assets/images/Time.png",
                height: MediaQuery.of(context).size.height * 0.9,
              ),
              bodyWidget: Text(
                  'You can place your order quickly and easly without wasting time. You can also schedule orders via your smarthphone.'),
            ),
         
            PageViewModel(
              decoration: PageDecoration(pageColor: Colors.white),
              titleWidget: Text(
                "Get and Redeem Voucher",
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              image: Image.asset(
                "assets/images/PriceTag.png",
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              bodyWidget: Text(
                  'Exciting prizes await you! Redeem yours by collecting all the points after purchase in the app!'),
            ),
          ],
          // showSkipButton: true,
          // skip: Text(
          //   "ข้าม",
          //   style: GoogleFonts.kanit(
          //     color: Colors.black,
          //   ),
          // ),
          // onSkip: () => Navigator.pushReplacement(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => HomeUI(),
          //   ),
          // ),
          dotsDecorator: DotsDecorator(
            size: Size(MediaQuery.of(context).size.width * 0.025,
                MediaQuery.of(context).size.width * 0.025),
            color: Colors.grey,
            activeSize: Size(MediaQuery.of(context).size.width * 0.055,
                MediaQuery.of(context).size.width * 0.025),
            activeColor: Colors.brown[700],
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
          ),
          globalBackgroundColor: Colors.white,
          dotsFlex: 10,
          next: Container(
              padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.brown[700],
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: Row(
                children: [
                  Text(
                    'NEXT',
                    style: GoogleFonts.kanit(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              )),
          nextFlex: 10,
          done: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.brown[700],
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            child: Row(
              children: [
                Text(
                  "Login/register",
                  style: GoogleFonts.kanit(
                    color: Colors.white,
                  ),
                ),
                //  SizedBox(
                //     width: 1,
                //   ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
              ],
            ),
            
          ),
          onDone: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginUI(),
            ),
          ),
        ),
      ),
    );
  }
}
