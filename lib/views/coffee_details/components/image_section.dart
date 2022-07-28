import 'package:coffee_shop/views/coffee_details/components/short_description_section.dart';
import 'package:coffee_shop/views/coffee_details/components/top_buttons_row.dart';
import 'package:flutter/material.dart';
import '../coffee_details_viewmodel.dart';
import 'image_container.dart';

class ImageSection extends StatelessWidget {
  final CoffeeDetailsViewModel model;

  const ImageSection({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageContainer(image: model.chosenCoffee?.image as String),
        TopButtonsRow(onTap: model.onBackButtonPressed),
        ShortDescriptionSection(
            coffeeName: model.chosenCoffee?.name as String,
            description: model.chosenCoffee?.description as String,
            rating: model.chosenCoffee?.rating as String,
            voiceAmount: model.chosenCoffee?.voiceAmount as String,
            roastType: model.chosenCoffee?.roastType as String),
      ],
    );
  }
}
