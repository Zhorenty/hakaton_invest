import 'package:flutter/material.dart';
import 'package:mobile_app/view/home/widgets/appbar_widget.dart';
import 'package:mobile_app/view/home/widgets/property_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: Text('Weight Tracker'),
              pinned: true,
              floating: true,
              forceElevated: innerBoxIsScrolled,
              bottom: TabBar(
                tabs: <Tab>[
                  Tab(text: 'STATISTICS'),
                  Tab(text: 'HISTORY'),
                ],
                controller: _tabController,
              ),
            ),
          ];
        },
        physics: const BouncingScrollPhysics(),
        body: SafeArea(
          child: Column(
            children: const [
              CustomAppBar(),
              PropertyCard(),
              PropertyCard(),
              PropertyCard(),
              PropertyCard(),
            ],
          ),
        ),
      ),
    );
  }
}
