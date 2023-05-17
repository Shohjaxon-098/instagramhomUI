import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostItem extends StatelessWidget {
  String image;
  String name;
  String postimage;
  PostItem(
      {super.key,
      required this.image,
      required this.name,
      required this.postimage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 440,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(image),
                  radius: 24,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  name,
                  style: TextStyle(color: Colors.grey[400], fontSize: 16),
                ),
                Spacer(),
                Icon(
                  Icons.more_horiz,
                  color: Colors.grey[400],
                  size: 30,
                ),
              ],
            ),
          ),
          Image(
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
            image: AssetImage(postimage),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.heart,
                  size: 32,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  CupertinoIcons.bubble_left,
                  size: 30,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  CupertinoIcons.arrowshape_turn_up_right,
                  size: 32,
                  color: Colors.grey[400],
                ),
                Spacer(),
                Icon(
                  CupertinoIcons.bookmark,
                  size: 32,
                  color: Colors.grey[400],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  "Liked by ",
                  style: TextStyle(color: Colors.grey[400], fontSize: 16),
                ),
                Text(
                  "Shohjaxon, Olimjon, Abbos, Rahimjon, ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "and",
                  style: TextStyle(color: Colors.grey[400], fontSize: 16),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Text(
                  "Asadbek ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Consequater nihil aliquid omnis.",
                  style: TextStyle(color: Colors.grey[400], fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Aprel 2023",
              style: TextStyle(color: Colors.grey[400], fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
