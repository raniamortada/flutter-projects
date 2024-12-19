import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_app/controller/languag_cubit/loce_cubit.dart';

import '../shared/local/cach_helper.dart';
import 'colors.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Widget buildCustomButton({
  required BuildContext context,
  required String text,
  required Color backgroundColor,
  required VoidCallback onPressed,
  double? width,
  double? height,
  Color? textColor,
  String? svgPath,
  double borderRadius = 8.0,
}) {
  return Container(
    width: width ?? MediaQuery.of(context).size.width * 0.8,
    height: height ?? MediaQuery.of(context).size.height * 0.07,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              color: textColor ?? Colors.black,
              fontSize: 20,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700,
            ),
          ),
          if (svgPath != null) ...[
            SvgPicture.asset(
              svgPath,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 8),
          ],
        ],
      ),
    ),
  );
}



class CustomTextField extends StatefulWidget {
  final String hintText;
  final IconData prefixIcon;
  final bool isPassword;
  final Color fillColor;
  final double borderRadius;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    this.isPassword = false,
    this.fillColor = Colors.white,
    this.borderRadius = 12.0,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326,
      height: 50,
      child: TextField(
        obscureText: widget.isPassword ? _obscureText : false,
        decoration: InputDecoration(
          prefixIcon: Icon(widget.prefixIcon,color: Color(0xffBABABA),),
          hintText: widget.hintText,
          filled: true,
          fillColor: widget.fillColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          )
              : null,
        ),
      ),
    );
  }
}

class InputFieldWidget extends StatefulWidget {
  final String label;
  final bool isPassword;
  final TextEditingController? controller;
  final IconData? prefixIcon;

  const InputFieldWidget({
    this.prefixIcon,
    this.controller,
    required this.label,
    this.isPassword = false,
    Key? key,
  }) : super(key: key);

  @override
  _InputFieldWidgetState createState() => _InputFieldWidgetState();
}

class _InputFieldWidgetState extends State<InputFieldWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 326,
          height: 50,
          child: TextField(
            controller: widget.controller,
            obscureText: widget.isPassword ? _obscureText : false,
            decoration: InputDecoration(
              prefixIcon: widget.prefixIcon != null
                  ? Icon(
                widget.prefixIcon,
                color: Colors.white,
              )
                  : null,
              hintText: widget.label,
              hintStyle: TextStyle(color: Colors.white),
              suffixIcon: widget.isPassword
                  ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
                  : null,
              border: const UnderlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
Widget buildDropdownButton({
  required String imag,
  String? value,
  String? hint,
  List<DropdownMenuItem<String>>? item,
  void Function(String?)? onChange,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 326,
          height: 50,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xFF000000).withOpacity(0.47)),
          ),
          child: DropdownButton<String>(
            dropdownColor: Colors.white,
            isExpanded: true,
            value: value,
            hint: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  SvgPicture.asset(imag),
                  if (hint != null) ...[
                    const SizedBox(width: 5),
                    Text(
                      hint,
                      style: TextStyle(
                        fontFamily: 'Switzer',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff000000).withOpacity(0.47),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            items: item,
            onChanged: onChange,
            underline: SizedBox.shrink(),
          ),
        ),
      ],
    ),
  );
}

Widget buildProfileCard({
  required String name,
  required String imagePath,
}) {
  return Container(
    child: Column(
      children: [
        Container(
          width: 54,
          height: 54,
          child: CircleAvatar(
            backgroundImage: AssetImage(imagePath),
          ),
        ),
        SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xff4CD964)
          ),
        ),
      ],
    ),
  );
}


Widget buildSectionHeader(String title,
    {required VoidCallback onViewAll}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      GestureDetector(
        onTap: onViewAll,
        child: Text(
          'Show all',
          style: TextStyle(color: ColorManager.primaryColor, fontSize: 14),
        ),
      ),
    ],
  );
}

Widget buildPerformanceAnalysis() {
  return Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Performance Analysis',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
      ],
    ),
  );
}
Widget buildProfileCards() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: List.generate(
        8,
            (index) => Padding(
          padding: const EdgeInsets.only(right: 10),
          child: buildProfileCard(
            name: "Crick",
            imagePath: "assets/image/unsplash_rIIeOYIJ0IU.png",
          ),
        ),
      ),
    ),
  );
}
Widget buildPieChart() {
  return Center(
    child: Container(
      height: 486,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.white
      ),
      child: PieChart(
        PieChartData(
          sectionsSpace: 1,
          centerSpaceRadius: 40,
          sections: [
            PieChartSectionData(
              color: Colors.green,
              value: 60,
              title: '60%',
              radius: 80,
              titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            PieChartSectionData(
              color: Colors.red,
              value: 25,
              title: '25%',
              radius: 80,
              titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            PieChartSectionData(
              color: Colors.orange,
              value: 15,
              title: '15%',
              radius: 80,
              titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
      ),
    ),
  );
}
Widget buildHeader() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Hello',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(width: 3),
              Text(
                'Admin',
                style: TextStyle(color: ColorManager.primaryColor, fontSize: 16),
              ),
            ],
          ),
          Text(
            'Manage your club today!',
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    ],
  );
}



Widget buildPaymentsSection({
  required String imagePath,
  String? text,
  String? title,
  String? subtitle,
}) {
  return Container(
    height: 59,
    decoration: BoxDecoration(
     color:  ColorManager.primaryColor
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(64),
              image: DecorationImage(
                image: AssetImage(imagePath),
              ),
            ),
          ),


          if (text != null && text.isNotEmpty)
            Text(
              text,
              style: TextStyle(
                  color: Colors.white, fontSize: 16,),
            ),

          if (title != null && title.isNotEmpty)
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),

          if (subtitle != null && subtitle.isNotEmpty)
            Text(
              subtitle,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
        ],
      ),
    ),
  );
}


class ProfileCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final bool isVerified;

  const ProfileCard({
    Key? key,
    required this.name,
    required this.imagePath,
    this.isVerified = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.green, width: 2),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            if (isVerified)
              Positioned(
                bottom: 4,
                right: 4,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Icon(Icons.check, color: Colors.white, size: 12),
                ),
              ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(
            color: Colors.green,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
Widget Header({
  required BuildContext context,
  required String title,
  required String text,
  VoidCallback? leftIconAction,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      IconButton(
        icon: const Icon(Icons.arrow_back),
        color: ColorManager.primaryColor,
        onPressed: leftIconAction ?? () => Navigator.pop(context),
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.6,
        child:Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontFamily: "Roboto",
                color: Colors.white,
              ),
            ),
            SizedBox(width: 10,),
            Text(
              text,
              textAlign: TextAlign.center,
              style:  TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                fontFamily: "Roboto",
                color: ColorManager.primaryColor,
              ),
            ),
          ],
        )
      ),
    ],
  );
}
Widget buildTextFormField(
    String labelText,
    TextEditingController controller, {
      bool isPassword = false,
      String? Function(String?)? validator,
      void Function(String)? onChange,
      String? svgPath,
    }) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        Container(
          width: 326,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            controller: controller,
            validator: validator,
            onChanged: onChange,
            obscureText: isPassword,
            decoration: InputDecoration(
              labelStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff000000).withOpacity(0.47),
              ),
              labelText: labelText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              prefixIcon: svgPath != null
                  ? Padding(
                padding: const EdgeInsets.all(16),
                child: SvgPicture.asset(
                  svgPath,
                ),
              )
                  : null,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildTextFieldMaxLin({
  required String labelText,
  required TextEditingController descriptionController,
  String? svgPath,
  bool isPassword = false,
  int maxLines = 7,
  int minLines = 7,
}) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            controller: descriptionController,
            obscureText: isPassword,
            maxLines: maxLines,
            minLines: minLines,
            decoration: InputDecoration(
              labelText: labelText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: svgPath != null
                  ? Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(
                  svgPath,
                  fit: BoxFit.contain,
                ),
              )
                  : null,
            ),
          ),
        ),
      ],
    ),
  );
}


Widget buildImageWithIcon({
  required String imagePath,
  double imageSize = 94,
  double iconSize = 40,
  Color iconBackgroundColor = Colors.grey,
  IconData icon = Icons.camera_alt,
  Color iconColor = Colors.white,
  VoidCallback? onIconTap,
}) {
  return Stack(
    alignment: Alignment.bottomRight,
    children: [
      Container(
        width: imageSize,
        height: imageSize,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(imageSize / 2),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
      GestureDetector(
        onTap: onIconTap,
        child: Container(
          width: iconSize,
          height: iconSize,
          decoration: BoxDecoration(
            color: iconBackgroundColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
      ),
    ],
  );
}
Widget TrainerCard({
  required String trainerName,
  required String specialty,
  required String experience,
  required String rating,
  required String imagePath,
  required VoidCallback onArrowPressed,
}) {
  return Container(
    decoration: BoxDecoration(
      color: ColorManager.black,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          spreadRadius: 2,
          blurRadius: 8,
          offset: Offset(0, 4),
        ),
      ],
    ),
    margin: EdgeInsets.symmetric(vertical: 8),
    padding: EdgeInsets.all(16),
    child: Row(
      children: [
        Container(
          width: 64,
          height: 64,
          child: CircleAvatar(
            backgroundImage: AssetImage(imagePath),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    trainerName,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,
                    color: ColorManager.white),
                  ),
                  Container(
                    width: 33,
                    height: 16,
                    decoration: BoxDecoration(
                      color: ColorManager.primaryColor,
                    ),
                    child: Center(
                      child: Text(
                        rating,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: ColorManager.white,
                    ),
                    onPressed: onArrowPressed,
                    iconSize: 16,
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                  ),
                ],
              ),
              Text(
                "$specialty\n$experience",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: ColorManager.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
Widget buildBackButton(BuildContext context) {
  return Container(
    width: 32,
    height: 32,
    decoration: BoxDecoration(
      color: ColorManager.black,
      borderRadius: BorderRadius.circular(32),
    ),
    child: IconButton(
      icon: const Icon(Icons.arrow_back_ios, size: 20),
      color: ColorManager.white,
      onPressed: () => Navigator.pop(context),
    ),
  );
}

class FoodCard extends StatelessWidget {
  final String name;
  final String imagePath;

  FoodCard({required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
          colorFilter:
          ColorFilter.mode(Colors.black45, BlendMode.darken),
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}

class WorkoutList extends StatelessWidget {
  final List<Map<String, String>> workouts;

  const WorkoutList({Key? key, required this.workouts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: workouts.length,
      padding: const EdgeInsets.all(12.0),
      itemBuilder: (context, index) {
        final workout = workouts[index];
        return Container(
          width: 327,
          height: 160,

          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(workout['image']!),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4),

                BlendMode.darken,
              ),
            ),
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 60),
            title: Text(
              workout['title']!,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
            subtitle: Text(
              workout['subtitle']!,
              style:  TextStyle(
                color: ColorManager.primaryColor,
                fontSize: 13,
              ),
            ),
          ),
        );
      },
    );
  }
}class ExerciseItem extends StatelessWidget {
  final String title;
  final String duration;
  final String image;
  final bool isDisabled;

  const ExerciseItem({
    Key? key,
    required this.title,
    required this.duration,
    required this.image,
    this.isDisabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isDisabled ? 0.4 : 1.0,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.6),
              BlendMode.darken,
            ),
          ),
        ),
        child: ListTile(
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            duration,
            style: const TextStyle(
              color: Colors.orangeAccent,
              fontSize: 14,
            ),
          ),
          trailing: const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
Widget iconDetail(IconData icon, String text) {
  return Row(
    children: [
      Icon(icon, color: Colors.white, size: 24),
      const SizedBox(width: 8),
      Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    ],
  );
}


Widget buildWorkoutCard({
  required String title,
  required String subtitle,
  required String imagePath,
  Color? overlayColor = const Color.fromRGBO(0, 0, 0, 0.4),
}) {
  return Container(
    width: 327,
    height: 160,
    margin: const EdgeInsets.only(bottom: 16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          overlayColor!,
          BlendMode.darken,
        ),
      ),
    ),
    child: ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 60),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 17,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          color: Colors.orange,
          fontSize: 13,
        ),
      ),
    ),
  );
}
Widget buildSectionTitle(String title, [String? action]) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          color: ColorManager.white,
        ),
      ),
      if (action != null)
        Text(
          action,
          style: TextStyle(color: ColorManager.primaryColor),
        ),
    ],
  );
}

Widget buildSettingItem({
  required String title,
  required VoidCallback onTap,
}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: onTap,
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      const Divider(
        thickness: 1,
        color: Colors.grey,
      ),
    ],
  );
}
Widget buildTutorialsList() {
  final tutorialPaths = [
    "assets/image/unsplash_yiQCexXTXJI.png",
    "assets/image/unsplash_yiQCexXTXJI.png",
  ];

  return Row(
    children: List.generate(tutorialPaths.length, (index) {
      return Expanded(
        child: Padding(
          padding: EdgeInsets.only(right: index == 0 ? 12 : 0),
          child: Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(tutorialPaths[index]),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      );
    }),
  );
}

Widget buildVideosList() {
  final videoPaths = [
    "assets/image/vaid.png",
    "assets/image/vaid.png",
    "assets/image/vaid.png",
  ];

  return SizedBox(
    height: 120,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: videoPaths.length,
      separatorBuilder: (context, index) => const SizedBox(width: 12),
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Container(
              width: 200,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(videoPaths[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Positioned(
              bottom: 8,
              left: 8,
              child: Icon(Icons.play_circle, color: Colors.white, size: 28),
            ),
          ],
        );
      },
    ),
  );
}
Widget buildTrainersList() {
  final trainers = [
    {"name": "Amaka", "image": "assets/image/Image (2).png"},
    {"name": "Stella", "image": "assets/image/Image (2).png"},
    {"name": "Derick", "image": "assets/image/Image (2).png"},
    {"name": "Tayo", "image": "assets/image/Image (2).png"},
    {"name": "Sean", "image": "assets/image/Image (2).png"},
  ];

  return SizedBox(
    height: 100,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: trainers.length,
      separatorBuilder: (context, index) => const SizedBox(width: 12),
      itemBuilder: (context, index) {
        final trainer = trainers[index];
        return Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(trainer["image"]!),
            ),
            const SizedBox(height: 8),
            Text(
              trainer["name"]!,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        );
      },
    ),
  );
}
Widget buildTrainingCard(String imagePath, String duration) {
  return Container(
    height: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
      ),
    ),
    child: Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.play_arrow, color: Colors.white, size: 18),
              const SizedBox(width: 4),
              Text(
                duration,
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
Widget sectionHeader(String title) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        "See all",
        style: TextStyle(color: Colors.grey.shade400, fontSize: 14),
      ),
    ],
  );
}

Widget buildDetailItem(String value, String label) {
  return Column(
    children: [
      Text(
        value,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 4),
      Text(
        label,
        style: const TextStyle(color: Colors.grey, fontSize: 14),
      ),
    ],
  );
}
Widget buildReviewItem(
    String name, String rating, String time, String comment) {
  return Container(
    height: 144,
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: ColorManager.black,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/image/47.png"),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                rating,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              time,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          comment,
          style: const TextStyle(color: Colors.white, fontSize: 14),
        ),
      ],
    ),
  );
}
Widget buildNotificationOption({
  required String title,
  required bool value,
  required Function(bool) onChanged,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    child: Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white12),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: Colors.orange,
            inactiveTrackColor: Colors.white12,
            inactiveThumbColor: Colors.white,
          ),
        ],
      ),
    ),
  );
}


class ReusableScrollRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // تمرير أفقي
      child: Row(
        children: List.generate(
          6, // عدد الحاويات
              (index) => buildImageContainer("assets/image/PORT.png"),
        ),
      ),
    );
  }

  Widget buildImageContainer(String imagePath) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0), // مسافة بين الحاويات
      width: 148,
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.white,
      ),
      child: Image(
        image: AssetImage(imagePath),
        fit: BoxFit.cover, // لتحسين عرض الصورة
      ),
    );
  }
}

Widget buildTrendingCard(String title, String imagePath) {
  return Expanded(
    child: Container(
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}

Widget WorkoutCard(String title, String imagePath) {
  return Container(
    width: 150,
    height: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(0.4),
          BlendMode.darken,
        ),
      ),
    ),
    child: Center(
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
Widget buildCategoryCard(String title, String imagePath) {
  return Column(
    children: [
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(height: 8),
      Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
    ],
  );
}

class GymDrawer extends StatefulWidget {
  @override
  _GymDrawerState createState() => _GymDrawerState();
}

class _GymDrawerState extends State<GymDrawer> {
  String _selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorManager.black2,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Text(
                "#logo-club",
                style: TextStyle(fontWeight: FontWeight.w600,
                    fontSize: 20,color: Colors.white),
              ),
            ),
          ),
          Divider(color: ColorManager.black,),
          Row(mainAxisAlignment:MainAxisAlignment.spaceAround ,
            children: [
              Text("Add products",style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: ColorManager.white
              ),),
              IconButton(onPressed: (){},
                  icon:  Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                  size: 15,))

            ],
          ),
          Divider(color: ColorManager.black,),
          Row(mainAxisAlignment:MainAxisAlignment.spaceAround ,
            children: [
              Text("Add a section",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.white
              ),),
              IconButton(onPressed: (){},
                  icon:  Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 15,))

            ],
          ),
          Divider(color: ColorManager.black,),
          Row(mainAxisAlignment:MainAxisAlignment.spaceAround ,
            children: [
              Text("Add a coach",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.white
              ),),
              IconButton(onPressed: (){},
                  icon:  Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 15,))

            ],
          ),
          Divider(color: ColorManager.black,),
          Row(mainAxisAlignment:MainAxisAlignment.spaceAround ,
            children: [
              Text("Add a player",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.white
              ),),
              IconButton(onPressed: (){},
                  icon:  Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 15,))

            ],
          ),
          Divider(color: ColorManager.black,),
          Row(mainAxisAlignment:MainAxisAlignment.spaceAround ,
            children: [
              Text("Add an employee",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.white
              ),),
              IconButton(onPressed: (){},
                  icon:  Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 15,))

            ],
          ),
          Divider(color: ColorManager.black,),
          Row(mainAxisAlignment:MainAxisAlignment.spaceAround ,
            children: [
              Text("add diet",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.white
              ),),
              IconButton(onPressed: (){},
                  icon:  Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 15,))

            ],
          ),
          Divider(color: ColorManager.black,),
          Row(mainAxisAlignment:MainAxisAlignment.spaceAround ,
            children: [
              Text("Add training",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.white
              ),),
              IconButton(onPressed: (){},
                  icon:  Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 15,))

            ],
          ),
          Divider(color: ColorManager.black,),
          Row(mainAxisAlignment:MainAxisAlignment.spaceAround ,
            children: [
              Text("Add a team",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.white
              ),),
              IconButton(onPressed: (){},
                  icon:  Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 15,))

            ],
          ),
          Divider(color: ColorManager.black,),
          Row(mainAxisAlignment:MainAxisAlignment.spaceAround ,
            children: [
              Text("Add a championship",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.white
              ),),
              IconButton(onPressed: (){},
                  icon:  Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 15,))

            ],
          ),
          Divider(color: ColorManager.black,),
          Row(mainAxisAlignment:MainAxisAlignment.spaceAround ,
            children: [
              Text("accounting system",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.white
              ),),
              IconButton(onPressed: (){},
                  icon:  Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 15,))

            ],
          ),
          Divider(color: ColorManager.black,),
          Row(mainAxisAlignment:MainAxisAlignment.spaceAround ,
            children: [
              Text(
                'language: ${CacheHelper.sharedPreferences.getString(CustomerHelper.Language) == "en" ? "English" : "عربي"}',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: ColorManager.white
                ),
              ),
              IconButton( onPressed: _showLanguageDialog,
                  icon:  Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 15,))

            ],
          ),
          Divider(color: ColorManager.black,),
          ListTile(
            title: Text("Sign Out",style: TextStyle(
              fontSize: 17,fontWeight: FontWeight.w600,
              color: ColorManager.cardColor
            ),),
            onTap: () {
              // CacheHelper.deleteData(key: 'token').then((v){
              //   // finishNavigate(context: context, screen: LoginScreen());
              // });
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              height: 84,
              decoration: BoxDecoration(
                color: ColorManager.black,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 37,
                          height: 18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: ColorManager.cardColor
                          ),
                          child: Text("PRO",style: TextStyle(
                            color: Colors.white
                          ),),
                        ),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Upgrade to Premium",style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: ColorManager.white
                        ),),
                        IconButton(onPressed: (){},
                            icon:  Icon(Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                              size: 15,))

                      ],
                    ),
                    Text("This subscription is auto-renewable",
                    style: TextStyle(
                      color: ColorManager.white
                    ),)

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _showLanguageDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          title: Text("language"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RadioListTile<String>(
                title: Text('عربى'),
                value: "عربى",
                groupValue: _selectedLanguage,
                onChanged: (value) {
                  context.read<LanguageCubit>().changeLanguage('عربى');
                  setState(() {
                    _selectedLanguage = value!;
                  });
                  Navigator.of(context).pop();
                },
              ),
              RadioListTile<String>(
                title: Text("en"),
                value: "en",
                groupValue: _selectedLanguage,
                onChanged: (value) {
                  context.read<LanguageCubit>().changeLanguage('en');
                  setState(() {
                    _selectedLanguage = value!;
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}