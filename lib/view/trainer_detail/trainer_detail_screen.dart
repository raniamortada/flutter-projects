import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class TrainerDetailScreen extends StatelessWidget {
  const TrainerDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          SizedBox(
            height: 250,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  "assets/image/Image (4).png",
                  fit: BoxFit.cover,
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration:  BoxDecoration(
                  color: ColorManager.black2,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jennifer James",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Functional Strength",
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange,
                          ),
                          child: const Icon(Icons.phone),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildDetailItem("6", "Experience"),
                        buildDetailItem("46", "Completed"),
                        buildDetailItem("25", "Active Clients"),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "Reviews",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        ...List.generate(
                          4,
                              (index) => Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CircleAvatar(
                              radius: 18,
                              backgroundImage:
                              AssetImage("assets/image/47$index.png"),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            "174",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "Read all reviews",
                          style: TextStyle(
                            color: Colors.orange.shade400,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),

                    buildReviewItem(
                      "Sharon Jem",
                      "4.8",
                      "2d ago",
                      "Had such an amazing session with Maria. She instantly picked up on the level of my fitness and adjusted the workout to suit me whilst also pushing me to my limits.",
                    ),
                    const SizedBox(height: 90),
                    Center(
                      child: buildCustomButton(context: context,
                          width:326,
                          height: 50,
                          text: 'Book an Appointment',
                          borderRadius: 24,
                          backgroundColor: ColorManager.primaryColor,
                          onPressed: () {  }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


}
