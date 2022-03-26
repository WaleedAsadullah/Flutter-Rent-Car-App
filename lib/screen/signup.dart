import 'package:bookcar/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:bookcar/constant/constant.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40)),
            color: thircolor,
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.4,
          child: Center(child: Image.asset('assets/Grupo 34.png')),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: const Text('Sign up',
              style: TextStyle(
                  color: maincolor, fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        Container(
          padding: EdgeInsets.only(top: 30),
          width: MediaQuery.of(context).size.width * 0.8,
          child: TextField(
            decoration: InputDecoration(
              // border: OutlineInputBorder(),
              hintText: 'Name',
              hintStyle: TextStyle(color: secondcolor),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 5, bottom: 5),
          width: MediaQuery.of(context).size.width * 0.8,
          child: TextField(
            decoration: InputDecoration(
              // border: OutlineInputBorder(),
              hintText: 'Email',
              hintStyle: TextStyle(color: secondcolor),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 5, bottom: 5),
          width: MediaQuery.of(context).size.width * 0.8,
          child: TextField(
            decoration: InputDecoration(
              // border: OutlineInputBorder(),
              hintText: 'Phone',
              hintStyle: TextStyle(color: secondcolor),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 5, bottom: 5),
          width: MediaQuery.of(context).size.width * 0.8,
          child: TextField(
            decoration: InputDecoration(
              // border: OutlineInputBorder(),
              hintText: 'Password',
              hintStyle: TextStyle(color: secondcolor),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: thircolor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              minimumSize: Size(330, 50),
            ),
            onPressed: () {},
            child: Text('Sign Up',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ),
        // Container(child: Image.asset('assets/google.png')),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Do have an account ? ",
                    style: TextStyle(
                      color: maincolor,
                    )),
                Text("Log In",
                    style: TextStyle(
                      color: thircolor,
                    )),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
