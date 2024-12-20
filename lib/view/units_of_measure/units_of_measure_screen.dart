import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UnitsOfMeasureScreen extends StatefulWidget {
  @override
  _UnitsOfMeasureScreenState createState() => _UnitsOfMeasureScreenState();
}

class _UnitsOfMeasureScreenState extends State<UnitsOfMeasureScreen> {
  String selectedUnit = 'Metric';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.black2,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  buildBackButton(context),
                  const Spacer(),
                  Text(
                    AppLocalizations.of(context)!.unitsOfMeasure,
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
              buildUnitOption(AppLocalizations.of(context)!.metric),
               Divider(color: ColorManager.black),
              buildUnitOption(AppLocalizations.of(context)!.imperial),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildUnitOption(String unit) {
    return ListTile(
      title: Text(
        unit,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      trailing: Radio<String>(
        value: unit,
        groupValue: selectedUnit,
        activeColor: ColorManager.primaryColor,
        onChanged: (value) {
          setState(() {
            selectedUnit = value!;
          });
        },
      ),
    );
  }
}
