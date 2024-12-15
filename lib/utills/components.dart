import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'colors.dart';

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
    child: SizedBox(
      height: 300,
      child: PieChart(
        PieChartData(
          sectionsSpace: 2,
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
      CircleAvatar(
        backgroundImage: AssetImage('assets/image/unsplash_DrVJk1EaPSc.png'),
        radius: 20,
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
