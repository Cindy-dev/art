import 'package:art/drawer.dart';
import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  static const routeName = 'shop';
  const Shop({Key key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MyDrawer(),
      body: Column(
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
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Shop',
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
          Image.asset(
            'asset/image/Rectangle 8.png',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'asset/image/Group.png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 11, 12, 0),
            child: Text(
              'Braun Classic Watch',
              style: TextStyle(
                  color: Color(0xff000000),
                  fontFamily: 'Montserrat',
                  fontSize: 24,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 38, 3),
            child: Text(
              'This Braun watch is a reissue of the original 1970\'s design from renowned design team Dietrich Lubs and Dieter Rams, both of whom have work featured in the Museum’s collection. The large watch features a numbered face, and the smaller watch has only index lines. Made of a matte stainless-steel case, black dial, mineral glass, a three-hand quartz movement, and a leather band. Water-resistant.',
              style: TextStyle(
                  color: Color(0xff979797),
                  fontFamily: 'Montserrat',
                  fontSize: 10,
                  fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, top: 18, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: '\$160.00\n',
                    style: TextStyle(
                        color: Color(0xff050505),
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  TextSpan(
                    text: '\$140.00 Member Price',
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  )
                ])),
                Image.asset(
                  'asset/image/Group (1).png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Container(
              alignment: Alignment.center,
              width: 250,
              height: 42,
              margin: EdgeInsets.only(top: 21, left: 80, right: 75),
              decoration: BoxDecoration(color: Color(0xffFF473A)),
              child: Text(
                'Add to Cart',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFCFCFC)),
              )),
        ],
      ),
    );
  }
}
