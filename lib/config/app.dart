import 'package:coffee_shop/services/list_service.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import '../views/home/coffee_details/coffee_details_view.dart';
import '../views/home/home_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: CoffeeDetailsView),
    // CupertinoRoute(page: PreLoginView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: ListService),
  ],
)
class AppSetup {}
