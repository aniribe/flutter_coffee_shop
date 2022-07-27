import 'dart:ui';

import 'package:coffee_shop/constants/app_color.dart';
import 'package:coffee_shop/widgets/buttons/menu_button.dart';
import 'package:flutter/material.dart';
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
                  Positioned(
                    bottom: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          height: 150,
                          width: screenWidth(context),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 35, vertical: 25),
                          color: AppColors.black.withOpacity(0.4),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    model.chosenCoffee?.name as String,
                                    style: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.3),
                                  ),
                                  verticalSpace(10),
                                  Text(
                                    model.chosenCoffee?.description as String,
                                    style: TextStyle(
                                        color: AppColors.white.withOpacity(0.7),
                                        fontSize: 16),
                                  ),
                                  verticalSpace(20),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        size: 19,
                                        color: AppColors.mainOrange,
                                      ),
                                      horizontalSpace(10),
                                      Text(
                                        model.chosenCoffee?.rating as String,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      horizontalSpace(5),
                                      Text(
                                        '(${model.chosenCoffee?.voiceAmount as String})',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              AppColors.white.withOpacity(0.7),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
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
