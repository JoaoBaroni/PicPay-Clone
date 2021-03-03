import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:picpay_clone/components/animated_dot.dart';
import 'package:picpay_clone/utils/constants.dart';

class SplashPage extends StatefulWidget {
  static String id = 'splashPage';

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int _currentWelcomeMessage;

  List<Text> welcomeMessages = [
    Text(
      'Compre créditos do Uber, Steam e Level Up',
      textAlign: TextAlign.center,
    ),
    Text(
      'Envie e receba dinheiro pelo smartphone',
      textAlign: TextAlign.center,
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentWelcomeMessage = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  SvgPicture.asset(
                    'images/picpay_white.svg',
                    color: Colors.white,
                    height: 50,
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.05,
                    //color: Colors.black,
                    child: PageView.builder(
                      itemBuilder: (context, index) => welcomeMessages[index],
                      itemCount: welcomeMessages.length,
                      onPageChanged: (value) {
                        setState(() {
                          _currentWelcomeMessage = value;
                        });
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildDot(0, _currentWelcomeMessage),
                      buildDot(1, _currentWelcomeMessage),
                    ],
                  ),
                  SizedBox(height: 10,),
                  RaisedButton(
                    onPressed: () => null,
                    color: Colors.white,
                    child: Text('Criar minha conta no PicPay!'),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  FlatButton(
                      onPressed: () => null,
                      child: Text(
                        'Já sou cadastrado',
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
