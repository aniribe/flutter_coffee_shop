import 'package:coffee_shop/constants/string_constants.dart';
import 'package:coffee_shop/util/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import '../../constants/app_color.dart';
import '../../widgets/avatar.dart';
import '../../widgets/buttons/menu_button.dart';
import '../../widgets/coffee_card/coffee_card.dart';
import '../../widgets/inputs/app_input.dart';
import '../../widgets/navigation_bar/custom_navigation_bar.dart';
import 'components/coffee_cards_section.dart';
import 'components/coffee_type_section.dart';
import 'components/slogan_section.dart';
import 'components/special_section.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, model, child) => Scaffold(
              backgroundColor: AppColors.black,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: const MenuButton(),
                actions: const [Avatar()],
              ),
              bottomNavigationBar: const CustomNavigationBar(),
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        verticalSpace(20),
                        const SloganSection(),
                        verticalSpace(30),
                        const AppInput(),
                        verticalSpace(30),
                        CoffeeTypesSections(
                          itemCount: model.coffeeButtons.length,
                          onPressed: model.onCoffeeTypeButtonPressedHandler,
                          coffeeButtons: model.coffeeButtons,
                        ),
                        verticalSpace(15),
                        CoffeeCardsSection(model: model),
                        verticalSpace(35),
                        const SpecialSection()
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
