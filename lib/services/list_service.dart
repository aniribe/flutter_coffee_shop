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
        coffeeTypeDescription:
            'A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all elements into equal thirds. An expertly made cappuccino should be rich, but not acidic and have a mildly sweet flavouring from the milk. And, because the milk is not actually mixed in it gives the espresso a stronger flavour.'),
    CoffeeType(
        name: StringConstants.cappuccino,
        description: 'With Chocolate',
        price: '3.14',
        image: StringConstants.coffeeImage7,
        rating: '4.8',
        voiceAmount: '4.534',
        roastType: 'Medium Roasted',
        coffeeTypeDescription:
            'A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all elements into equal thirds. An expertly made cappuccino should be rich, but not acidic and have a mildly sweet flavouring from the milk. And, because the milk is not actually mixed in it gives the espresso a stronger flavour.'),
    CoffeeType(
        name: StringConstants.cappuccino,
        description: 'With Bear',
        price: '5.14',
        image: StringConstants.coffeeImage8,
        rating: '4.2',
        voiceAmount: '7.321',
        roastType: 'Dark Roasted',
        coffeeTypeDescription:
            'A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all elements into equal thirds. An expertly made cappuccino should be rich, but not acidic and have a mildly sweet flavouring from the milk. And, because the milk is not actually mixed in it gives the espresso a stronger flavour.'),
    CoffeeType(
        name: StringConstants.latte,
        description: 'With Oat Milk',
        price: '2.20',
        image: StringConstants.coffeeImage3,
        rating: '4.9',
        voiceAmount: '5.872',
        roastType: 'Light Roasted',
        coffeeTypeDescription:
            'A latte or caffè latte is a milk coffee that boasts a silky layer of foam as a real highlight to the drink. A true latte will be made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top. These elements combined result in a balanced milky coffee that possesses an aesthetically pleasing look and a smooth texture.'),
    CoffeeType(
        name: StringConstants.latte,
        description: 'With Ice',
        price: '3.52',
        image: StringConstants.coffeeImage4,
        rating: '4.1',
        voiceAmount: '9.102',
        roastType: 'Medium Roasted',
        coffeeTypeDescription:
            'A latte or caffè latte is a milk coffee that boasts a silky layer of foam as a real highlight to the drink. A true latte will be made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top. These elements combined result in a balanced milky coffee that possesses an aesthetically pleasing look and a smooth texture.'),
    CoffeeType(
        name: StringConstants.mochaLatte,
        description: 'With Milk',
        price: '4.70',
        image: StringConstants.coffeeImage5,
        rating: '4.7',
        voiceAmount: '2.390',
        roastType: 'Dark Roasted',
        coffeeTypeDescription:
            'In Italian, the term "macchiato" translates as "marked" or "stained", meaning a stained or marked coffee. The macchiato is an espresso coffee drink, topped with a small amount of foamed or steamed milk to allow the taste of the espresso to still shine through.'),
    CoffeeType(
        name: StringConstants.mochaLatte,
        description: 'With Water',
        price: '5.54',
        image: StringConstants.coffeeImage6,
        rating: '4.9',
        voiceAmount: '3.621',
        roastType: 'Light Roasted',
        coffeeTypeDescription:
            'In Italian, the term "macchiato" translates as "marked" or "stained", meaning a stained or marked coffee. The macchiato is an espresso coffee drink, topped with a small amount of foamed or steamed milk to allow the taste of the espresso to still shine through.'),
    CoffeeType(
        name: StringConstants.flatWhite,
        description: 'With Milk',
        price: '6.03',
        image: StringConstants.coffeeImage1,
        rating: '4.8',
        voiceAmount: '1.231',
        roastType: 'Dark Roasted',
        coffeeTypeDescription:
            'A flat white is a blend of micro-foamed milk poured over a single or double shot of espresso. This microfoam is steamed milk infused with air, to create a smooth and velvety texture and creamy taste. Precise pouring and steaming of the microfoam is essential in making a flat white.'),
    CoffeeType(
        name: StringConstants.flatWhite,
        description: 'With Wine',
        price: '2.07',
        image: StringConstants.coffeeImage2,
        rating: '4.5',
        voiceAmount: '6.908',
        roastType: 'Medium Roasted',
        coffeeTypeDescription:
            'A flat white is a blend of micro-foamed milk poured over a single or double shot of espresso. This microfoam is steamed milk infused with air, to create a smooth and velvety texture and creamy taste. Precise pouring and steaming of the microfoam is essential in making a flat white.'),
    CoffeeType(
        name: StringConstants.espresso,
        description: 'Without Milk',
        price: '3.47',
        image: StringConstants.coffeeImage10,
        rating: '4.4',
        voiceAmount: '7.452',
        roastType: 'Light Roasted',
        coffeeTypeDescription:
            'Espresso is a delicious concentrated form of coffee, served in shots and it’s often the coffee base of many other beverages, such as cappuccino, latte, americano and macchiato. An espresso is intense and bold, but nonetheless delicious, and the espresso is usually served in small demitasse-style cups for this reason.'),
    CoffeeType(
        name: StringConstants.espresso,
        description: 'Without Water',
        price: '4.47',
        image: StringConstants.coffeeImage11,
        rating: '4.6',
        voiceAmount: '4.562',
        roastType: 'Dark Roasted',
        coffeeTypeDescription:
            'Espresso is a delicious concentrated form of coffee, served in shots and it’s often the coffee base of many other beverages, such as cappuccino, latte, americano and macchiato. An espresso is intense and bold, but nonetheless delicious, and the espresso is usually served in small demitasse-style cups for this reason.'),
  ];

  void setSelectedCoffee(int index) => selectedCoffee = index;

  CoffeeType getChosenCoffee() => coffeeList[selectedCoffee as int];
}
