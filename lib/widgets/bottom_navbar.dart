import 'package:flutter/material.dart';
import 'package:flutter_find_house_app/theme.dart';

class BottomNavbar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  BottomNavbar({required this.imageUrl, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          imageUrl,
          width: 24,
          color: isActive ? purpleColor : greyColor,
        ),
        Spacer(),
        isActive
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                  color: isActive ? purpleColor : Colors.transparent,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(1000),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
