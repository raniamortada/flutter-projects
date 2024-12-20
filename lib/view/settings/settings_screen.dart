import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Add this import

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
                    Text(
                      AppLocalizations.of(context)!.settings, // Use localized string
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
                buildSettingItem(
                  title: AppLocalizations.of(context)!.unitsOfMeasure, // Use localized string
                  onTap: () {},
                ),
                buildSettingItem(
                  title: AppLocalizations.of(context)!.notifications, // Use localized string
                  onTap: () {},
                ),
                buildSettingItem(
                  title: AppLocalizations.of(context)!.language, // Use localized string
                  onTap: () {},
                ),
                buildSettingItem(
                  title: AppLocalizations.of(context)!.contactUs, // Use localized string
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
