import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import '../views/home/home_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    // CupertinoRoute(page: PreLoginView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
  ],
)
class AppSetup {}
