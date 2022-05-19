import 'package:art/drawer.dart';
import 'package:flutter/material.dart';

class Exhibition extends StatefulWidget {
  static const routeName = 'exhibit';
  const Exhibition({Key key}) : super(key: key);

  @override
  _ExhibitionState createState() => _ExhibitionState();
}

class _ExhibitionState extends State<Exhibition> {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MyDrawer(),
      body: Column(
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
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Exhibition Preview',
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
            padding: const EdgeInsets.only(left: 14, top: 18),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: 'RETROSPECTIVE\n\n',
                style: TextStyle(
                    color: Color(0xff979797),
                    fontFamily: 'Montserrat',
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
              TextSpan(
                text: 'DOROTHEA\nLANGE\n',
                style: TextStyle(
                    color: Color(0xff000000),
                    fontFamily: 'Montserrat',
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              )
            ])),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Text(
              'OCTOBER 15 - MARCH 18',
              style: TextStyle(
                  color: Color(0xffFF473A),
                  fontFamily: 'Montserrat',
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, bottom: 9),
            child: Text(
              'FLOOR 3',
              style: TextStyle(
                  color: Color(0xff979797),
                  fontFamily: 'Montserrat',
                  fontSize: 10,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 0),
              alignment: Alignment.center,
              child: Image.asset('asset/image/Image Gallery.png', fit: BoxFit.cover,)),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 6, top: 0),
            child: Text(
              '“Abandoned Dust Bowl Home”\nGelatin silver print\n about 1935 - 1940',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff979797),
                  fontFamily: 'Montserrat',
                  fontSize: 10,
                  fontWeight: FontWeight.w400),
            ),

          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 23),
            child: Text(
              'BIOGRAPHY\n\n Dorothea Lange (May 26, 1895 – October 11, 1965) was an influential\nAmerican documentary photographer and photojournalist, best\n known for her Depression-era work for the Farm Security\n Administration (FSA). Lange\'s photographs humanized the\n consequences of the Great Depression and influenced the development of documentary photography.Born of second generation German immigrants on May 26, 1895, at 1041 Bloomfield Street, Hoboken, New Jersey,[1][2] Dorothea Lange was named Dorothea Margaretta Nutzhorn at birth. She dropped her middle name and assumed her mother\'s maiden name after her father abandoned the family when she was 12 years old, one of two traumatic incidents early in her life. The other was her contraction of polio at age seven which left her with a weakened right leg and a permanent limp.[1][2] "It formed me, guided me, instructed me, helped me and humiliated me," Lange once said of her altered gait. "I\'ve never gotten over it, and I am aware of the force and power of it."[3]',
              textAlign: TextAlign.start ,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Color(0xff979797),
                  fontFamily: 'Montserrat',
                  fontSize: 10,
                  fontWeight: FontWeight.w400),
            ),),
        ],
      ),
    );
  }
}
