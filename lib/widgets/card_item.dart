import 'package:flutter/material.dart';
import 'package:scale3c_demo_app/mocks/images_list.dart';

class CardItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double viewWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(10.0),
      width: viewWidth * 0.7,
      padding: EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
      decoration: BoxDecoration(
          color: Colors.amber,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5.0,
              spreadRadius: 1.0,
              offset: Offset(
                5.0,
                5.0,
              ),
            )
          ],
          borderRadius: BorderRadius.all(Radius.circular(30.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Skills and more',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  'Design power and kit',
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          LimitedBox(
            maxHeight: 40,
            child: Stack(
              children: imageList.asMap().entries.map((image) {
                double position = image.key.toDouble() * 28.0;
                return Positioned(
                  left: position,
                  child: (CircleAvatar(
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage(image.value),
                  )),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
