import 'package:flutter/material.dart';
import 'package:note_app/core/utils/colors.dart';

class AppBarSearchButton extends StatelessWidget {
  const AppBarSearchButton({super.key, required this.icon});
final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.darkGrey.withAlpha(55),
        borderRadius: BorderRadius.circular(8),
      ),
      child: IconButton(onPressed: () {}, icon: Icon(icon, size: 30)),
    );
  }
}
