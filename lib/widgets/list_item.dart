import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  ListItem(
      {@required this.label,
      @required this.text,
      @required this.date,
      @required this.color,
      @required this.active});

  final Color color;
  final String label;
  final String date;
  final String text;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
        height: 100.0,
        decoration: BoxDecoration(
            color: color.withOpacity(0.3),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5.0,
                spreadRadius: 3.0,
              )
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(15.0),
                      margin: EdgeInsets.only(right: 20.0),
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.0))),
                      child: Icon(
                        active ? Icons.check : Icons.watch_later,
                        color: Colors.white,
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        label,
                        style: TextStyle(fontSize: 20.0, color: color),
                      ),
                      Text(
                        text,
                        style: TextStyle(fontSize: 15.0, color: color),
                      )
                    ],
                  )
                ],
              ),
              Text(
                date,
                style: TextStyle(
                    fontSize: 15.0, color: color, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }
}
