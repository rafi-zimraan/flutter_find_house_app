import 'package:flutter/material.dart';
import 'package:flutter_find_house_app/theme.dart';

class SpaceCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String address;
  final int price;
  final double rating;
  final bool isFavorite;

  const SpaceCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
    required this.rating,
    this.isFavorite = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            child: Image.asset(
              imageUrl,
              width: 120,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          name,
                          style: blackTextStyle.copyWith(fontSize: 16),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? Colors.redAccent : Colors.grey,
                        size: 18,
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Text(
                    address,
                    style: greyTextStyle.copyWith(fontSize: 12),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        '\$$price / month',
                        style: blackTextStyle.copyWith(fontSize: 14),
                      ),
                      Spacer(),
                      Icon(Icons.star, color: Colors.amber, size: 14),
                      SizedBox(width: 4),
                      Text(
                        rating.toStringAsFixed(1),
                        style: regulerTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
