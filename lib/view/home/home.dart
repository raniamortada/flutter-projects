import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Map<String, String>> departments = [
    {
      'id': '#ID',
      'name': '#name department',
      'description': '#description',
      'imagePath': 'assets/image/man-training-with-weight-lifting.png',
    },
    {
      'id': '#ID',
      'name': '#name department',
      'description': '#description',
      'imagePath': 'assets/image/man-training-with-weight-lifting.png',
    },
    {
      'id': '#ID',
      'name': '#name department',
      'description': '#description',
      'imagePath': 'assets/image/man-training-with-weight-lifting.png',
    },
    {
      'id': '#ID',
      'name': '#name department',
      'description': '#description',
      'imagePath': 'assets/image/man-training-with-weight-lifting.png',
    },
    {
      'id': '#ID',
      'name': '#name department',
      'description': '#description',
      'imagePath': 'assets/image/man-training-with-weight-lifting.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0.0,),
      key: _scaffoldKey,
      drawer: GymDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 40, right: 16, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildHeader(),
                GestureDetector(
                  onTap: () {
                    _scaffoldKey.currentState?.openDrawer();
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/image/Image (3).png"),
                  ),
                ),

              ],
            ),

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
            SizedBox(height: 20),
            buildSectionHeader('All coaches', onViewAll: () {}),
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
            SizedBox(height: 20),
            buildSectionHeader('All products', onViewAll: () {}),
            SizedBox(height: 20),
            ReusableScrollRow(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Categories",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Colors.grey.shade400),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildCategoryCard("Gym", "assets/image/unsplash_YxCrQm9XNgg.png"),
                buildCategoryCard("Yoga", "assets/image/unsplash_YxCrQm9XNgg.png"),
                buildCategoryCard("Fitness", "assets/image/unsplash_YxCrQm9XNgg.png"),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Trending",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  "Sell all",
                  style: TextStyle(color: Colors.grey.shade400),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                buildTrendingCard("Gym Centres", "assets/image/unsplash_YxCrQm9XNgg.png"),
                const SizedBox(width: 12),
                buildTrendingCard(
                    "Trainer centres", "assets/image/unsplash_YxCrQm9XNgg.png"),
              ],
            ),
            const SizedBox(height: 20),
            // Section: Discover
            const Text(
              "Discover",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                buildTrendingCard("Discover", "assets/image/unsplash_YxCrQm9XNgg.png"),
                const SizedBox(width: 12),
                buildTrendingCard("Explore", "assets/image/unsplash_YxCrQm9XNgg.png"),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "All payments from trainees",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: ColorManager.primaryColor),
                ),
              ],
            ),
            ...departments.map((dept) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: buildPaymentsSection(
                text: dept['id'] ?? '',
                title: dept['name'] ?? '',
                subtitle: dept['description'] ?? '',
                imagePath: dept['imagePath'] ?? '',
              ),
            )),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "All payments from trainees",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: ColorManager.primaryColor),
                ),
              ],
            ),
            ...departments.map((dept) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: buildPaymentsSection(
                text: dept['id'] ?? '',
                title: dept['name'] ?? '',
                subtitle: dept['description'] ?? '',
                imagePath: dept['imagePath'] ?? '',
              ),
            )),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "All payments from trainees",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: ColorManager.primaryColor),
                ),
              ],
            ),
            ...departments.map((dept) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: buildPaymentsSection(
                text: dept['id'] ?? '',
                title: dept['name'] ?? '',
                subtitle: dept['description'] ?? '',
                imagePath: dept['imagePath'] ?? '',
              ),
            )),

          ],
        ),
      ),
    );
  }
}
