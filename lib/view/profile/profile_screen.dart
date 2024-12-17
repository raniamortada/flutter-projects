import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.black2,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,vertical: 20
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildBackButton(context),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: CircularProgressIndicator(
                            value: 0.5,
                            strokeWidth: 5,
                            valueColor: AlwaysStoppedAnimation(Colors.orange),
                            backgroundColor: Colors.grey.shade800,
                          ),
                        ),
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/image/59.png'),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SARAH",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "WEGAN",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Joined 2 month ago",
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40),
              buildSettingItem(
                title: "Edit Profile",
                onTap: () {
                },
              ),
              buildSettingItem(
                title: "Privacy Policy",
                onTap: () {
                },
              ),
              buildSettingItem(
                title: "Settings",
                onTap: () {
                },
              ),


              SizedBox(height: 20),

              // Premium Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              "PRO",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Upgrade to Premium",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "This subscription is auto-renewable",
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.white),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Sign Out
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: GestureDetector(
                  onTap: () {
                    // Handle Sign Out action
                  },
                  child: Text(
                    "Sign Out",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildOptionTile(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Icon(icon, color: Colors.grey.shade700, size: 16),
        ],
      ),
    );
  }
}
