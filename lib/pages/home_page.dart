import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lesso10/widgets/post_item.dart';
import 'package:lesso10/widgets/stori_item.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _name = [
    "Shohjaxon",
    "Asadbek",
    "Raximjon",
    "Abbos",
    "Olimjon",
    "Hojiboy",
  ];
  List _image = [
    "assets/person1.jpg",
    "assets/person2.jpg",
    "assets/person3.jpg",
    "assets/person4.jpeg",
    "assets/person5.jpg",
    "assets/person6.jpg",
  ];
  List _postimage = [
    "assets/post1.jpg",
    "assets/post2.jpg",
    "assets/post3.jpg",
    "assets/post4.jpeg",
    "assets/post5.jpg",
    "assets/post6.jpg",
  ];
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 100,
            ),
            Text(
              "Instagram",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.live_tv_rounded,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage(
                "assets/send.png",
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 115,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => StoriItem(
                  image: _image[index],
                  name: _name[index],
                ),
                itemCount: _image.length,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            PostItem(
              image: _image[0],
              name: _name[0],
              postimage: _postimage[0],
            ),
            PostItem(
              image: _image[1],
              name: _name[1],
              postimage: _postimage[1],
            ),
            PostItem(
              image: _image[2],
              name: _name[2],
              postimage: _postimage[2],
            ),
            PostItem(
              image: _image[3],
              name: _name[3],
              postimage: _postimage[3],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[400]!,
              hoverColor: Colors.grey[200]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                  iconColor: Colors.white,
                ),
                GButton(
                  icon: LineIcons.search,
                  text: 'Search',
                  iconColor: Colors.white,
                ),
                GButton(
                  icon: LineIcons.heart,
                  text: 'Likes',
                  iconColor: Colors.white,
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                  iconColor: Colors.white,
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
