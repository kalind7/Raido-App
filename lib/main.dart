import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raido App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override

  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),
        () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SecondScreen())),
    );
  }


  Widget build(BuildContext context) {
    return  Scaffold(
      body:Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.white),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 185.0,
                        width: 118.0,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              height: 100.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: HexColor('#EF1D52'),
                              ),
                              child: IconButton(
                                onPressed: (){},
                                  icon:  SvgPicture.asset('assets/logos/car.svg', color: Colors.white),
                              ),
                            ),
                            SizedBox(height:24.0),
                            Text(
                              'RAIDO',
                              overflow: TextOverflow.visible,
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    fontSize: 26.0,
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              ),

              // Expanded(
              //   flex: 1,
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: <Widget>[
              //       CircularProgressIndicator(),
              //       Padding(
              //         padding: EdgeInsets.only(top: 20.0),
              //       ),
              //       Text(
              //         'Flutkart.store',
              //         softWrap: true,
              //         textAlign: TextAlign.center,
              //         style: TextStyle(
              //             fontWeight: FontWeight.bold,
              //             fontSize: 18.0,
              //             color: Colors.black),
              //       )
              //     ],
              //   ),
              // ),
            ],
          )
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 125.5),

            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.05),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(4, 3), // changes position of shadow
                        ),
                      ]
                  ),
                  child: IconButton(
                    onPressed: (){},
                    icon:  SvgPicture.asset('assets/logos/car.svg', color:HexColor('#EF1D52')),
                  ),

                ),
                SizedBox(height:38.0),

                Text(
                  'Get Rides in Instant',
                  overflow: TextOverflow.visible,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.normal),
                  ),
                ),

                SizedBox(height:14.0),

                Container(
                  height: 72.0,
                  width: 313.0,
                  child: Text(
                    'Users have the liberty to choose the type of vehicle as per their need.',
                    overflow: TextOverflow.visible,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal),
                      color: HexColor("#9C9C9C"),
                    ),
                  ),
                ),

                SvgPicture.asset('assets/logos/dots.svg'),
              ],
            ),
          ),
          SizedBox(height:34.5),

          SvgPicture.asset('assets/logos/big car.svg'),

          SizedBox(height:4.5),

          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left:32.0),
              child:  Text(
                'Let\u0027s get rides',
                overflow: TextOverflow.visible,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal),
                ),
              ),
              ),

              IconButton(
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                },
                icon: SvgPicture.asset('assets/logos/back.svg'),

              ),
            ],
          )
        ],
      ),

    );
  }
}

