import 'package:flutter/cupertino.dart';

import '../../../widgets/coffee_card/coffee_card.dart';
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
      height: 300,
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
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
