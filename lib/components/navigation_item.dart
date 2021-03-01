import 'package:flutter/material.dart';
import 'package:picpay_clone/utils/constants.dart';

class NavigationItem extends StatelessWidget {
  final int currentTab;
  final int myIndex;
  final String hint;
  final Function callBack;
  final IconData selectedIcon;
  final IconData unselectedIcon;

  NavigationItem({this.currentTab, this.callBack, this.hint, this.selectedIcon, this.myIndex, this.unselectedIcon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callBack,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(selectedIcon, color: currentTab == myIndex ? kPrimaryDim : kPrimaryDim),
          Text(hint, style: TextStyle(fontSize: 12),)
        ],
      ),
    );
  }
}
