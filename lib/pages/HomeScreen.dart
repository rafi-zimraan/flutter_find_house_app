import 'package:flutter/material.dart';
import 'package:flutter_find_house_app/model/City.dart';
import 'package:flutter_find_house_app/model/Tips.dart';
import 'package:flutter_find_house_app/theme.dart';
import 'package:flutter_find_house_app/widgets/bottom_navbar.dart';
import 'package:flutter_find_house_app/widgets/city_card.dart';
import 'package:flutter_find_house_app/widgets/space_card.dart';
import 'package:flutter_find_house_app/widgets/tips_card.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(vertical: edge),
        child: SafeArea(
          child: ListView(
            children: [
              // ! NOTE: TITLE/HEADER
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Explore Now',
                  style: blackTextStyle.copyWith(fontSize: 24),
                ),
              ),
              SizedBox(height: 2),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  "Mencari kosan yang cozy",
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(height: 30),

              // NOTE: POPULAR CITIES
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  "Popular Cities",
                  style: regulerTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: edge),
                    CityCard(
                      city: City(
                        id: 1,
                        name: 'Jakarta',
                        imageUrl: 'assets/city1.png',
                        isPopular: false,
                      ),
                    ),
                    SizedBox(width: 20),
                    CityCard(
                      city: City(
                        id: 2,
                        name: 'Yogyakarta',
                        imageUrl: 'assets/city2.png',
                        isPopular: true,
                      ),
                    ),
                    SizedBox(width: 20),
                    CityCard(
                      city: City(
                        id: 1,
                        name: 'Surabaya',
                        imageUrl: 'assets/city3.png',
                        isPopular: false,
                      ),
                    ),
                    SizedBox(width: 24),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  "Recommended Space",
                  style: regulerTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Column(
                  children: [
                    SpaceCard(
                      imageUrl: 'assets/space1.png',
                      name: 'Cozy Single Room',
                      address: 'Downtown, near MRT',
                      price: 250,
                      rating: 4.6,
                      isFavorite: true,
                    ),
                    SpaceCard(
                      imageUrl: 'assets/space2.png',
                      name: 'Modern Studio',
                      address: 'Cafes & Parks area',
                      price: 300,
                      rating: 4.8,
                      isFavorite: false,
                    ),
                    SpaceCard(
                      imageUrl: 'assets/space3.png',
                      name: 'Affordable Shared Room',
                      address: 'Residential suburb',
                      price: 150,
                      rating: 4.2,
                      isFavorite: false,
                    ),
                    SizedBox(height: 24),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // NOTE: TIPS & GUIDANCE
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  "Tips & Guidance",
                  style: regulerTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Column(
                  children: [
                    TipsCard(
                      Tips(
                        id: 1,
                        title: 'City Guidelines',
                        imageUrl: 'assets/tips1.png',
                        updatedAt: 'Updated d20 Apr',
                      ),
                    ),
                    SizedBox(height: 20),
                    TipsCard(
                      Tips(
                        id: 2,
                        title: 'Jakarta Fairship',
                        imageUrl: 'assets/tips2.png',
                        updatedAt: 'Updated 11 Dec',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width - (2 * edge),
                margin: EdgeInsets.symmetric(horizontal: edge),
                decoration: BoxDecoration(
                  color: Color(0xffF6f7F8),
                  borderRadius: BorderRadius.circular(23),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomNavbar(
                      imageUrl: 'assets/icon_home.png',
                      isActive: false,
                    ),
                    BottomNavbar(
                      imageUrl: 'assets/icon_email.png',
                      isActive: true,
                    ),
                    BottomNavbar(
                      imageUrl: 'assets/icon_card.png',
                      isActive: false,
                    ),
                    BottomNavbar(
                      imageUrl: 'assets/icon_love.png',
                      isActive: false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
