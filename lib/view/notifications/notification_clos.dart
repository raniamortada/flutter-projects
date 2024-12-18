import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class NotificationClos extends StatefulWidget {
  @override
  _NotificationClosState createState() => _NotificationClosState();
}

class _NotificationClosState extends State<NotificationClos> {

  bool workoutReminders = true;
  bool programNotifications = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.black2,
        body: Padding(
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
              buildNotificationOption(
                title: "Workout Reminders",
                value: workoutReminders,
                onChanged: (newValue) {
                  setState(() {
                    workoutReminders = newValue;
                  });
                },
              ),
              buildNotificationOption(
                title: "Program Notifications",
                value: programNotifications,
                onChanged: (newValue) {
                  setState(() {
                    programNotifications = newValue;
                  });
                },
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text.rich(
                  TextSpan(
                    text:
                    "You can manage your app notification permission in your ",
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                    children: [
                      TextSpan(
                        text: "Phone Settings",
                        style: TextStyle(color: Colors.orange, fontSize: 14),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
