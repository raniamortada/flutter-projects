import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';


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
          padding: const EdgeInsets.symmetric(
            horizontal: 16,vertical: 20
          ),
          child: Column(
            children: [
              Row(
                children: [
                  buildBackButton(context),
                  const Spacer(),
                  const Text(
                    "UNITS OF MEASURE",
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
              buildUnitOption('Metric'),
              Divider(color: Colors.grey[800]),
              buildUnitOption('Imperial'),
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
        style: TextStyle(
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
