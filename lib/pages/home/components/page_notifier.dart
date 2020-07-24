import 'package:flutter/cupertino.dart';

class PageNotifier extends ChangeNotifier {
  PageController pageController = PageController(viewportFraction: 0.6);

  double currentPage = 0;

  PageNotifier() {
    pageController.addListener(() {
      currentPage = pageController.page;
      notifyListeners();
    });
  }
}
