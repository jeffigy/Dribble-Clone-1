// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final icon;
  final String exerciseName;
  final int numberOfExercise;
  final color;

  const ExerciseTile({
    Key? key,
    required this.icon,
    required this.exerciseName,
    required this.numberOfExercise,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: EdgeInsets.all(10),
              color: color,
              child: Icon(
                icon,
                size: 35,
                color: Colors.white,
              ),
            ),
          ),
          title: Text(
            exerciseName,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text('$numberOfExercise Exercises',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              )),
          trailing: Icon(Icons.chevron_right),
        ),
      ),
    );
  }
}
