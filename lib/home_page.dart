import 'package:flutter/material.dart';
import 'package:ridobiko_assignment/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png', 
              height: 40, 
            ),
            const SizedBox(width: 10),
            Text(
              'Fluxstore',
              style: TextStyle(color: Colors.grey[700], fontSize: 30),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //category section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal:16),
              height: 100,
              child: ListView(
                children: const [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildCategoryItem(imagePath: "assets/men.png", title: "Men"),
                      buildCategoryItem(imagePath: "assets/women.png", title: "Women"),
                      buildCategoryItem(imagePath: "assets/clothing.png", title: "Clothing"),
                      buildCategoryItem(imagePath: "assets/posters.png", title: "Posters"),
                      buildCategoryItem(imagePath: "assets/music.png", title: "Music"),
                    ],
                  ),
                ]
              ),
            ),
            // Banner Section
            Container(
              height: 220,
              width: double.infinity,
              color: Colors.grey[100],
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 35, left:25),
                        child: Text("| SUMMER COLLECTION 2019", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10 , color: Colors.grey[400])),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(top: 35, left: 25),
                        child: Text(
                          'Blue Summer\nare already in\nstore',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                      
                    ],
                  ),
                  SizedBox(width: 20),
                  Image.asset('assets/image_1.png'),
                ],
              ),
            ),
            SizedBox(height:8),
            Container(
              height: 150,
              width: double.infinity,
              color: const Color.fromARGB(255, 238, 238, 238),
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 35, left: 30),
                        child: Text(
                          'For Gen\nHANG OUT & PARTY',
                          style: TextStyle(
                              fontSize: 18,  color: Colors.grey[600]),
                        ),
                      ),
                    
                    ],
                  ),
                  Image.asset('assets/image_2.png'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('assets/image_3.png'),
            )
          ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        iconSize: 30,
        items:  [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(left: 35, top: 10),
              child: Row(
                children: [
                  Icon(Icons.home_outlined, color: Colors.blue[500]),
                  const SizedBox(width: 10), // Adding space between icon and label
                  Text('Shop', style:TextStyle(color: Colors.blue[500], fontSize: 17)),
                ],
              ),
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black87),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Stack(
              children: <Widget>[
                Icon(Icons.shopping_bag_outlined, color: Colors.black87),
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    radius: 8.0,
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    child: Text(
                      '1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined, color: Colors.black87),
            label: '',
          ),
        ]
      ),
    );
  }
}