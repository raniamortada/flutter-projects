import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AccountingSystemScreen extends StatefulWidget {
  const AccountingSystemScreen({super.key});

  @override
  State<AccountingSystemScreen> createState() => _AccountingSystemScreenState();
}

class _AccountingSystemScreenState extends State<AccountingSystemScreen> {
  TextEditingController nameController = TextEditingController();
  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 16, left: 16),
            child: Column(
              children: [
                Header(
                  context: context,
                  title: AppLocalizations.of(context)!.newTeam,
                  text: AppLocalizations.of(context)!.id,
                ),
                const SizedBox(height: 10),
                buildImageWithIcon(
                  imagePath: "assets/image/unsplash_rIIeOYIJ0IU.png",
                  imageSize: 94,
                  iconSize: 40,
                  iconBackgroundColor: Colors.grey[800]!,
                  icon: Icons.camera_alt,
                  iconColor: Colors.white,
                  onIconTap: () {
                    print("Camera icon tapped!");
                  },
                ),
                buildTextFormField(
                  AppLocalizations.of(context)!.id,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildDropdownButton(
                  hint: AppLocalizations.of(context)!.paymentsFromTrainees,
                  imag: 'assets/SVG/images/Tick Square.svg',
                ),
                buildDropdownButton(
                  hint: AppLocalizations.of(context)!.monthsOfSubscription,
                  imag: 'assets/SVG/images/Tick Square.svg',
                ),
                buildTextFormField(
                  AppLocalizations.of(context)!.batchTotal,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFormField(
                  AppLocalizations.of(context)!.discount,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFormField(
                  AppLocalizations.of(context)!.tax,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                Container(
                  width: 317,
                  height: 198,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(AppLocalizations.of(context)!.subtotal),
                            Text("\$0.00"),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(AppLocalizations.of(context)!.discountAmount),
                            Text("\$0.00"),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(AppLocalizations.of(context)!.taxAmount),
                            Text("\$0.00"),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(AppLocalizations.of(context)!.total),
                            Text("\$0.00"),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(AppLocalizations.of(context)!.requiredDeposit),
                            Text("\$0.00"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                buildCustomButton(
                  context: context,
                  width: 326,
                  height: 50,
                  text: AppLocalizations.of(context)!.createNow,
                  backgroundColor: ColorManager.primaryColor,
                  onPressed: () {},
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

}

