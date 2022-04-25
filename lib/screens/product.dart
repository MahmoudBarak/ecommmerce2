import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            Row(children: [
              Container(width: 30,height: 40,margin: EdgeInsets.all(10),decoration: BoxDecoration(
                  color: Colors.blueGrey.shade100,borderRadius: BorderRadius.circular(15)
              ),
                  child: IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back_ios))),
              SizedBox(width:280,),
              IconButton(onPressed: (){

              }, icon: Icon(Icons.favorite,color: Colors.red,))


            ],),
            SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Image.asset('assets/images/show_1.png',fit: BoxFit.fitWidth,),



              ],),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(alignment: Alignment.center,
                  children: [


                    Container(
                      height: 50,
                      width: 50,
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade300
                      ) ,
                    ),
                    Image.asset('assets/images/shoe_thumb_5.png',height: 200,width: 50,),



                  ],),
                SizedBox(width: 10,),
                Stack(alignment: Alignment.center,
                  children: [


                    Container(
                      height: 50,
                      width: 50,
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade300
                      ) ,
                    ),
                    Image.asset('assets/images/shoe_thumb_4.png',height: 200,width: 50,),


                  ],),
                SizedBox(width: 10,),
                Stack(alignment: Alignment.center,
                  children: [


                    Container(
                      height: 50,
                      width: 50,
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade300
                      ) ,
                    ),
                    Image.asset('assets/images/shoe_thumb_3.png',height: 200,width: 50,),


                  ],),
                SizedBox(width: 10,),
                Stack(alignment: Alignment.center,
                  children: [


                    Container(
                      height: 50,
                      width: 50,
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade300
                      ) ,
                    ),
                    Image.asset('assets/images/shoe_thumb_1.png',height: 200,width: 50,),


                  ],),
              ],
            ),
            Divider(color: Colors.black,thickness: 4,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [

                Text('Nike Air Max 200',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(width: 50,),
                Column(children: [
                  Text('\$ 240',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Row(children: [
                    Icon(Icons.star,color: Colors.yellowAccent,),
                    Icon(Icons.star,color: Colors.yellowAccent,),
                    Icon(Icons.star,color: Colors.yellowAccent,) ,
                    Icon(Icons.star,color: Colors.yellowAccent,),
                    Icon(Icons.star_border_purple500_sharp,)
                  ],)
                ],)
              ],),
            ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Align(alignment: Alignment.bottomLeft,child: Text('Available Size',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
           ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Stack(alignment: Alignment.center,
                children: [


                  Container(
                    height: 50,
                    width: 50,
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade300
                    ) ,
                  ),
                  Text('US 6',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))


                ],),
                SizedBox(width: 10,),
              Stack(alignment: Alignment.center,
                children: [


                  Container(
                    height: 50,
                    width: 50,
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade300
                    ) ,
                  ),
                  Text('US 7',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))


                ],),
                SizedBox(width: 10,),
              Stack(alignment: Alignment.center,
                children: [


                  Container(
                    height: 50,
                    width: 50,
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade300
                    ) ,
                  ),
                  Text('US 8',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))


                ],),
                SizedBox(width: 10,),
              Stack(alignment: Alignment.center,
                children: [


                  Container(
                    height: 50,
                    width: 50,
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade300
                    ) ,
                  ),
                  Text('US 9',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))


                ],),
            ],)
          ],
        ),
      ),) ,
    );
  }
}
