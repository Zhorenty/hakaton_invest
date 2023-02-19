import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/model/property_model.dart';

class PropertyCard extends StatelessWidget {
  const PropertyCard({
    Key? key,
    this.property,
    this.onTap,
  }) : super(key: key);

  final Property? property;
  final Function()? onTap;

  @override
  //обернуть в CustomScrollView or SliverList
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  // '${property.imageUrl}'
                  'https://mykaleidoscope.ru/uploads/posts/2022-08/1660216443_22-mykaleidoscope-ru-p-krasivie-chastnii-dom-dizain-krasivo-foto-22.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13, top: 10),
              child: Row(
                children: const [
                  SizedBox(
                    height: 26,
                    width: 77,
                    child: Chip(
                      // label: Text(property!.isRisked.toString()),
                      label: Align(
                        // label: Text(property!.isCommercial.toString()),
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Риск',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      backgroundColor: Color(0xffFF5858),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  SizedBox(
                    height: 25,
                    width: 80,
                    child: Chip(
                      // label: Text(property!.isCommercial.toString()),
                      label: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Жилая',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      backgroundColor: Color.fromARGB(255, 24, 45, 235),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            Row(
              children: const [
                // property.potentialPercentProfitPerYear.isNegative
                //     ? Icon(
                //         Icons.arrow_upward,
                //         size: 25,
                //         color: Color.fromARGB(255, 42, 209, 89),
                //       )
                //     : Icon(
                //         Icons.arrow_downward,
                //         size: 25,
                //         color: Color.fromARGB(255, 209, 42, 42),
                //       ),
                SizedBox(
                  width: 11,
                  child: Icon(
                    CupertinoIcons.arrow_up,
                    size: 22,
                    color: Color.fromARGB(255, 42, 209, 89),
                  ),
                ),
                // Text(
                //   property.potentialPercentProfitPerYear,
                //   style: TextStyle(
                //       color: property.potentialPercentProfitPerYear.isNegative
                //           ? Colors.red
                //           : Colors.green,
                //       fontWeight: FontWeight.bold),
                // ),
                SizedBox(width: 6),
                Text(
                  '5% в год',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Text(
              // '${property.price}₽'
              '12 750 000 ₽',
              style: TextStyle(
                // fontWeight: FontWeight.bold,
                fontFamily: 'Outfit',
                fontSize: 25,
              ),
            ),
            //ЗАМУТИ ПЕРЕНОС СТРОКИ ЭРИК
            const Text(
              // '${property.location}'
              'Дальняя улица, 8к1, Краснодар, \nКраснодарский край',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
