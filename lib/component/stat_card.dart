import 'package:flutter/material.dart';
import 'package:smart_inverter/component/styled_text.dart';

double size = 150;

class StatCard extends StatelessWidget {
  const StatCard({
    super.key,
    this.value = "0",
    this.label = "output",
    this.unit = "W",
    this.fontWeight = FontWeight.bold,
    this.color = Colors.black,
    this.fontSize = 26,
    this.textAlign = TextAlign.start,
    this.labelFontWeight = FontWeight.normal,
    this.labelColor = Colors.black,
    this.labelFontSize = 14,
    this.labelTextAlign = TextAlign.start,
    this.unitFontWeight = FontWeight.bold,
    this.unitColor = Colors.black,
    this.unitFontSize = 14,
    this.unitTextAlign = TextAlign.start,
  });

  final String value;
  final String label;
  final String unit;
  final FontWeight fontWeight;
  final Color color;
  final double fontSize;
  final TextAlign textAlign;
  final FontWeight labelFontWeight;
  final Color labelColor;
  final double labelFontSize;
  final TextAlign labelTextAlign;
  final FontWeight unitFontWeight;
  final Color unitColor;
  final double unitFontSize;
  final TextAlign unitTextAlign;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 5),
      width: 150,
      // height: size,
      decoration: BoxDecoration(
        color: Color(0xB37A7D85),
        // border: Border.all(),
        borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 14,
        children: [
          StyledText(
            label,
            textAlign: labelTextAlign,
            color: labelColor,
            fontWeight: labelFontWeight,
            fontSize: labelFontSize,
          ),
          Row(
            spacing: 2,
            children: [
              StyledText(
                value,
                textAlign: textAlign,
                color: color,
                fontWeight: fontWeight,
                fontSize: fontSize,
              ),

              StyledText(
                unit,
                textAlign: unitTextAlign,
                color: unitColor,
                fontWeight: unitFontWeight,
                fontSize: unitFontSize,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
