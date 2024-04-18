import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({super.key, required this.color, this.cardChild, this.onPress});
  final Color color;
  final Widget? cardChild;
  void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: cardChild,
      ),
    );
  }
}
