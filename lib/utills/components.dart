import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget buildCustomButton({
  required BuildContext context,
  required String text,
  required Color backgroundColor,
  required VoidCallback onPressed,
  double? width,
  double? height,
  Color? textColor,
  String? svgPath,
  double borderRadius = 8.0, // معامل اختياري لتحديد نصف قطر الزوايا
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
          borderRadius: BorderRadius.circular(borderRadius), // تطبيق نصف القطر
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
          prefixIcon: Icon(widget.prefixIcon),
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
  final controller;
  final IconData prefixIcon;

  const InputFieldWidget({
    required this.prefixIcon,
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
              prefixIcon: Icon(
                widget.prefixIcon,
                color: Colors.white,
              ),
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