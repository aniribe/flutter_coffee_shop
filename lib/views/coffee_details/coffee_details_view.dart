import 'package:coffee_shop/constants/app_color.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../util/ui_helper.dart';
import 'coffee_details_viewmodel.dart';
import 'components/image_section.dart';
import 'components/read_more_container.dart';

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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageSection(model: model),
                verticalSpace(30),
                const Text('Description'),
                verticalSpace(30),
                ReadMoreContainer(
                  isExpanded: model.isExpanded,
                  onTap: model.onReadMoreTapHandler,
                  text: model.chosenCoffee?.coffeeTypeDescription as String,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
