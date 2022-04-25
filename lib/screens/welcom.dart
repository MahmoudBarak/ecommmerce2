import 'package:ecommmerce2/screens/login.dart';
import 'package:ecommmerce2/screens/signup.dart';
import 'package:flutter/material.dart';

class Welcom extends StatelessWidget {
  const Welcom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/nike.png',
                width: 200,
                height: 100,
              ),
              SizedBox(height: 200,),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                width:double.infinity ,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (_) => Login(),
                        ),
                            (route) => false);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(backgroundColor: Colors.black),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                
                width: double.infinity,
                child: TextButton(
                    onPressed: () { Navigator.push(context,MaterialPageRoute(builder:(context) =>Signup() ));
                    },
                    child: Text('Signup', style: TextStyle(color: Colors.white)),
                    style: TextButton.styleFrom(backgroundColor: Colors.black)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
