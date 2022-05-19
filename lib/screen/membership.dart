import 'package:art/drawer.dart';
import 'package:flutter/material.dart';

class Membership extends StatefulWidget {
  static const routeName = 'member';
  const Membership({Key key}) : super(key: key);

  @override
  _MembershipState createState() => _MembershipState();
}

class _MembershipState extends State<Membership> {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MyDrawer(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 40, 15, 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'THE\nART\nMUSEUM',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Become a Member',
              style: TextStyle(
                  color: Color(0xffFF473A),
                  fontFamily: 'Montserrat',
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            IconButton(icon: Icon(Icons.menu), onPressed: () {scaffoldKey.currentState.openDrawer();})
          ]),
        ),
        Image.asset(
          'asset/image/Image Thumbnail.png',
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13, bottom: 12, top: 5),
          child: Text(
            'Choose the membership that’s the best fit for you.\nClick on a level to view the full description of benefits.',
            style: TextStyle(
                color: Color(0xff979797),
                fontFamily: 'Montserrat',
                fontSize: 10,
                fontWeight: FontWeight.w400),
          ),
        ),
        ListTile(
          title: Text(
            'Individual-\$75',
            style: TextStyle(
                color: Color(0xff000000),
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
          subtitle: Text(
            '\$60 tax deductible',
            style: TextStyle(
                color: Color(0xff979797),
                fontFamily: 'Montserrat',
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          title: Text(
            'Dual-\$125',
            style: TextStyle(
                color: Color(0xff000000),
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
          subtitle: Text(
            '\$60 tax deductible',
            style: TextStyle(
                color: Color(0xff979797),
                fontFamily: 'Montserrat',
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          title: Text(
            'Supporter-\$300',
            style: TextStyle(
                color: Color(0xff000000),
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
          subtitle: Text(
            '\$60 tax deductible',
            style: TextStyle(
                color: Color(0xff979797),
                fontFamily: 'Montserrat',
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Container(
            alignment: Alignment.center,
            width: 250,
            height: 42,
            margin: EdgeInsets.only(top: 52, left: 63, right: 63),
            decoration: BoxDecoration(color: Color(0xffFF473A)),
            child: Text(
              'Join Today',
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
