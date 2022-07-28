import '../constants/string_constants.dart';
import '../model/coffee_type.dart';

class ListService {
  int? selectedCoffee;

  List<CoffeeType> coffeeList = [
    CoffeeType(
      name: StringConstants.cappuccino,
      description: 'With Oat Milk',
      price: '4.20',
      image: StringConstants.coffeeImage9,
      rating: '4.5',
      voiceAmount: '6.987',
      roastType: 'Light Roasted',
    ),
    CoffeeType(
      name: StringConstants.cappuccino,
      description: 'With Chocolate',
      price: '3.14',
      image: StringConstants.coffeeImage7,
      rating: '4.8',
      voiceAmount: '4.534',
      roastType: 'Medium Roasted',
    ),
    CoffeeType(
      name: StringConstants.cappuccino,
      description: 'With Bear',
      price: '5.14',
      image: StringConstants.coffeeImage8,
      rating: '4.2',
      voiceAmount: '7.321',
      roastType: 'Dark Roasted',
    ),
    CoffeeType(
      name: StringConstants.latte,
      description: 'With Oat Milk',
      price: '2.20',
      image: StringConstants.coffeeImage3,
      rating: '4.9',
      voiceAmount: '5.872',
      roastType: 'Light Roasted',
    ),
    CoffeeType(
      name: StringConstants.latte,
      description: 'With Ice',
      price: '3.52',
      image: StringConstants.coffeeImage4,
      rating: '4.1',
      voiceAmount: '9.102',
      roastType: 'Medium Roasted',
    ),
    CoffeeType(
      name: StringConstants.mochaLatte,
      description: 'With Milk',
      price: '4.70',
      image: StringConstants.coffeeImage5,
      rating: '4.7',
      voiceAmount: '2.390',
      roastType: 'Dark Roasted',
    ),
    CoffeeType(
      name: StringConstants.mochaLatte,
      description: 'With Water',
      price: '5.54',
      image: StringConstants.coffeeImage6,
      rating: '4.9',
      voiceAmount: '3.621',
      roastType: 'Light Roasted',
    ),
    CoffeeType(
      name: StringConstants.flatWhite,
      description: 'With Milk',
      price: '6.03',
      image: StringConstants.coffeeImage1,
      rating: '4.8',
      voiceAmount: '1.231',
      roastType: 'Dark Roasted',
    ),
    CoffeeType(
      name: StringConstants.flatWhite,
      description: 'With Wine',
      price: '2.07',
      image: StringConstants.coffeeImage2,
      rating: '4.5',
      voiceAmount: '6.908',
      roastType: 'Medium Roasted',
    ),
    CoffeeType(
      name: StringConstants.espresso,
      description: 'Without Milk',
      price: '3.47',
      image: StringConstants.coffeeImage10,
      rating: '4.4',
      voiceAmount: '7.452',
      roastType: 'Light Roasted',
    ),
    CoffeeType(
      name: StringConstants.espresso,
      description: 'Without Water',
      price: '4.47',
      image: StringConstants.coffeeImage11,
      rating: '4.6',
      voiceAmount: '4.562',
      roastType: 'Dark Roasted',
    ),
  ];

  void setSelectedCoffee(int index) => selectedCoffee = index;

  CoffeeType getChosenCoffee() => coffeeList[selectedCoffee as int];
}
