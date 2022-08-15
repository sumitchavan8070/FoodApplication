// ignore_for_file: prefer_const_constructors, non_constant_identifier_names
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget SingalProducts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 230,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Expanded(
            flex: 2,
            child: Image.network(
                'https://webstockreview.net/images/italian-clipart-pizza-cut-5.png'),
          ),
          Expanded(
            // ignore: avoid_unnecessary_containers
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Chicken Pizza',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '9 \$ /1 Piece ',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 5),
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Expanded(
                                child: Text(
                                  '1 Piece',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Center(
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 20,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          // ignore: prefer_const_literals_to_create_immutables
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Icon(
                                Icons.remove,
                                size: 15,
                                color: Colors.orange,
                              ),
                              Text(
                                ' 1',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.add,
                                size: 15,
                                color: Colors.orange,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 234, 234),
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Home', style: TextStyle(color: Colors.black)),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: CircleAvatar(
              // ignore: sort_child_properties_last
              child: Icon(
                Icons.search,
                size: 15,
                color: Colors.black,
              ),
              radius: 12,
              backgroundColor: Color(0xffd4d181),
            ),
          ),
          CircleAvatar(
            // ignore: sort_child_properties_last
            child: Icon(
              Icons.shop,
              size: 15,
              color: Colors.black,
            ),
            radius: 12,
            backgroundColor: Color(0xffd4d181),
          ),
        ],
        backgroundColor: Color(0xffd6b738),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://www.wallpapersdsc.net/wp-content/uploads/2016/09/Junk-Food-Pictures.jpg'),
                  ),
                  color: Colors.red,
                  borderRadius: (BorderRadius.circular(10)),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 120, bottom: 20),
                            child: Container(
                              height: 55,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(50)),
                              ),
                              child: Center(
                                child: Text(
                                  'Order Now',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.white,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    /*shadows: [
                                        BoxShadow(
                                          color: Color.fromARGB(
                                              255, 255, 114, 114),
                                          blurRadius: 3,
                                          offset: Offset(3, 3),
                                        ),
                                     ] */
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '30% off',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.green[100],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              'On all Food Delivery',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text('Most Popular'),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingalProducts(),
                  SingalProducts(),
                  SingalProducts(),
                  SingalProducts(),
                  SingalProducts(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text('Recently Added'),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingalProducts(),
                  SingalProducts(),
                  SingalProducts(),
                  SingalProducts(),
                  SingalProducts(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text('Recently Added'),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingalProducts(),
                  SingalProducts(),
                  SingalProducts(),
                  SingalProducts(),
                  SingalProducts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
