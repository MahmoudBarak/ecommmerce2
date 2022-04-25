
import 'package:ecommmerce2/screens/signup.dart';
import 'package:ecommmerce2/widgets/bottomBar.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _vis = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          height: 600,
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              Text('Password', style: TextStyle(fontWeight: FontWeight.bold)),
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
              Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'ForgetPassword?',
                      ))),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomBar()));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(backgroundColor: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Divider(
                      color: Colors.black,
                    ),
                    Text('or'),
                    Divider(
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text('Don\‘t have an account?'),
                 TextButton(onPressed: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context) =>Signup() ));
                 }, child:Text('Register'))


               ],
             )
            ],
          ),
        ),
      ),
    );
  }
}
