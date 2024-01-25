import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final List<Person> persons = [
    Person('alearn', '1.jpg', true),
    Person('berna256', '2.jpg', true),
    Person('sheila_ug', '3.jpg', false),
    Person('dj_ark', '6.jpg', false),
    Person('marianne', '10.jpg', false),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(
            Icons.add,
            color: Colors.black,
            size: 30,
          ),
          title: Text(
            'Instagram',
            style: TextStyle(
                color: Colors.black, fontFamily: 'Billabong', fontSize: 30),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/send.png', height: 20),
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: persons
                    .map(
                      (person) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: person.hasUpdate
                                        ? Colors.pink
                                        : Colors.grey.shade400,
                                    width: 2),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "assets/${person.image}",
                                    fit: BoxFit.cover,
                                    height: 60,
                                    width: 60,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              person.name,
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(height: 10),
            Divider(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/6.jpg',
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'fine_bwoy_no_ex',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 180),
                  const Icon(Icons.more_horiz),
                ],
              ),
            ),
            Image.asset(
              'assets/icecream.jpg',
              height: 350,
              width: 500,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                children: [
                  Icon(Icons.favorite_outline, size: 30),
                  SizedBox(width: 20),
                  Image.asset('assets/comment.png', height: 35),
                  SizedBox(width: 20),
                  Image.asset(
                    'assets/send.png',
                    height: 25,
                    color: Colors.black,
                  ),
                  SizedBox(width: 192),
                  Icon(Icons.bookmark_outline, size: 30),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: const [
                  Text('Liked by '),
                  Text(
                    'dark_emeralds ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('and '),
                  Text(
                    'others',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                children: const [
                  Text(
                    'JAN 24',
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.black), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.black), label: ''),
            BottomNavigationBarItem(
                icon: Image.asset('assets/reel.png', height: 20), label: ''),
            BottomNavigationBarItem(
                icon: Image.asset('assets/shop.png', height: 20), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle, color: Colors.black),
                label: ''),
          ],
        ),
      ),
    );
  }
}

class Person {
  final String name;
  final String image;
  final bool hasUpdate;

  Person(this.name, this.image, this.hasUpdate);
}
