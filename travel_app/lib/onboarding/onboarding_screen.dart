import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:travel_app/explore/home_page.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Image.asset(
          'assets/images/slide_1.jpg',
          fit: BoxFit.fitHeight,
          height: MediaQuery.of(context).size.height,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.orange.withOpacity(.8),
                ),
                SizedBox(
                  width: 3,
                ),
                CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.orange.withOpacity(.8),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  width: 20,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(.9),
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  width: 50,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20)),
                )
              ]),
              SizedBox(
                height: 25,
              ),
              Text(
                'Come with me!',
                style: TextStyle(
                    fontSize: 20,fontFamily: 'SpaceGrotesk',
                    color: Color(0xff282828).withOpacity(.9),
                    decoration: TextDecoration.none),
                textAlign: TextAlign.start,
              ),
          
              Text(
                'Let me show you\nThe World',
                style: TextStyle(
                    fontSize: 40,fontFamily: 'SpaceGrotesk',
                    color: Color(0xff282828).withOpacity(.9),
                    decoration: TextDecoration.none),
                textAlign: TextAlign.start,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const HomePage(),) );
                  },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 25),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15)),
                      width: MediaQuery.of(context).size.width,
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Get Started',
                            style: TextStyle(
                                fontSize: 18,fontFamily:'SpaceGrotesk',
                                color: Colors.white.withOpacity(.9),fontWeight: FontWeight.normal,
                                decoration: TextDecoration.none),
                          ),
                          const SizedBox(
                            width: 90,
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
