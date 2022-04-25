import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();

}

class _CartState extends State<Cart> {
  int _counter=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(onPressed: (){},icon: Icon(Icons.menu_rounded,color: Colors.black,),),
        actions: [
          CircleAvatar(radius: 15,
            child:  Image.asset('assets/images/user.png'),
          )
        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [Padding(padding: EdgeInsets.all(15),
            child: Row(children: [
              Column(children: [
                Text('Shopping',style: TextStyle(fontSize: 20),),
                Text('Cart',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
              ],),
              SizedBox(width: 230,),
              IconButton(onPressed: (){}, icon: Icon(Icons.delete))

            ],),
          ),
            _itemcart(),
            _itemcart(),
            _itemcart(),
            _itemcart(),

              ],
            ),
      )




    );
  }
  Widget _itemcart(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(alignment: Alignment.center,
          children: [


            Container(
              height: 100,
              width: 100,
              decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade300
              ) ,
            ),
            Image.asset('assets/images/shooe_tilt_1.png',height: 200,width: 150,),


          ],),
        Column(children: [
          Text('Nike Air Max 200',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          Text('240\$',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
        ],),
        SizedBox(width: 30,),

        Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.shade200),
            child: TextButton(onPressed: (){
              setState(() {
                _counter++;
              });
            }, child: Text("x${_counter.toString()}",style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.black)),
            )


        )],
    );
  }
}

