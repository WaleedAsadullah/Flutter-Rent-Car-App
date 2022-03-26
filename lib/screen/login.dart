import 'package:bookcar/screen/signup.dart';
import 'package:flutter/material.dart';
import 'package:bookcar/constant/constant.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40)),
            color: maincolor,
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.4,
          child: Center(child: Image.asset('assets/Grupo 34.png')),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: const Text('Login',
              style: TextStyle(
                  color: maincolor, fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        Container(
          padding: EdgeInsets.only(top: 30),
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
              hintText: 'Password',
              hintStyle: TextStyle(color: secondcolor),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                  onTap: () {},
                  child: Text('Forgot Password',
                      style: TextStyle(color: maincolor))),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: maincolor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              minimumSize: Size(330, 50),
            ),
            onPressed: () {},
            child: Text('Sign In',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ),
        // Container(child: Image.asset('assets/google.png')),
        Padding(
          padding: EdgeInsets.only(top: 100),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Signup()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Don't have an account ? ",
                    style: TextStyle(
                      color: maincolor,
                    )),
                Text("Sign Up",
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
