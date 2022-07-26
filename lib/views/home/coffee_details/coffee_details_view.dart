import 'package:animations/animations.dart';
import 'package:coffee_shop/constants/app_color.dart';
import 'package:coffee_shop/widgets/buttons/menu_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import '../../../util/ui_helper.dart';
import 'coffee_details_viewmodel.dart';

class CoffeeDetailsView extends StatelessWidget {
  const CoffeeDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CoffeeDetailsViewModel>.reactive(
      viewModelBuilder: () => CoffeeDetailsViewModel(),
      onModelReady: (model) => model.onInit(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: AppColors.black,
        body: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: screenHeight(context) * 0.55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage(model.chosenCoffee?.image as String),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    width: screenWidth(context),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppIconButton(
                            icon: Icons.arrow_back_ios,
                            iconSize: 17,
                            iconColor: AppColors.white.withOpacity(0.3),
                            onTap: model.onBackButtonPressed,
                          ),
                          AppIconButton(
                            icon: Icons.favorite,
                            iconSize: 18,
                            iconColor: AppColors.white.withOpacity(0.2),
                            onTap: () {},
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
