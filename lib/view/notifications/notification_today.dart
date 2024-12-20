import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class NotificationToday extends StatefulWidget {
  @override
  State<NotificationToday> createState() => _NotificationTodayState();
}

class _NotificationTodayState extends State<NotificationToday> {
  @override
  Widget build(BuildContext context) {
    final todayNotifications = [
      NotificationItem(
        title: AppLocalizations.of(context)!.mealTime,
        subtitle: AppLocalizations.of(context)!.mealTimeSubtitle,
        image: "assets/image/Image (4).png",
        time: "Now",
      ),
      NotificationItem(
        title: AppLocalizations.of(context)!.jogging,
        subtitle: AppLocalizations.of(context)!.joggingSubtitle,
        image: "assets/image/Image (4).png",
        time: "7:30am",
      ),
      NotificationItem(
        title: AppLocalizations.of(context)!.yogaSession,
        subtitle: AppLocalizations.of(context)!.yogaSessionSubtitle,
        image: "assets/image/Image (4).png",
        time: "7:00am",
      ),
      NotificationItem(
        title: AppLocalizations.of(context)!.aerobics,
        subtitle: AppLocalizations.of(context)!.aerobicsSubtitle,
        image: "assets/image/Image (4).png",
        time: "6:00am",
      ),
    ];

    final weekNotifications = [
      NotificationItem(
        title: AppLocalizations.of(context)!.fullBodyWorkout,
        subtitle: AppLocalizations.of(context)!.mealTimeSubtitle,
        image: "assets/image/Image (4).png",
        time: "6:00am",
      ),
      NotificationItem(
        title: AppLocalizations.of(context)!.dailyPushUp,
        subtitle: AppLocalizations.of(context)!.mealTimeSubtitle,
        image: "assets/image/Image (4).png",
        time: "7:00am",
      ),
      NotificationItem(
        title: AppLocalizations.of(context)!.fullBodyWorkout,
        subtitle: AppLocalizations.of(context)!.mealTimeSubtitle,
        image: "assets/image/Image (4).png",
        time: "6:00am",
      ),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.black2,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    buildBackButton(context),
                    const Spacer(),
                    Text(
                      AppLocalizations.of(context)!.notifications,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto",
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(height: 40),
                _buildSectionTitle(AppLocalizations.of(context)!.today, "+4"),
                ...todayNotifications.map((e) => _buildNotificationCard(e)),
                _buildSectionTitle(AppLocalizations.of(context)!.thisWeek, ""),
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
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          if (extra.isNotEmpty)
            Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                extra,
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            )
        ],
      ),
    );
  }

  Widget _buildNotificationCard(NotificationItem item) {
    return Container(
      padding: const EdgeInsets.all(12.0),
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
          const SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4.0),
                Text(
                  item.subtitle,
                  style: const TextStyle(
                      color: Colors.white54,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12.0),
          Text(
            item.time,
            style: const TextStyle(
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
