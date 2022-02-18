import 'package:ecommmerce2/screens/welcom.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Splach extends StatefulWidget {
  const Splach({Key? key}) : super(key: key);

  @override
  _SplachState createState() => _SplachState();
}

class _SplachState extends State<Splach> {
  @override
  void initState() {
    Future.delayed(Duration(seconds:5 ),(){
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (_) => Welcom(),
          ),
              (route) => false);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/nike.png',
              width: 200,
              height: 100,
            ),
            LoadingAnimationWidget.newtonCradle(color: Colors.black, size: 50),
          ],
        ),
      ),
    );
  }
}
