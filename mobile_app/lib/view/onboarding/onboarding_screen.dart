import 'package:flutter/material.dart';
import 'package:mobile_app/helper/color_constants.dart';
import 'package:mobile_app/helper/navigator_key.dart';
import 'package:mobile_app/model/classification_part_model.dart';
import 'package:mobile_app/view/home/screens/home_screen.dart';
import 'package:mobile_app/view/onboarding/widgets/classification_part_widget.dart';
import 'package:onboarding/onboarding.dart';

final List<ClassificationPartModel> classificationPartModels = [
  ClassificationPartModel(
    title: 'В какой рынок вы предпочитаете инвестировать ?',
    preferences: [
      'Локальный',
      'Международный',
      'Иностранный',
    ],
  ),
  ClassificationPartModel(
    title: 'Какой тип инвестирования вы предпочитаете ?',
    preferences: [
      'Низкорискованный',
      'Умеренный',
      'Высокорискованный',
    ],
  ),
  ClassificationPartModel(
    title: 'В какой тип недвижимости вы предпочитаете инвестировать ?',
    preferences: [
      'Жилая',
      'Нежилая',
    ],
  ),
];

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late Material materialButton;
  late int index;

  @override
  void initState() {
    super.initState();
    materialButton = _skipButton(pagesLenght: classificationPartModels.length);
    index = 0;
  }

  Material _skipButton(
      {void Function(int)? setIndex, required int pagesLenght}) {
    return Material(
      borderRadius: defaultSkipButtonBorderRadius,
      color: ColorConstants.primary,
      child: InkWell(
        borderRadius: defaultSkipButtonBorderRadius,
        onTap: () {
          if (setIndex != null && index + 1 != pagesLenght) {
            index++;
            setIndex(index);
          } else {
            NavigatorKey.navigatorKey.currentState!.push(
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          }
        },
        child: const Padding(
          padding: defaultSkipButtonPadding,
          child: Text(
            'Далее',
            style: defaultSkipButtonTextStyle,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Onboarding(
          pages: classificationPartModels
              .map(
                (classificationPartModel) => PageModel(
                  widget: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 0.0,
                        color: Colors.white,
                      ),
                    ),
                    child: ClassificationPartWidget(classificationPartModel),
                  ),
                ),
              )
              .toList(),
          onPageChange: (int pageIndex) {
            index = pageIndex;
          },
          startPageIndex: 0,
          footerBuilder: (context, dragDistance, pagesLength, setIndex) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 0.0,
                  color: Colors.white,
                ),
              ),
              child: ColoredBox(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(45.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIndicator(
                        netDragPercent: dragDistance,
                        pagesLength: pagesLength,
                        indicator: Indicator(
                          activeIndicator: const ActiveIndicator(
                            color: Colors.grey,
                            borderWidth: 0.7,
                          ),
                          closedIndicator: const ClosedIndicator(
                            color: ColorConstants.primary,
                            borderWidth: 0.7,
                          ),
                          indicatorDesign: IndicatorDesign.line(
                            lineDesign: LineDesign(
                              lineType: DesignType.line_uniform,
                            ),
                          ),
                        ),
                      ),
                      _skipButton(
                        setIndex: setIndex,
                        pagesLenght: classificationPartModels.length,
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
