import 'package:flutter/material.dart';

/// The [SeriesList] class holds a list of favorite items saved by the user.
class SeriesList extends ChangeNotifier {
  final List<String> _seriesItems = [];

  List<String> get items => _seriesItems;

  void add(String itemName) {
    _seriesItems.add(itemName);
    notifyListeners();
  }

  void remove(String itemName) {
    _seriesItems.remove(itemName);
    notifyListeners();
  }
}
