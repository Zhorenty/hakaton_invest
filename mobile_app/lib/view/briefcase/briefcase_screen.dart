import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/helper/color_constants.dart';
import 'package:mobile_app/model/property_model.dart';

class BriefcaseScreen extends StatefulWidget {
  const BriefcaseScreen({super.key});

  @override
  State<BriefcaseScreen> createState() => _BriefcaseScreenState();
}

class _BriefcaseScreenState extends State<BriefcaseScreen> {
  Property home1 = Property(
    id: 0,
    description: '',
    location: 'Дальняя улица, 8к1, Краснодар, \nКраснодарский край',
    imageUrl:
        'https://cdn-p.cian.site/images/06/446/341/kottedzh-sochi-voroshilovgradskaya-ulica-1436446026-1.jpg',
    price: '14 000 000',
    potentialPercentProfitPerYear: 7,
    isRisked: false,
    isCommercial: false,
  );
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
            SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        'https://32.img.avito.st/image/1/1.ySCOPba6Zcm4lKfMkC6dXUOeY8M6Hm0LP55nzy6YZw.NbaqP-Q5ppwSq3IFJ_5Ug83lr9W4403X23v8XPDn30E',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.arrow_upward,
                          size: 25,
                          color: Color.fromARGB(255, 42, 209, 89),
                        ),
                        // SizedBox(
                        //   width: 11,
                        //   child: Icon(
                        //     CupertinoIcons.arrow_up,
                        //     size: 22,
                        //     color: Color.fromARGB(255, 42, 209, 89),
                        //   ),
                        // ),

                        const SizedBox(width: 6),
                        Text(
                          '15% в год',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Москва ситиб',
                      textAlign: TextAlign.left,
                    ),
                  ],
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
