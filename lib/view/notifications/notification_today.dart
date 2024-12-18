import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class NotificationToday extends StatelessWidget {
  final List<NotificationItem> todayNotifications = [
    NotificationItem(
      title: "Meal Time",
      subtitle: "Time to eat your breakfast",
      image: "assets/image/Image (4).png",
      time: "Now",
    ),
    NotificationItem(
      title: "Jogging",
      subtitle: "It's time for your jogging session",
      image: "assets/image/Image (4).png",
      time: "7:30am",
    ),
    NotificationItem(
      title: "Yoga Session",
      subtitle: "Get ready for your Yoga routine",
      image: "assets/image/Image (4).png",
      time: "7:00am",
    ),
    NotificationItem(
      title: "Aerobics",
      subtitle: "It's time for aerobics",
      image: "assets/image/Image (4).png",
      time: "6:00am",
    ),
  ];

  final List<NotificationItem> weekNotifications = [
    NotificationItem(
      title: "Full Body Workout",
      subtitle: "Time to hit the gym",
      image: "assets/image/Image (4).png",
      time: "6:00am",
    ),
    NotificationItem(
      title: "Daily Push Up",
      subtitle: "Time to push your body",
      image: "assets/image/Image (4).png",
      time: "7:00am",
    ),
    NotificationItem(
      title: "Full Body Workout",
      subtitle: "Time to hit the gym",
      image: "assets/image/Image (4).png",
      time: "6:00am",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.black2,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    buildBackButton(context),
                    const Spacer(),
                    const Text(
                      "NOTIFICATIONS",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto",
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                SizedBox(height: 40,),
                _buildSectionTitle("Today", "+4"),
                ...todayNotifications.map((e) => _buildNotificationCard(e)),
                _buildSectionTitle("This Week", ""),
                ...weekNotifications.map((e) => _buildNotificationCard(e)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title, String extra) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          if (extra.isNotEmpty)
            Container(
              padding:
              EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                extra,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            )
        ],
      ),
    );
  }

  Widget _buildNotificationCard(NotificationItem item) {
    return Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: ColorManager.black2,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              item.image,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4.0),
                Text(
                  item.subtitle,
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          SizedBox(width: 12.0),
          Text(
            item.time,
            style: TextStyle(
                color: Colors.orange,
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class NotificationItem {
  final String title;
  final String subtitle;
  final String image;
  final String time;

  NotificationItem({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.time,
  });
}
