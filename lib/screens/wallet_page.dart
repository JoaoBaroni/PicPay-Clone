import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picpay_clone/components/suggest_item.dart';
import 'package:picpay_clone/utils/constants.dart';
import '../components/custom_tab.dart';
import '../components/activity_card.dart';

class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> with TickerProviderStateMixin {
  List<Widget> tabs = [
    Tab(
      text: 'Todos',
    ),
    Tab(
      text: 'Minhas',
    )
  ];

  TabController _tabController;
  int _selectedIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SuggestsToYou(),
        SizedBox(
          height: 10,
        ),
        TabHeader(tabs: tabs, tabController: _tabController),
        Expanded(
          child: Container(
            child: TabBarView(
              children: [
                SingleChildScrollView(
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ActivityCard(),
                          ActivityCard(),
                          ActivityCard(),
                          ActivityCard(),
                        ],
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ActivityCard(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ],
    );
  }
}

class TabHeader extends StatelessWidget {
  const TabHeader({
    Key key,
    @required this.tabs,
    @required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final List<Widget> tabs;
  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Atividades',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(child: Container()),
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          child: TabBar(
            tabs: tabs,
            controller: _tabController,
            indicator: CustomTabBar(),
            labelColor: kPrimaryColor,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
        )
      ],
    );
  }
}

class SuggestsToYou extends StatelessWidget {
  const SuggestsToYou({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: double.infinity,
        color: kPrimaryColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sugestões para você',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SuggestItem(
                    title: 'Cielo',
                  ),
                  SuggestItem(
                    title: 'Steam',
                    imagePath: 'images/steam.jpg',
                  ),
                  SuggestItem(
                    title: 'League of Legends',
                    imagePath: 'images/lol.jpg',
                  ),
                  SuggestItem(
                    title: 'Spotify',
                    imagePath: 'images/spotify.png',
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
