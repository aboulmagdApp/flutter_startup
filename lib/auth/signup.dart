import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Center(
        //     child: Image.asset(
        //   "assets/images/logo.png",
        //   width: 200,
        // )),
        Container(
          padding: EdgeInsets.all(10),
          child: Form(
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "username",
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1))),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.key),
                    hintText: "password",
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1))),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "email",
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1))),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(children: [
                  Text("if you have account "),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("login");
                    },
                    child: Text(
                      "click here",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ]),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "SignUp",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  // color: Colors.blue,
                  textColor: Colors.white,
                ),
              )
            ]),
          ),
        )
      ],
    ));
  }
}
