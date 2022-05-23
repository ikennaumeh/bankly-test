import 'package:bankly_app/commons/decorations.dart';
import 'package:bankly_app/commons/palette.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  const CustomButton({
    Key? key,required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(vertical: 12),
        margin: const EdgeInsets.only(bottom: 5),
        decoration:  BoxDecoration(
            color: Palette.green,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              Decorations.elevation4
            ]
        ),
        child: const Center(
          child: Text(
            'CLAIM YOUR FREE TRIAL',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16
            ),
          ),
        ),
      ),
    );
  }
}