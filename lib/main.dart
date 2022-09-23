import 'package:flutter/material.dart';
import 'package:my_series_list_webandroidios/data/models/series_list.dart';
import 'package:my_series_list_webandroidios/presentation/pages/details.dart';
import 'package:my_series_list_webandroidios/presentation/pages/home.dart';
import 'package:my_series_list_webandroidios/presentation/pages/search.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SeriesList>(
      create: (context) => SeriesList(),
      child: MaterialApp(
        title: 'Testing Sample',
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          HomePage.routeName: (context) => HomePage(),
          SearchPage.routeName: (context) => SearchPage(),
          DetailsPage.routeName: (context) => DetailsPage(),
        },
        initialRoute: HomePage.routeName,
      ),
    );
  }
}
