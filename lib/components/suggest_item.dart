import 'package:flutter/material.dart';


class SuggestItem extends StatelessWidget {
  final String imagePath;
  final Function callBack;
  final String title;

  SuggestItem({this.callBack, this.title, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callBack,
      child: Container(
        width: 70,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 2),
                  image: DecorationImage(image: AssetImage(imagePath ?? 'images/cielo.jpg'), fit: BoxFit.cover)
              ),
              height: 70,
              width: 70,
            ),
            SizedBox(height: 5,),
            Text(title ?? 'Default', style: TextStyle(color: Colors.white, fontSize: 12), overflow: TextOverflow.ellipsis,)
          ],
        ),
      ),
    );
  }
}
