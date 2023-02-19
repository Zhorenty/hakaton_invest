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
    Property home2 = Property(
      id: 1,
      description: '',
      location: 'Краснодарский край, Сочи,\n р-н Адлерский',
      imageUrl:
          'https://mykaleidoscope.ru/uploads/posts/2022-08/1660216443_22-mykaleidoscope-ru-p-krasivie-chastnii-dom-dizain-krasivo-foto-22.jpg',
      price: '12 750 000',
      potentialPercentProfitPerYear: 5,
      isRisked: true,
      isCommercial: false,
    );

    List<Property> examples = [home1, home2];
    return SizedBox(
      height: 1000,
      width: 500,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: examples.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Stack(
                  children: [
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          '${examples[index].imageUrl}',
                          // 'https://mykaleidoscope.ru/uploads/posts/2022-08/1660216443_22-mykaleidoscope-ru-p-krasivie-chastnii-dom-dizain-krasivo-foto-22.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13, top: 10),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 26,
                            width: 77,
                            child: Chip(
                              label: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  examples[index].isRisked.toString() == false
                                      ? 'Риск'
                                      : 'Риск',
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                              backgroundColor: const Color(0xffFF5858),
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          SizedBox(
                            height: 25,
                            width: 80,
                            child: Chip(
                              // label: Text(),
                              label: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  examples[index].isCommercial.toString() ==
                                          false
                                      ? 'Жилое'
                                      : 'Жилое',
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                              backgroundColor:
                                  const Color.fromARGB(255, 24, 45, 235),
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
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
                      children: [
                        examples[index].potentialPercentProfitPerYear.isNegative
                            ? const Icon(
                                Icons.arrow_downward,
                                size: 25,
                                color: Color.fromARGB(255, 209, 42, 42),
                              )
                            : const Icon(
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
                          '${examples[index].potentialPercentProfitPerYear}% в год',
                          style: TextStyle(
                              color: examples[index]
                                      .potentialPercentProfitPerYear
                                      .isNegative
                                  ? Colors.red
                                  : Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '${examples[index].price} ₽',
                      // '12 750 000 ₽',
                      style: const TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    //ЗАМУТИ ПЕРЕНОС СТРОКИ ЭРИК
                    Text(
                      examples[index].location,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
              ],
            );
          }),
    );
  }
}
