import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';


class DietPlanScreen extends StatefulWidget {
  @override
  _DietPlanScreenState createState() => _DietPlanScreenState();
}

class _DietPlanScreenState extends State<DietPlanScreen> {
  String selectedMeal = "Breakfast";

  final List<Map<String, String>> breakfastItems = [
    {"name": "Oatmeal", "image": "assets/image/unsplash_aNHu7X6_vmI.png"},
    {"name": "Waffles", "image": "assets/image/unsplash_S4dXp25NiLg.png"},
    {"name": "Cornflakes", "image": "assets/image/unsplash_yPk-KUY8LtY.png"},
    {"name": "Fruits Salad", "image": "assets/image/unsplash_FGiTmCncTWQ.png"},
    {"name": "Pancakes", "image": "assets/image/unsplash_iuKj0rRRddA.png"},
    {"name": "Bread and Tea", "image": "assets/image/unsplash_AZxyTjkz3-g.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 30),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  color: ColorManager.white,
                  onPressed: () => Navigator.pop(context),
                ),
                const Text(
                  "Diet Plan",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                    color: Colors.white,
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/image/Image (2).png"),
                )
               
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: ["Breakfast", "Lunch", "Dinner"].map((meal) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedMeal = meal;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      padding:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                      decoration: BoxDecoration(
                        color: selectedMeal == meal
                            ? Colors.orange
                            : Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        meal,
                        style: TextStyle(
                          color: selectedMeal == meal
                              ? Colors.black
                              : Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 3 / 4,
                  ),
                  itemCount: breakfastItems.length,
                  itemBuilder: (context, index) {
                    return FoodCard(
                      name: breakfastItems[index]['name']!,
                      imagePath: breakfastItems[index]['image']!,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

