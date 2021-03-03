import 'package:flutter/material.dart';
import 'package:picpay_clone/utils/constants.dart';

AnimatedContainer buildDot(int index, int currentPage) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 300),
    curve: Curves.easeIn,
    margin: EdgeInsets.only(right: 7),
    height: 6,
    width: currentPage == index ? 20 : 6,
    decoration: BoxDecoration(
        color: currentPage == index ? Colors.white : Colors.white70,
        borderRadius: BorderRadius.circular(10)),
  );
}