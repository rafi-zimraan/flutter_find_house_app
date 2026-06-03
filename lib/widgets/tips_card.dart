import 'package:flutter/material.dart';
import 'package:flutter_find_house_app/model/Tips.dart';
import 'package:flutter_find_house_app/theme.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;
  TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(tips.imageUrl, width: 80, height: 80),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tips.title, style: blackTextStyle.copyWith(fontSize: 18)),
            SizedBox(height: 4),
            Text(tips.updatedAt, style: greyTextStyle),
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.chevron_right, color: greyColor),
        ),
      ],
    );
  }
}
