import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {super.key, required this.icon, required this.changeValue});

  final IconData icon;
  final void Function() changeValue;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: changeValue,
      constraints: const BoxConstraints.tightFor(width: 56, height: 56),
      elevation: 6,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}
