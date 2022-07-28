import 'dart:ui';
import 'package:coffee_shop/constants/app_color.dart';
import 'package:coffee_shop/constants/string_constants.dart';
import 'package:coffee_shop/widgets/buttons/menu_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../util/ui_helper.dart';
import 'coffee_details_viewmodel.dart';
import 'components/image_section.dart';

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
              ImageSection(model: model),
            ],
          ),
        ),
      ),
    );
  }
}
