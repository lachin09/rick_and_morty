class Routes {
  static final _Home home = _Home();
  static final _Character character = _Character();
}

abstract class RouteClass {
  String module = '';

  String getRoute(String moduleRoute) => module + moduleRoute;
  String getModule() => "$module/";
}

class _Home extends RouteClass {
  @override
  String module = "/home";
  String home = "/";
}

class _Character extends RouteClass {
  @override
  String module = "/character";
  String homePage = "/";
  String detailsPage = "/details";
}
// class Routes {
//   static final _Home home = _Home();
//   static final _Login login = _Login();
//   static final _Turkish turkish = _Turkish();
// }

// class _Login extends RouteClass {
//   @override
//   String module = "/auth";
//   String signUp = '/';
//   String signIn = "/signIn";
// }

// class _Home extends RouteClass {
//   @override
//   String module = "/home";
//   String home = '/';
//   String products = "/products";
//   String search = '/search';
//   String details = "/details";
//   String breakfest = "/breakfest";
// }

// class _Turkish extends RouteClass {
//   @override
//   String module = "/turkish";
//   String home = "/";
//   String productsDetail = "/details";
//   String breakfest = "/breakfest";
//   String pruductCategory = '/category';
//   String addFood = "/addfood";
// }

// abstract class RouteClass {
//   String module = '/';

//   String getRoute(String moduleRoute) => module + moduleRoute;

//   String getModule() => '$module/';
// }
