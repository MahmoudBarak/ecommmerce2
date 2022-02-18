import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _vis = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          height: 500,
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('SingUp',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24))
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Image.asset(
                  'assets/images/nike.png',
                  width: 200,
                  height: 100,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Email', style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                  margin: EdgeInsets.all(5),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Write your email',
                      border: OutlineInputBorder(),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                'Password',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  obscureText: _vis ? false : true,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _vis = !_vis;
                        });
                      },
                      icon: _vis
                          ? Icon(
                              Icons.visibility,
                              color: Colors.black,
                            )
                          : Icon(
                              Icons.visibility_off,
                              color: Colors.black,
                            ),
                    ),
                    hintText: 'Write your password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
                    },
                    child: Text(
                      'Signup',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(backgroundColor: Colors.black),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
