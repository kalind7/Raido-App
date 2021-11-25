import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
        Stack(
        clipBehavior: Clip.none,
        children: [
        Container(
        height: 540,
        width: double.infinity,
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/images/Map.png'),
    fit: BoxFit.cover,
    ),
    ),
          child: Padding(
            padding: EdgeInsets.only(top:25.0, left: 17.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 360.0,
                  height: 59.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: HexColor("#FFFFFF"),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(top:8.0, left: 22.0, right: 7),
                      child: TextField(
                        decoration: InputDecoration(
                          disabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,

                          isDense: false,
                          hintText: 'Enter Location',
                          hintStyle: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          suffixIcon: Stack(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Image.asset('assets/images/background.png'),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: SvgPicture.asset('assets/logos/search.svg'),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Padding(padding: EdgeInsets.only(top: 40.0),
                      child: SvgPicture.asset('assets/logos/smallcar3.svg'),
                    ),




                    Padding(padding: EdgeInsets.only(left: 250.0, top: 30.0),
                      child: SvgPicture.asset('assets/logos/smallcar.svg'),
                    ),

                    Stack(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/logos/bigcircle.svg'),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/logos/mediumcircle.svg'),
                        ),

                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/logos/smallcircle.svg'),
                        ),

                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/logos/Oval.svg'),
                        ),
                      ],
                    ),


                    Padding(padding: EdgeInsets.only(right: 100.0,top: 50),
                      child: SvgPicture.asset('assets/logos/smallcar2.svg'),
                    ),



                    Padding(padding: EdgeInsets.only(left: 200),
                      child: SvgPicture.asset('assets/logos/smallcar4.svg'),
                    ),

                    Padding(padding: EdgeInsets.only(left: 300, top: 30.0),
                      child: SvgPicture.asset('assets/logos/Current location.svg'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

          Padding(
            padding: EdgeInsets.only(top:520.0),
            child: Container(
              height: 350.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),

              child: Padding(
                  padding: EdgeInsets.only( left:15, top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Center(child: SvgPicture.asset('assets/logos/Rectangle.svg'),),

                  SizedBox(height: 18.0),

                  Text(
                    'Suggested Rides',
                    overflow: TextOverflow.visible,
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),

                  SizedBox(height: 9.0),

              Container(
                padding: EdgeInsets.only( top:7.0 ),
                width: 343.0,
                height: 89.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: HexColor("#EF1D52").withOpacity(.05),
                ),
                child: Row(

                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'JUBERGO',
                          overflow: TextOverflow.visible,
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(height: 2.0),
                        Text(
                          'Best Save',
                          overflow: TextOverflow.visible,
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                                fontSize: 11.0,
                                fontWeight: FontWeight.w600,
                              color: HexColor('#EF1D52'),
                            ),
                          ),
                        ),

                        SizedBox(height: 5.0),
                        Text(
                          '\$25.50',
                          overflow: TextOverflow.visible,
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              color: HexColor('#EF1D52'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(left: 26, top: 13),
                      child: SvgPicture.asset('assets/logos/time.svg'),
                    ),

                    Padding(padding: EdgeInsets.only( top: 13),
                      child:  Text(
                        '1-4min',
                        overflow: TextOverflow.visible,
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            fontSize: 11.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),

                    Padding(padding: EdgeInsets.only(left: 110, bottom: 12.0),
                      child: SvgPicture.asset('assets/logos/newcar.svg'),
                    ),

                  ],
                ),
              ),

                  SizedBox(height:10.0),

                  Container(
                    padding: EdgeInsets.only( top:7.0 ),
                    width: 343.0,
                    height: 89.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: HexColor("#515151").withOpacity(.05),
                    ),
                    child: Row(

                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'JUBERCAR',
                              overflow: TextOverflow.visible,
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(height: 2.0),
                            Text(
                              '4 Seats',
                              overflow: TextOverflow.visible,
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),

                            SizedBox(height: 5.0),
                            Text(
                              '\$35.00',
                              overflow: TextOverflow.visible,
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                  color: HexColor('#EF1D52'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(left: 26, top: 13),
                          child: SvgPicture.asset('assets/logos/time.svg'),
                        ),

                        Padding(padding: EdgeInsets.only( top: 13),
                          child:  Text(
                            '1-5min',
                            overflow: TextOverflow.visible,
                            style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                fontSize: 11.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),

                        Padding(padding: EdgeInsets.only(left: 110, bottom: 12.0),
                          child: SvgPicture.asset('assets/logos/scooty.svg'),
                        ),

                      ],
                    ),
                  ),

                  SizedBox(height:33.0),

                  Padding(
                    padding: EdgeInsets.only(left:39.0),
                  child: Container(
                    height: 52.0,
                    width: 277.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: HexColor('#EF1D52').withOpacity(0.77),
                    ),
                    child: Center(child:  Text(
                      'Book Now',
                      overflow: TextOverflow.visible,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          color: Colors.white,

                        ),
                      ),
                    ),),
                  ),
            ),
                ],
              ),
            ),
            ),
          ),
        ],
        ),
        ],
      ),
    );
  }
}
