import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ReviewsScreen extends StatefulWidget {
  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  final List<Review> reviews = [
    Review(
      name: "Sharon Jem",
      rating: 4.8,
      timeAgo: "2d ago",
      comment: "Had such an amazing session with Maria. She instantly picked up on the level of my fitness and adjusted the workout to suit me whilst also pushing me to my limits.",
      profileImage: "assets/image/Rectangle 6 (1).png",
    ),
    Review(
      name: "Amy Gary",
      rating: 4.2,
      timeAgo: "3d ago",
      comment: "Maria has been amazing! 💪 Joining his coaching has been transformational for me and she makes it so much fun to workout with her. I’ve had several personal training experiences and this one is by far the best. Maria may very well be the best personal trainer in this app 😉",
      profileImage: "assets/image/Rectangle 6 (1).png",
    ),
    Review(
      name: "Phillip Amaurao Lubin",
      rating: 3.6,
      timeAgo: "5d ago",
      comment: "I am not very satisfied with Maria. But app design is awesome. Should I be a designer 🤔",
      profileImage: "assets/image/Rectangle 6 (1).png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  buildBackButton(context),
                  const Spacer(),
                  Text(
                    AppLocalizations.of(context)!.reviews,
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
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "4.6",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        children: [
                          buildProgressBar(5, 70),
                          buildProgressBar(4, 40),
                          buildProgressBar(3, 20),
                          buildProgressBar(2, 10),
                          buildProgressBar(1, 5),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      AppLocalizations.of(context)!.ratings(174),
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    buildTab(AppLocalizations.of(context)!.recent, true),
                    buildTab(AppLocalizations.of(context)!.critical, false),
                    buildTab(AppLocalizations.of(context)!.favourable, false),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Expanded(
                child: ListView.builder(
                  itemCount: reviews.length,
                  itemBuilder: (context, index) {
                    return buildReviewCard(reviews[index]);
                  },
                ),
              ),
              Center(
                child: buildCustomButton(
                  context: context,
                  width: 263,
                  height: 50,
                  text: AppLocalizations.of(context)!.writeReview,
                  borderRadius: 24,
                  backgroundColor: ColorManager.primaryColor,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTab(String title, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.orange : Colors.white70,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildProgressBar(int star, int progress) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            "$star",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          SizedBox(width: 8),
          Expanded(
            child: LinearProgressIndicator(
              value: progress / 100,
              backgroundColor: Colors.grey[800],
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildReviewCard(Review review) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(review.profileImage),
              radius: 24,
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        review.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      SizedBox(width: 8),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          review.rating.toString(),
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                      Spacer(),
                      Text(
                        review.timeAgo,
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    review.comment,
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Review {
  final String name;
  final double rating;
  final String timeAgo;
  final String comment;
  final String profileImage;

  Review({
    required this.name,
    required this.rating,
    required this.timeAgo,
    required this.comment,
    required this.profileImage,
  });
}
