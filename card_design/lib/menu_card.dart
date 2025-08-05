import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardMenu extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color iconColor;
  final Color textColor;

  const CardMenu({
    super.key, 
    required this.title, 
    required this.backgroundColor, 
    required this.iconColor, 
    required this.textColor,
    
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  shape: BoxShape.circle
                ),
                child: Icon(
                  Icons.dashboard,
                  color: iconColor,
                  size: 50,
                ),
              ),
              // jarak dengan gap
              const Gap(10),
              Text(
                title,
                style: TextStyle(color: textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}