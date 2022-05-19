import 'package:art/screen/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static const routeName = 'login';
  const Login({Key key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/image/Background.png'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Spacer(flex: 1,), 
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 201, 80, 20),
              child: Text(
                'YOUR\nART\nMUSEUM',
                style: TextStyle(
                    fontSize: 36,
                    color: Color(0xffFFCFCFC),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9, right: 79.64),
              child: Text(
                ' 151 3rd St\n Francisco, CA 94103',
                style: TextStyle(
                    fontSize: 12,
                    color: Color(0xffFFCFCFC),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              height: 42,
              width: 250,
              margin: EdgeInsets.only(top: 20, left: 64),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Email address',
                    hintStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w400),
                    contentPadding: EdgeInsets.only(left: 15)),
              ),
            ),
            Divider(
              color: Colors.black,
              height: 1,
              thickness: 1,
              endIndent: 125,
              indent: 125,
            ),
            Container(
              height: 42,
              width: 250,
              margin: EdgeInsets.only(left: 64),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000)),
                    contentPadding: EdgeInsets.only(left: 15)),
              ),
            ),
            Container(
                alignment: Alignment.topRight,
                margin: const EdgeInsets.only(right: 35, top: 10),
                child: Text(
                  'Forgot your password?',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFCFCFC)),
                )),
            GestureDetector(
              onTap: ()=> Navigator.pushNamed(context, Home.routeName),
              child: Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 42,
                  margin: EdgeInsets.only(top: 27, left: 64),
                  decoration: BoxDecoration(color: Color(0xffFF473A)),
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffFCFCFC)),
                  )),
            ),
            Container(
                //   alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 5, right: 60),
                child: Text(
                  'Don’t have an account?',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFCFCFC)),
                )),
                Spacer(flex: 3,), 
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
