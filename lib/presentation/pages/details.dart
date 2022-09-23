import 'package:flutter/material.dart';

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
      ),
      body: const Center(
        child: Text('Should contain the deatails of a serie show...'),
      ),
    );
  }
}
