import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StoriItem extends StatelessWidget {
  String image;
  String name;
  StoriItem({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 36,
            backgroundColor: Colors.purple,
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 3)],
                  shape: BoxShape.circle),
              child: CircleAvatar(
                backgroundImage: AssetImage(image),
                radius: 30,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.grey[400]),
          )
        ],
      ),
    );
  }
}
