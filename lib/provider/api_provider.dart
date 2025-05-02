import 'package:demo_of_provider/provider/model/articles.dart';
import 'package:demo_of_provider/service/api_service.dart';
import 'package:flutter/material.dart';

class ApiProvider extends ChangeNotifier {
  final ApiService _apiService = ApiService();
  bool _isLoading = false;
  List<Articles> _articlesList = [];

  List<Articles> get articlesList => _articlesList;
  bool get isLoading => _isLoading;

  Future<void> fetchData() async {
    _isLoading = true;
    notifyListeners();

    try {
      _articlesList = await _apiService.fetchData();
    } catch (e) {
      print("Error Fetching Data:$e");
      _articlesList = [];
    }
    _isLoading = false;
    notifyListeners();
  }
}
