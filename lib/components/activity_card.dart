import 'package:flutter/material.dart';
import 'package:picpay_clone/models/transaction.dart';
import 'package:picpay_clone/models/user.dart';
import 'package:picpay_clone/utils/constants.dart';


class ActivityCard extends StatelessWidget {
  final Function callBack;
  final Transaction transactionRefer;

  ActivityCard({this.callBack, this.transactionRefer});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => debugPrint('Clicked hereee!'),
      child: Container(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(maxRadius: 30, backgroundImage: AssetImage('images/me.jpg'),)
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Você fez uma recarga de celular')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text('R\$50,00', style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w700),),
                      Expanded(child: Container(),),
                      Icon(Icons.mode_comment_outlined, color: Colors.black12,),
                      Text('5'),
                      SizedBox(width: 10,),
                      Icon(Icons.favorite_border_outlined, color: Colors.black12,),
                      Text('9'),
                    ],
                  ),
                ),
              ),
              flex: 1,
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                spreadRadius: 1,
                blurRadius: 4)
          ],
          color: Colors.white,
        ),
        height: 125,
        margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02),
      ),
    );
  }
}