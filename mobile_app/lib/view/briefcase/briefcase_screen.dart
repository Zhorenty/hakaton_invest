import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/helper/color_constants.dart';

class BriefcaseScreen extends StatelessWidget {
  const BriefcaseScreen({super.key});

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
              'Портфель',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Container(
              // alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CustomIcon(
                      CupertinoIcons.arrow_clockwise_circle, 'Пополнить'),
                  CustomIcon(CupertinoIcons.add, 'Пополнить'),
                  CustomIcon(CupertinoIcons.person_crop_circle_badge_checkmark,
                      'Аналитика'),
                ],
              ),
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 2,
              itemBuilder: (context, index) {
                Container(
                  child: Column(
                    children: [Image.network('')],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomIcon extends StatelessWidget {
  const CustomIcon(this.icon, this.title, {super.key});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Icon(icon), Text(title)],
    );
  }
}
