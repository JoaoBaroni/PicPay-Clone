import 'package:flutter/cupertino.dart';

class User {
  final String name;
  final int id;
  final double currentBalance;
  final String imagePath;

  User({this.currentBalance = 0, @required this.id , @required this.name, this.imagePath});
}