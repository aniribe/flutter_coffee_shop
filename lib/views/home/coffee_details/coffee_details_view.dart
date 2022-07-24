import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'coffee_details_viewmodel.dart';

class CoffeeDetailsView extends StatelessWidget {
  const CoffeeDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CoffeeDetailsViewModel>.reactive(
      viewModelBuilder: () => CoffeeDetailsViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.red,
      ),
    );
  }
}
