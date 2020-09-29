import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
        height: 100.0,
        decoration: BoxDecoration(
            color: Colors.teal,
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
                          color: Colors.black,
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.0))),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Create Unity',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Text('Guidelines')
                    ],
                  )
                ],
              ),
              Text(
                'Tomorrow',
                style: TextStyle(fontSize: 15.0),
              )
            ],
          ),
        ));
  }
}
