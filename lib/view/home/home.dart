import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 40, right: 16, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildHeader(),
            SizedBox(height: 20),
            buildSectionHeader('All products', onViewAll: () {}),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(8, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: ProfileCard(
                      name: "Stella ${index + 1}",
                      imagePath: "assets/image/unsplash_rIIeOYIJ0IU.png",
                      isVerified: true,
                    ),
                  );
                }),
              ),
            ),

            SizedBox(height: 30),
            buildPieChart(),
          ],
        ),
      ),
    );
  }


}
