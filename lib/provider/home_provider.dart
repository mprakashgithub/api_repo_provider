import 'package:api_repo_provider/model/home_model.dart';
import 'package:api_repo_provider/repository/home_repo.dart';
import 'package:flutter/cupertino.dart';

class HomeProvider with ChangeNotifier {
  HomeModel? model;

  bool isLoaded = false;

  Future<void> getCountryApi() async {
    model = await HomeRepo().getCountryData();
    setIsLoaded(true);
    notifyListeners();
  }

  bool getIsLoaded() {
    return isLoaded;
  }

  void setIsLoaded(bool value) {
    isLoaded = value;
    notifyListeners();
  }
}
