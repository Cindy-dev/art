import 'package:art/screen/collection.dart';
import 'package:art/screen/exhibition.dart';
import 'package:art/screen/home.dart';
import 'package:art/screen/membership.dart';
import 'package:art/screen/shop.dart';
import 'package:art/screen/tickets.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  buildTile(IconData iconData, String title, Function function) {
    return Padding(
      padding: const EdgeInsets.only(top: 14),
      child: GestureDetector(
        onTap: function,
        child: ListTile(
          leading: Icon(
            iconData,
            color: Color(0xffFFFFFF),
          ),
          title: Text(
            title,
            style: TextStyle(
                color: Color(0xffFFFFFF),
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.8,
      child: Drawer(
        child: Container(
          color: Color(0xffFF473A),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 13, right: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.search,
                      color: Color(0xffFFFFFF),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 17),
                      padding: EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      width: 225,
                      height: 42,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: Text(
                        'Search',
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              buildTile(Icons.home, 'Home', ()=> Navigator.pushNamed(context, Home.routeName)),
              buildTile(Icons.event, 'Exhibitions & Events', ()=> Navigator.pushNamed(context, Exhibition.routeName)),
              buildTile(Icons.art_track, 'Artists & Artworks',(){}),
              buildTile(Icons.collections, 'Collections', ()=> Navigator.pushNamed(context, Collections.routeName)),
              buildTile(Icons.view_carousel, 'Plan Your Visit',()=> Navigator.pushNamed(context, Tickets.routName)),
              buildTile(Icons.card_membership, 'Become a Member',()=> Navigator.pushNamed(context, Membership.routeName)),
              buildTile(Icons.wallet_giftcard, 'Shop',()=> Navigator.pushNamed(context, Shop.routeName)),
            ],
          ),
        ),
      ),
    );
  }
}
