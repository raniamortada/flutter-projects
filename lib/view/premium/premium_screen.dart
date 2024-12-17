import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class PremiumScreen extends StatefulWidget {
  @override
  _PremiumScreenState createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  String selectedOption = "Monthly";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF031A21), // Dark background color
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image and Heading
          Stack(
            children: [
              Image.asset(
                'assets/image/Rectangle 6 (1).png',
                width: double.infinity,
                height: 350,
                fit: BoxFit.cover,
              ),
              Container(
                height: 350,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black.withOpacity(0.5), Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
              Positioned(
                bottom: 50,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Be Premium",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Get unlimited access",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "When you subscribe, you’ll get\ninstant unlimited access",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
                height: 1.5,
              ),
            ),
          ),

          SizedBox(height: 20),

          // Subscription Options
          buildSubscriptionOption(
            "Monthly",
            "\$19.99",
            "/m",
            isSelected: selectedOption == "Monthly",
            description: "Pay monthly, cancel any time",
            onTap: () {
              setState(() {
                selectedOption = "Monthly";
              });
            },
          ),
          buildSubscriptionOption(
            "Yearly",
            "\$129.99",
            "/y",
            isSelected: selectedOption == "Yearly",
            description: "Pay for a full year",
            onTap: () {
              setState(() {
                selectedOption = "Yearly";
              });
            },
          ),

          Spacer(),

          Center(
            child: buildCustomButton(context: context,
                width:326,
                height: 50,
                text: 'Subscribe  Now',
                borderRadius: 24,
                backgroundColor: ColorManager.primaryColor,
                onPressed: () {  }),
          ),
        ],
      ),
    );
  }

  Widget buildSubscriptionOption(String title, String price, String duration,
      {bool isSelected = false,
        String description = "",
        required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? ColorManager.black2 : Colors.grey.shade900,
            border: isSelected
                ? Border.all(color: Colors.red, width: 2)
                : Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        isSelected
                            ? Icons.radio_button_checked
                            : Icons.radio_button_unchecked,
                        color: isSelected ? Colors.red : Colors.grey,
                      ),
                      SizedBox(width: 8),
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Text(
                "$price $duration",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
