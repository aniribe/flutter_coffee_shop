import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../widgets/coffee_card/coffee_card.dart';
import '../coffee_details/coffee_details_view.dart';
import '../home_viewmodel.dart';

class CoffeeCardsSection extends StatelessWidget {
  final HomeViewModel model;

  const CoffeeCardsSection({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: model.coffeeList.length,
        itemBuilder: (context, index) {
          if (model.coffeeList[index].name ==
              model.coffeeButtons[model.selectedButton].coffeeType) {
            return CoffeeCard(
              coffeeName: model.coffeeList[index].name,
              description: model.coffeeList[index].description,
              image: model.coffeeList[index].image,
              price: model.coffeeList[index].price,
              onTap: model.redirectToDetails,
              openBuilderWidget: const CoffeeDetailsView(),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
