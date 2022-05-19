import 'package:art/drawer.dart';
import 'package:art/screen/exhibition.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const routeName = 'home';
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MyDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 40, 15, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'THE\nART\nMUSEUM',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      scaffoldKey.currentState.openDrawer();
                    })
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'asset/image/Image.png',
              ),
              fit: BoxFit.cover,
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 13),
            child: Text(
              'EXHIBITION',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 13,
                  color: Color(0xff979797),
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Text(
              'MASTERS\nOLD\nAND\nNEW',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 24,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, bottom: 2),
            child: Text(
              'APRIL 15 - SEPTEMBER 20',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 18,
                  color: Color(0xffFF473A),
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, bottom: 39),
            child: Text(
              'FLOOR 5',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 10,
                  color: Color(0xff979797),
                  fontWeight: FontWeight.w500),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, Exhibition.routeName),
            child: Container(
                alignment: Alignment.center,
                width: 250,
                height: 42,
                margin: EdgeInsets.only(top: 27, left: 65, right: 60),
                decoration: BoxDecoration(color: Color(0xffFF473A)),
                child: Text(
                  'Plan Your Visit',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFCFCFC)),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 37, left: 18, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Color(0xffFF473A),
                    ),
                    Text(
                      '151 3rd St\nSan Francisco, CA 94103',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFF473A)),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      color: Color(0xffFF473A),
                    ),
                    Text(
                      'Open today\n10:00am — 5:30pm',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFF473A)),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
