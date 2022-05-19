import 'package:art/drawer.dart';
import 'package:flutter/material.dart';

class Collections extends StatefulWidget {
  static const routeName = 'collections';
  const Collections({Key key}) : super(key: key);

  @override
  _CollectionsState createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections> {
    GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     drawer: MyDrawer(),
      key: scaffoldKey,
      body: Column(children: [
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
                'Collections',
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
        Container(
          width: 348,
          height: 48,
          margin: EdgeInsets.only(left: 12, right: 15, top: 30),
          padding: EdgeInsets.only(left: 10, right: 8),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffFF473A), width: 2),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Explore the Collection',
                style: TextStyle(
                    color: Color(0xffFF473A),
                    fontFamily: 'Montserrat',
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              Icon(Icons.search)
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 12, top: 5),
          child: Text(
            'Advanced Search',
            style: TextStyle(
                color: Color(0xffFF473A),
                fontFamily: 'Montserrat',
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
        ),
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            childAspectRatio: 1.15,
            clipBehavior: Clip.none,
            crossAxisSpacing:0.5,
            addSemanticIndexes: true,
  
            children: [
              GridTile(
                child: Image.asset('asset/image/WEB.png'),
                footer: Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
            
                  ),
                  child: Text(
                    'DECORATIVE ARTS & CRAFTS',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color(0xffFF473A),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              GridTile(
                child: Image.asset(
                  'asset/image/WEB (1).png',
                ),
                footer: Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                  ),
                  child: Text(
                    'AMERICAN IMPRESSIONISM',
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis ,
                    style: TextStyle(
                        color: Color(0xffFF473A),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              GridTile(
                child: Image.asset('asset/image/WEB (2).png'),
                footer: Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                  ),
                  child: Text(
                    'DE STIJL',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color(0xffFF473A),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              GridTile(
                child: Image.asset('asset/image/WEB (3).png'),
                footer: Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                  ),
                  child: Text(
                    'CUBISM',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color(0xffFF473A),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              GridTile(
                child: Image.asset('asset/image/WEB (4).png'),
                footer: Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                  ),
                  child: Text(
                    'AMERICAN\nPHOTOGRAPHY',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color(0xffFF473A),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              GridTile(
                child: Image.asset('asset/image/WEB (5).png'),
                footer: Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                  ),
                  child: Text(
                    'GREEK ANTIQUITIES',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color(0xffFF473A),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
