import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:picpay_clone/screens/notification_page.dart';
import 'package:picpay_clone/screens/pay_page.dart';
import 'package:picpay_clone/screens/settings_page.dart';
import 'package:picpay_clone/screens/wallet_page.dart';
import 'package:picpay_clone/utils/constants.dart';
import '../components/navigation_item.dart';

class MainPage extends StatefulWidget {
  static const String id = 'mainPage';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentTab = 0;
  Widget currentScreen = WalletPage();
  List<Widget> pages = [
    WalletPage(),
    PayPage(),
    NotificationPage(),
    SettingsPage()
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentTab = 1;
          });
        },
        tooltip: 'Pagar',
        backgroundColor: kPrimaryColor,
        child: Icon(
          Icons.attach_money,
          color: Colors.white,
        ),
        elevation: 2.0,
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavigationItem(
                unselectedIcon: OMIcons.home,
                selectedIcon: Icons.home,
                currentTab: currentTab,
                hint: 'Principal',
                myIndex: 0,
                callBack: () {
                  setState(() {
                    currentTab = 0;
                  });
                },
              ),
              NavigationItem(
                unselectedIcon: OMIcons.creditCard,
                selectedIcon: OMIcons.creditCard,
                currentTab: currentTab,
                hint: 'Carteira',
                myIndex: 1,
                callBack: () {
                  setState(() {
                    currentTab = 0;
                  });
                },
              ),
              NavigationItem(
                unselectedIcon: OMIcons.notifications,
                selectedIcon: OMIcons.notifications,
                currentTab: currentTab,
                hint: 'Notificações',
                myIndex: 2,
                callBack: () {
                  setState(() {
                    currentTab = 2;
                  });
                },
              ),
              NavigationItem(
                unselectedIcon: OMIcons.settings,
                selectedIcon: OMIcons.settings,
                currentTab: currentTab,
                hint: 'Ajustes',
                myIndex: 3,
                callBack: () {
                  setState(() {
                    currentTab = 3;
                  });
                },
              ),
            ],
          ),
        ),
      )),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.qr_code_scanner_outlined,
            color: kPrimaryColor,
          ),
        ),
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Meu Saldo',
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
            Text(
              'R\$100,00',
              style: TextStyle(color: Colors.black, fontSize: 20),
            )
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.wallet_giftcard, color: kPrimaryColor),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person_add, color: kPrimaryColor),
            onPressed: () {},
          )
        ],
        elevation: 0,
      ),
      body: PageStorage(
        bucket: bucket,
        child: pages[currentTab],
      ),
    );
  }
}
