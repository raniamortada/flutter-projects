import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              buildNotificationOption(
                title: AppLocalizations.of(context)!.workoutReminders,
                value: workoutReminders,
                onChanged: (newValue) {
                  setState(() {
                    workoutReminders = newValue;
                  });
                },
              ),
              buildNotificationOption(
                title: AppLocalizations.of(context)!.programNotifications,
                value: programNotifications,
                onChanged: (newValue) {
                  setState(() {
                    programNotifications = newValue;
                  });
                },
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text.rich(
                  TextSpan(
                    text: AppLocalizations.of(context)!.notificationPermissionText,
                    style: const TextStyle(color: Colors.white70, fontSize: 14),
                    children: [
                      TextSpan(
                        text: AppLocalizations.of(context)!.phoneSettings,
                        style: const TextStyle(color: Colors.orange, fontSize: 14),
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
