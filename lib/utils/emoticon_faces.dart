// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EmoticonFaces extends StatelessWidget {
  const EmoticonFaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Column _buildButtonColumn(Color color, String icon, String label) {
      return Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.blue[600],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              icon,
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          )
        ],
      );
    }

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildButtonColumn(color, '😢', 'Badly'),
        _buildButtonColumn(color, '😐', 'Fine'),
        _buildButtonColumn(color, '🙂', 'Well'),
        _buildButtonColumn(color, '😁', 'Excellent'),
      ],
    );
    return Container(
      child: buttonSection,
    );
  }
}
