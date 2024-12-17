import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.black2,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    buildBackButton(context),
                    const Spacer(),
                    const Text(
                      "SETTINGS",
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
                const SizedBox(height: 40),
                buildSettingItem(
                  title: "Units of Measure",
                  onTap: () {
                  },
                ),
                buildSettingItem(
                  title: "Notifications",
                  onTap: () {
                  },
                ),
                buildSettingItem(
                  title: "Language",
                  onTap: () {
                  },
                ),
                buildSettingItem(
                  title: "Contact Us",
                  onTap: () {
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
