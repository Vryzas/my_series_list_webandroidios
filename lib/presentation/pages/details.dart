import 'package:flutter/material.dart';
import 'package:my_series_list_webandroidios/presentation/pages/search.dart';

class DetailsPage extends StatefulWidget {
  static String routeName = '/details_page';

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        actions: <Widget>[
          TextButton.icon(
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, SearchPage.routeName);
            },
            icon: const Icon(Icons.search_outlined),
            label: const Text('Search'),
          ),
        ],
      ),
      body: const Center(
        child: Text('Should contain the deatails of a serie show...'),
      ),
    );
  }
}
