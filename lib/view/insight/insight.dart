import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FitnessInsightScreen extends StatefulWidget {
  @override
  State<FitnessInsightScreen> createState() => _FitnessInsightScreenState();
}

class _FitnessInsightScreenState extends State<FitnessInsightScreen> {
  String _selectedDate = 'No date selected';
  DateTime _currentDate = DateTime.now();

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
                Container(
                  width: 327,
                  height: 410,
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: ColorManager.black,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    children: [
                      Text(AppLocalizations.of(context)!.selectDate,
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                      SizedBox(height: 8.0),
                      TableCalendar(
                        firstDay: DateTime.utc(2020, 1, 1),
                        lastDay: DateTime.utc(2030, 12, 31),
                        focusedDay: _currentDate,
                        selectedDayPredicate: (day) => isSameDay(_currentDate, day),
                        onDaySelected: (selectedDay, focusedDay) {
                          setState(() {
                            _currentDate = selectedDay;
                            _selectedDate = 'Selected Date: ${selectedDay.toLocal()}';
                          });
                        },
                        calendarStyle: CalendarStyle(
                          selectedDecoration: BoxDecoration(
                            color: ColorManager.primaryColor,
                            shape: BoxShape.circle,
                          ),
                          todayDecoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange,
                          ),
                          todayTextStyle: TextStyle(color: Colors.black),
                          selectedTextStyle: TextStyle(color: Colors.white),
                          defaultTextStyle: TextStyle(color: Colors.white),
                          weekendTextStyle: TextStyle(color: Colors.white),
                        ),
                        headerStyle: HeaderStyle(
                          formatButtonVisible: false,
                          titleTextStyle: TextStyle(color: Colors.white),
                          leftChevronIcon: Icon(Icons.arrow_left, color: Colors.white),
                          rightChevronIcon: Icon(Icons.arrow_right, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                buildCircularProgress("652 Cal", AppLocalizations.of(context)!.activeCalories, Colors.orangeAccent),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildSmallCircularProgress("6540", AppLocalizations.of(context)!.steps, Colors.orange),
                    buildSmallCircularProgress("45", AppLocalizations.of(context)!.time, Colors.red),
                    buildSmallCircularProgress("72", AppLocalizations.of(context)!.heart, Colors.orangeAccent),
                  ],
                ),
                SizedBox(height: 30),
                buildWorkoutList(AppLocalizations.of(context)!.stabilityTraining, "10:00", true),
                buildWorkoutList(AppLocalizations.of(context)!.flashCycling, "", true),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Circular Progress Widgets
  Widget buildCircularProgress(String value, String label, Color color) {
    return SizedBox(
      height: 180,
      width: 180,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            value: 0.7,
            strokeWidth: 10,
            valueColor: AlwaysStoppedAnimation(color),
            backgroundColor: Colors.grey.shade800,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(value, style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text(label, style: TextStyle(color: Colors.white70, fontSize: 16)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSmallCircularProgress(String value, String label, Color color) {
    return Column(
      children: [
        SizedBox(
          height: 90,
          width: 90,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CircularProgressIndicator(
                value: 0.5,
                strokeWidth: 8,
                valueColor: AlwaysStoppedAnimation(color),
                backgroundColor: Colors.grey.shade800,
              ),
              Center(
                child: Text(value, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(color: Colors.white70, fontSize: 14)),
      ],
    );
  }

  Widget buildWorkoutList(String title, String time, bool isChecked) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                if (time.isNotEmpty)
                  Text(time, style: TextStyle(color: Colors.orangeAccent, fontSize: 14)),
              ],
            ),
            Icon(isChecked ? Icons.check_circle : Icons.radio_button_unchecked, color: Colors.greenAccent),
          ],
        ),
      ),
    );
  }
}
