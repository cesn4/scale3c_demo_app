import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  CardItem({
    @required this.label,
    @required this.text,
    @required this.color,
    @required this.teamList,
  });

  final List<String> teamList;
  final Color color;
  final String label;
  final String text;

  @override
  Widget build(BuildContext context) {
    double viewWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(10.0),
      width: viewWidth * 0.7,
      padding: EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
      decoration: BoxDecoration(
          color: color.withOpacity(0.5),
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
            margin: EdgeInsets.only(bottom: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          LimitedBox(
            maxHeight: 42,
            child: Stack(
              children: teamList.asMap().entries.map((image) {
                double position = image.key.toDouble() * 32.0;
                return Positioned(
                  left: position,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                        )),
                    child: (CircleAvatar(
                      backgroundImage: NetworkImage(image.value),
                    )),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
