import 'package:flutter/material.dart';
import 'package:mobile_app/helper/color_constants.dart';
import 'package:mobile_app/view/home/widgets/property_card_widget.dart';
import 'package:mobile_app/view/home/widgets/results_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Column(
          children: const [
            Text(
              'Brick Funds',
              style: TextStyle(
                fontSize: 36,
                fontFamily: 'Outfit',
                fontWeight: FontWeight.bold,
                color: ColorConstants.primary,
              ),
            ),
            Divider()
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 10),
                Text(
                  'Краткая сводка',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                ResultsWidget(),
                SizedBox(height: 30),
                Text(
                  'Рекомендации',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                PropertyCard(),
                PropertyCard(),
                PropertyCard(),
                PropertyCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
