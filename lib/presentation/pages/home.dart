import 'package:flutter/material.dart';
import 'package:my_series_list_webandroidios/data/models/series_list.dart';
import 'package:my_series_list_webandroidios/presentation/pages/details.dart';
import 'package:my_series_list_webandroidios/presentation/pages/search.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  static String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
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
      body: Consumer<SeriesList>(
        builder: (context, value, child) => ListView.builder(
          itemCount: value.items.length,
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemBuilder: (context, index) =>
              FavoriteItemTile(index, value.items[index]),
        ),
      ),
    );
  }
}

class FavoriteItemTile extends StatelessWidget {
  final int itemNo;
  final String itemName;

  const FavoriteItemTile(
    this.itemNo,
    this.itemName,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.primaries[itemNo % Colors.primaries.length],
          child: TextButton(
            child: const Text('push me for details'),
            onPressed: () {
              Navigator.pushNamed(context, DetailsPage.routeName);
            },
          ),
        ),
        title: Text(
          itemName,
          key: Key('favorites_text_$itemName'),
        ),
        trailing: IconButton(
          key: Key('remove_icon_$itemName'),
          icon: const Icon(Icons.remove_circle),
          onPressed: () {
            Provider.of<SeriesList>(context, listen: false).remove(itemName);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Removed from my series.'),
                duration: Duration(seconds: 1),
              ),
            );
          },
        ),
      ),
    );
  }
}
