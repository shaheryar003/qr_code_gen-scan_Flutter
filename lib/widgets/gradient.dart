import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class gradiant_btn extends StatelessWidget {
  const gradiant_btn({super.key, this.route, this.text});
  final route;
  final text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
      child: OutlineGradientButton(
        child: Text(text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold)),
        gradient: SweepGradient(
          colors: List.generate(
              360, (h) => HSLColor.fromAHSL(1, h.toDouble(), 1, 0.5).toColor()),
        ),
        strokeWidth: 2,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        radius: Radius.circular(8),
      ),
    );
  }
}
