import 'package:ecommmerce2/screens/cart.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
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
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
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
                Navigator.push(context,MaterialPageRoute(builder:(context) =>Cart() ));
              },
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: IconButton(
              icon: Icon(Icons.home, color: Colors.black),
              onPressed: () {},
            ),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
          BottomNavigationBarItem(
            label: 'Favorite',
            icon: IconButton(
              icon: Icon(
                Icons.favorite_border_sharp,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _bar('Sneakers', 'assets/images/shoe_thumb_2.png'),
                  SizedBox(
                    width: 5,
                  ),
                  _bar('  Jacket', 'assets/images/jacket.png'),
                  SizedBox(
                    width: 5,
                  ),
                  _bar('Watch', 'assets/images/watch.png'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _product('assets/images/shoe_tilt_2.png',
                        'Nike Air Max97\n\n', '190\$'),
                    SizedBox(
                      width: 20,
                    ),
                    _product('assets/images/shooe_tilt_1.png',
                        'Nike Air Max200\n\n', '240\$'),
                    SizedBox(
                      width: 20,
                    ),
                    _product('assets/images/shoe_tilt_2.png',
                        'Nike Air Max97\n\n', '190\$'),
                    SizedBox(
                      width: 20,
                    ),
                    _product('assets/images/shooe_tilt_1.png',
                        'Nike Air Max200\n\n', '240\$'),
                    SizedBox(
                      width: 20,
                    ),
                    _product('assets/images/shoe_tilt_2.png',
                        'Nike Air Max97\n\n', '190\$'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _product('assets/images/shoe_tilt_2.png',
                        'Nike Air Max97\n\n', '190\$'),
                    SizedBox(
                      width: 20,
                    ),
                    _product('assets/images/shooe_tilt_1.png',
                        'Nike Air Max200\n\n', '240\$'),
                    SizedBox(
                      width: 20,
                    ),
                    _product('assets/images/shoe_tilt_2.png',
                        'Nike Air Max97\n\n', '190\$'),
                    SizedBox(
                      width: 20,
                    ),
                    _product('assets/images/shooe_tilt_1.png',
                        'Nike Air Max200\n\n', '240\$'),
                    SizedBox(
                      width: 20,
                    ),
                    _product('assets/images/shoe_tilt_2.png',
                        'Nike Air Max97\n\n', '190\$'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _bar(String text, String image) {
  return Container(
    margin: EdgeInsets.all(10),
    height: 50,
    width: 120,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.grey.shade200),
    child: InkWell(
      onTap: () {},
      child: Row(
        children: [Image.asset(image), Text(text)],
      ),
    ),
  );
}

Widget _product(String image, String name, String price) {
  return Stack(
    alignment: Alignment.topLeft,
    children: [
      Container(
        height: 300,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            InkWell(onTap: (){
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
                        Image.asset(image)
                      ],
                    )
                  ],
                ),
              ),
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: name,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'Trending Now\n\n',
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold)),
                TextSpan(
                  text: price,
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
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite,
            color: Colors.black,
          ))
    ],
  );
}
