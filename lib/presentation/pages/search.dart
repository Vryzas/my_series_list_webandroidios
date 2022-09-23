import 'package:flutter/material.dart';
import 'package:my_series_list_webandroidios/data/models/series_list.dart';
import 'package:my_series_list_webandroidios/presentation/pages/details.dart';
import 'package:my_series_list_webandroidios/presentation/pages/home.dart';
import 'package:provider/provider.dart';

// TODO: get series list from ext. api
final List<String> entries = <String>['Series A', 'Series B', 'Series C'];

class SearchPage extends StatelessWidget {
  static String routeName = '/search_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        actions: <Widget>[
          TextButton.icon(
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, HomePage.routeName);
            },
            icon: const Icon(Icons.home_outlined),
            label: const Text('Home'),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: entries.length,
        cacheExtent: 20.0,
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemBuilder: (context, index) => ItemTile(index, entries[index]),
      ),
    );
  }
}

class ItemTile extends StatelessWidget {
  final int itemNo;
  final String itemName;

  const ItemTile(
    this.itemNo,
    this.itemName,
  );

  @override
  Widget build(BuildContext context) {
    var seriesList = Provider.of<SeriesList>(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor:
              Colors.primaries[itemNo + 1 % Colors.primaries.length],
          child: TextButton(
            child: const Text('push me for details'),
            onPressed: () {
              Navigator.pushNamed(context, DetailsPage.routeName);
            },
          ),
        ),
        title: Text(
          itemName,
          key: Key('text_$itemName'),
        ),
        trailing: IconButton(
          key: Key('icon_$itemName'),
          icon: seriesList.items.contains(itemName)
              ? const Icon(Icons.check_box_sharp)
              : const Icon(Icons.check_box_outline_blank),
          onPressed: () {
            !seriesList.items.contains(itemName)
                ? seriesList.add(itemName)
                : seriesList.remove(itemName);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(seriesList.items.contains(itemName)
                    ? 'Added to my series.'
                    : 'Removed from my series.'),
                duration: const Duration(seconds: 1),
              ),
            );
          },
        ),
      ),
    );
  }
}
