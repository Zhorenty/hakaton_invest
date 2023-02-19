import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/helper/color_constants.dart';
import 'package:mobile_app/model/classification_part_model.dart';

class ClassificationPartWidget extends StatelessWidget {
  const ClassificationPartWidget(this.classificationPartModel, {super.key});

  final ClassificationPartModel classificationPartModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Text(
              classificationPartModel.title,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: classificationPartModel.preferences
                  .map(
                    (preference) => Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: ClassificationPartPreferencesWidget(preference),
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}

class ClassificationPartPreferencesWidget extends StatefulWidget {
  const ClassificationPartPreferencesWidget(this.preference, {super.key});

  final String preference;

  @override
  State<ClassificationPartPreferencesWidget> createState() =>
      _ClassificationPartPreferencesWidgetState();
}

class _ClassificationPartPreferencesWidgetState
    extends State<ClassificationPartPreferencesWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isSelected = !isSelected;
        setState(() {});
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? ColorConstants.primary : Colors.black12,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: 350,
        child: Row(
          children: [
            Icon(
              isSelected
                  ? CupertinoIcons.checkmark_circle_fill
                  : CupertinoIcons.circle,
              color: isSelected ? Colors.white : Colors.black,
            ),
            const SizedBox(width: 30),
            Text(
              widget.preference,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
