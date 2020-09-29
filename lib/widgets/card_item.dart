import 'package:flutter/material.dart';
import 'package:scale3c_demo_app/scale3c_demo_app.dart';

class CardItem extends StatelessWidget {
  CardItem({
    @required this.label,
    @required this.text,
    @required this.color,
    @required this.teamList,
  });

  final List<String> teamList;
  final Color color;
  final String label;
  final String text;

  @override
  Widget build(BuildContext context) {
    double viewWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(ThemeSpacing.small),
      width: viewWidth * 0.7,
      padding: EdgeInsets.symmetric(horizontal: ThemeSpacing.extra),
      decoration: BoxDecoration(
          color: color.withOpacity(0.5),
          boxShadow: [ThemeShadow.secondary],
          borderRadius: ThemeBorderRadius.secondary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: ThemeSpacing.medium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    color: ThemeCustomColor.dark,
                    fontWeight: FontWeight.bold,
                    fontSize: ThemeFontSize.large,
                  ),
                ),
                Text(
                  text,
                  style: TextStyle(
                    color: ThemeCustomColor.dark,
                    fontSize: ThemeFontSize.small,
                  ),
                ),
              ],
            ),
          ),
          LimitedBox(
            maxHeight: ThemeSize.small,
            child: Stack(
              children: teamList.asMap().entries.map((image) {
                double position = image.key.toDouble() * 32.0;
                return Positioned(
                  left: position,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: ThemeCustomColor.light,
                        )),
                    child: (CircleAvatar(
                      backgroundImage: NetworkImage(image.value),
                    )),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
