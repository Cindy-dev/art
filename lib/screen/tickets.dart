import 'package:art/drawer.dart';
import 'package:flutter/material.dart';

class Tickets extends StatefulWidget {
  static const routName = 'ticket';
  const Tickets({Key key}) : super(key: key);

  @override
  _TicketsState createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MyDrawer(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 40, 15, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'THE\nART\nMUSEUM',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Plan Your Visit',
                style: TextStyle(
                    color: Color(0xffFF473A),
                    fontFamily: 'Montserrat',
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              IconButton(icon: Icon(Icons.menu), onPressed: () {scaffoldKey.currentState.openDrawer();})
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, top: 12),
          child: Text(
            'Skip the Line.\nPurchase Tickets.',
            style: TextStyle(
                color: Color(0xff000000),
                fontFamily: 'Montserrat',
                fontSize: 24,
                fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, top: 5),
          child: Text(
            'All exhibitions, audio tours, and films \nincluded in the price of admission.',
            style: TextStyle(
                color: Color(0xffFF473A),
                fontFamily: 'Montserrat',
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
        ),
        Center(child: Image.asset('asset/image/Date.png')),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: ListTile(
            leading: Text(
              'Adults',
              style: TextStyle(
                  color: Color(0xff000000),
                  fontFamily: 'Montserrat',
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
            trailing: Image.asset(
              'asset/image/Group (1).png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        ListTile(
          leading: Text(
            'Seniors\n65+ with ID',
            style: TextStyle(
                color: Color(0xff000000),
                fontFamily: 'Montserrat',
                fontSize: 15,
                fontWeight: FontWeight.w400),
          ),
          trailing: Image.asset(
            'asset/image/Group (1).png',
            fit: BoxFit.cover,
          ),
        ),
        ListTile(
          leading: Text(
            'Students\nwith ID',
            style: TextStyle(
                color: Color(0xff000000),
                fontFamily: 'Montserrat',
                fontSize: 15,
                fontWeight: FontWeight.w400),
          ),
          trailing: Image.asset(
            'asset/image/Group (1).png',
            fit: BoxFit.cover,
          ),
        ),
        Divider(
          color: Color(0xffFF473A),
          thickness: 2,
          endIndent: 15,
          indent: 12,
        ),
          ListTile(contentPadding: EdgeInsets.only(left: 27, top: 0, right: 47 ),
          leading: Text(
            'Total',
            style: TextStyle(
                color: Color(0xff000000),
                fontFamily: 'Montserrat',
                fontSize: 15,
                fontWeight: FontWeight.w400),
          ),
          trailing: Text(
            '\$16',
            style: TextStyle(
                color: Color(0xff000000),
                fontFamily: 'Montserrat',
                fontSize: 15,
                fontWeight: FontWeight.w400),
          ),
        ),
                  Container(
              alignment: Alignment.center,
              width: 250,
              height: 42,
              margin: EdgeInsets.only(top: 37, left: 64, right: 63),
              decoration: BoxDecoration(color: Color(0xffFF473A)),
              child: Text(
                'Continue to Payment',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFCFCFC)),
              )),
      ]),
    );
  }
}
