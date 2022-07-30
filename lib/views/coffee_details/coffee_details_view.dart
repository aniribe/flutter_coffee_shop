import 'package:coffee_shop/constants/app_color.dart';
import 'package:coffee_shop/model/coffee_size_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../util/ui_helper.dart';
import 'coffee_details_viewmodel.dart';
import 'components/coffee_size_details.dart';
import 'components/coffee_type_description_section.dart';
import 'components/image_section.dart';
import 'components/navigation_bar.dart';

class CoffeeDetailsView extends StatelessWidget {
  const CoffeeDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CoffeeDetailsViewModel>.reactive(
      viewModelBuilder: () => CoffeeDetailsViewModel(),
      onModelReady: (model) => model.onInit(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: AppColors.black,
        bottomNavigationBar: CoffeeDetailsNavigationBar(
            price: model.chosenCoffee?.price as String),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageSection(model: model),
                verticalSpace(30),
                CoffeeTypeDescriptionSection(
                  isExpanded: model.isExpanded,
                  onTap: model.onReadMoreTapHandler,
                  description:
                      model.chosenCoffee?.coffeeTypeDescription as String,
                ),
                verticalSpace(30),
                CoffeeSizeSection(
                  buttons: model.sizeButtonsController?.sizeButtons
                      as List<CoffeeSizeButton>,
                  onTap: model.onSizeButtonPressedHandler,
                ),
                verticalSpace(30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
