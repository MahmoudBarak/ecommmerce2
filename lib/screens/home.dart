import 'package:ecommmerce2/Bloc/app_cubit.dart';
import 'package:ecommmerce2/network/product_repository.dart';
import 'package:ecommmerce2/screens/cart.dart';
import 'package:ecommmerce2/screens/product.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/product_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      AppCubit(ProductRepository())
        ..getProduct(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {},

        builder: (context, state) {

          return Scaffold(
            appBar: AppBar(
              elevation: 1,
              backgroundColor: Colors.black,
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu_rounded,
                    color: Colors.white,
                  )),
              title: Container(
                height: 35,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: TextFormField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    hintText: 'Search',
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cart()));
                    },
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ))
              ],
            ),

            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  _barlist(),
                  SizedBox(
                    height: 20,
                  ),
                  _productlist(),

                  _productlist(),


                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _barlist() {
    return FutureBuilder<List<dynamic>>(
        future: ProductRepository().categoris(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }
          return Container(
            height: 60,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: snapshot.data!.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return _bar(snapshot.data!, index);
                }),

          );
        }
    );
  }

  Widget _productlist() {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {

      },
      builder: (context, state) {
        var list = AppCubit
            .get(context)
            .myPrpduct;
        return ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: 20,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final product = list[index];
              return _product(product);
            });
      },
    );
  }

  Widget _bar(List<dynamic> data, index) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 50,
      width: 140,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.deepOrange,
              spreadRadius: 2,
            )
          ],
          borderRadius: BorderRadius.circular(10), color: Colors.grey.shade200),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [Icon(Icons.image), Text(data[index])],
        ),
      ),
    );
  }

  Widget _product(proudct) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          margin: EdgeInsets.all(8),
          height: 300,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Product()));
                },
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.deepOrangeAccent.shade100,
                            ),
                            Image.network(proudct['image'], height: 70,)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: '${proudct['title']}',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: '${proudct['description']} ',
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: '${proudct['price']} \$ ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: Colors.black,
            ))
      ],
    );
  }

}

