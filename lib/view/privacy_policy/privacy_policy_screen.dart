import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.black2,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    buildBackButton(context),
                    const Spacer(),
                    const Text(
                      "Privacy Policy",
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
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Consectetur adipiscing elit. Natoque phasellus lobortis mattis cursus faucibus hac proin risus. Turpis phasellus massa ullamcorper volutpat. Ornare commodo non integer fermentum nisi, morbi id. Vel tortor mauris feugiat amet, maecenas facilisis risus, in faucibus. Vestibulum ullamcorper fames eget enim diam fames faucibus duis ac. Aliquam non tellus semper in dignissim nascetur venenatis lacus.",
                      style: TextStyle(fontSize: 16, height: 1.5,color: Colors.white),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Lectus vel non varius interdum vel tellus sed mattis. Sit laoreet auctor arcu mauris tincidunt sociis tristique pharetra neque. Aliquam pharetra elementum nisl sapien. Erat nisl morbi eu dolor in. Sapien ut lacus dui libero morbi tristique.",
                      style: TextStyle(fontSize: 16, height: 1.5,color: Colors.white),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Sit praesent mi, dolor, magna in pellentesque sollicitudin odio sed. Sit nibh aliquam enim ipsum lectus sem fermentum congue velit. Purus habitant odio in morbi aliquet velit pulvinar. Facilisis ut amet interdum pretium. Fames pretium eget orci facilisis mattis est libero facilisis ullamcorper. Est auctor amet egestas risus libero et. Auctor faucibus sit id fringilla vitae. Ac volutpat sodales tristique ut netus turpis.",
                      style: TextStyle(fontSize: 16, height: 1.5,color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
