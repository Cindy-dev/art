import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({ Key key, @required this.title }) : super(key: key);
  

final  String title;

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                widget.title,
                style: TextStyle(
                    color: Color(0xffFF473A),
                    fontFamily: 'Montserrat',
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              IconButton(icon: Icon(Icons.menu), onPressed: () {

              })
            ],
          ),
        );
  }
}