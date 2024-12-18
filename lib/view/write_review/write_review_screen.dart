import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class WriteReviewScreen extends StatefulWidget {
  @override
  _WriteReviewScreenState createState() => _WriteReviewScreenState();
}

class _WriteReviewScreenState extends State<WriteReviewScreen> {
  double _rating = 4.6;
  TextEditingController _reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    "WRITE A REVIEW",
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
              _buildRatingBar(),
              SizedBox(height: 20),
              _buildReviewInput(),
              SizedBox(height: 30),
              Center(
                child: buildCustomButton(context: context,
                    width:263,
                    height: 50,
                    text: 'Send',
                    borderRadius: 24,
                    backgroundColor: ColorManager.primaryColor,
                    onPressed: () {  }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRatingBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Rating",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          _rating.toStringAsFixed(1),
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: Slider(
            value: _rating,
            min: 0,
            max: 5,
            divisions: 50,
            activeColor: Colors.orange,
            inactiveColor: Colors.grey[800],
            onChanged: (value) {
              setState(() {
                _rating = value;
              });
            },
          ),
        ),
      ],
    );
  }

  Widget _buildReviewInput() {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Color(0xFF1C1F26),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        controller: _reviewController,
        maxLines: null,
        keyboardType: TextInputType.multiline,
        style: TextStyle(color: Colors.white, fontSize: 14),
        decoration: InputDecoration(
          hintText: "Review (Optional)",
          hintStyle: TextStyle(color: Colors.white54, fontSize: 14),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(12),
        ),
      ),
    );
  }

}
