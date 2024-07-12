// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui/core/themes/styles.dart';

class CustomCounter extends StatefulWidget {
  const CustomCounter({super.key});

  @override
  State<CustomCounter> createState() => _CustomCounterState();
}

class _CustomCounterState extends State<CustomCounter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black, blurRadius: 1, spreadRadius: 0),
            BoxShadow(
                color: Colors.white,
                blurRadius: 20,
                spreadRadius: 5,
                offset: Offset(1, 0)),
          ],
          border: Border.all(width: 0, color: Colors.transparent),
          borderRadius: BorderRadius.circular(90),
          color: Color(0xffF4F4F4)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 0,
                  offset: Offset(0, 1))
            ], shape: BoxShape.circle, color: Colors.white),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                },
                icon: Icon(
                  Icons.remove_outlined,
                  color: Color(0xff6D3805),
                )),
          ),
          Text(
            "$counter",
            style: MyStyles.font16BrownW400,
          ),
          Container(
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 0,
                  offset: Offset(0, 1))
            ], shape: BoxShape.circle, color: Colors.white),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                icon: Icon(
                  Icons.add_outlined,
                  color: Color(0xff6D3805),
                )),
          ),
        ],
      ),
    );
  }
}
