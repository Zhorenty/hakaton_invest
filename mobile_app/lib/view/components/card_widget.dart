import 'package:flutter/material.dart';
import 'package:mobile_app/model/property_model.dart';

import '../../helper/constants.dart';

class PropertyCard extends StatelessWidget {
  const PropertyCard({
    Key? key,
    this.property,
    this.selected = false,
    this.onSelect,
    this.onTap,
  }) : super(key: key);

  final Property? property;
  final bool selected;
  final Function()? onSelect;
  final Function()? onTap;

  @override
  //обернуть в listView
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints.expand(width: 361, height: 245),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    // '${property.imageUrl}'
                    'https://mykaleidoscope.ru/uploads/posts/2022-08/1660216443_22-mykaleidoscope-ru-p-krasivie-chastnii-dom-dizain-krasivo-foto-22.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: const [
                  Chip(
                    // label: Text(property!.isRisked.toString()),
                    label: Text(
                      ' Риск ',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Color.fromARGB(255, 255, 88, 88),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  SizedBox(width: 5),
                  Chip(
                    // label: Text(property!.isCommercial.toString()),
                    label: Text(
                      ' Жилая ',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Color.fromARGB(255, 24, 45, 235),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  Icon(
                    Icons.arrow_upward,
                    size: 25,
                    color: Color.fromARGB(255, 42, 209, 89),
                  ),
                  // Text(
                  //   property.potentialPercentProfitPerYear,
                  //   style: TextStyle(
                  //       color: property.potentialPercentProfitPerYear.isNegative
                  //           ? Colors.red
                  //           : Colors.green,
                  //       fontWeight: FontWeight.bold),
                  // ),
                  Text(
                    '5% в год',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Text(
                // '${property.price}₽'
                '12 750 000 ₽ ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              //ЗАМУТИ ПЕРЕНОС СТРОКИ2
              const Text(
                // '${property.location}'
                'Дальняя улица, 8к1, Краснодар, \nКраснодарский край',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
