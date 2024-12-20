import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  final List<NotificationItem> notifications = [
    NotificationItem(
      title: "Congratulations",
      description: "35% your daily challenge completed",
      time: "9:45 AM",
      isUnread: true,
    ),
    NotificationItem(
      title:
      //AppLocalizations.of(context)!.
      "Attention",
      description: "Your subscription is going to expire very soon. Subscribe now.",
      time: "9:38 AM",
      isUnread: true,
    ),
    NotificationItem(
      title: "Daily Activity",
      description: "Time for your workout session",
      time: "8:25 AM",
      isUnread: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.black2,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
          child: Column(
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    buildTab("New", true),
                    buildTab("Events", false),
                    buildTab("All", false),
                  ],
                ),
              ),

              Divider(color: Colors.grey.shade800, thickness: 1),

              // Notifications List
              Expanded(
                child: ListView.builder(
                  itemCount: notifications.length,
                  itemBuilder: (context, index) {
                    return buildNotificationTile(notifications[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTab(String title, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.orange : Colors.white70,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildNotificationTile(NotificationItem notification) {
    return Dismissible(
      key: Key(notification.title),
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20),
        child: Icon(Icons.delete, color: Colors.white),
      ),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        // Handle deletion
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey.shade800, width: 0.5),
          ),
        ),
        child: Row(
          children: [
            if (notification.isUnread)
              Icon(Icons.circle, color: Colors.orange, size: 10),
            SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notification.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    notification.description,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              notification.time,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

}

class NotificationItem {
  final String title;
  final String description;
  final String time;
  final bool isUnread;

  NotificationItem({
    required this.title,
    required this.description,
    required this.time,
    required this.isUnread,
  });
}
