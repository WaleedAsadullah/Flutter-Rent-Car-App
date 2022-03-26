import 'package:bookcar/screen/login.dart';
import 'package:bookcar/screen/signup.dart';
import 'package:flutter/material.dart';
import 'package:bookcar/constant/constant.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          top: 0,
          right: 0,
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                color: maincolor,
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5),
        ),
        Positioned(
            top: -150, left: -150, child: Image.asset('assets/Elipse 13.png')),
        Positioned(
            top: 220, left: 220, child: Image.asset('assets/Elipse 15.png')),
        Positioned(
            bottom: 180,
            left: 130,
            child: Image.asset('assets/2017-volkswagen-mdpi.png')),
        Positioned(
            top: 150,
            left: MediaQuery.of(context).size.width * 0.40,
            child: Image.asset('assets/Grupo 34.png')),
        Positioned(
            bottom: 30,
            left: 30,
            child: Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: maincolor,
                    // onPrimary: Colors.white,
                    // shadowColor: Colors.greenAccent,
                    // elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size(330, 40), //////// HERE
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text('Login',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: secondcolor,
                    // onPrimary: Colors.white,
                    // shadowColor: Colors.greenAccent,
                    // elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size(330, 40), //////// HERE
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup()));
                  },
                  child: Text('Sign Up',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                )
              ],
            ))
      ]),
    );
  }
}
