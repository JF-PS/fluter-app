import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_test/favoriteChangeNotifier.dart';

class FavoriteText extends StatefulWidget {
  _FavoriteTextState createState() => _FavoriteTextState();
}

class _FavoriteTextState extends State<FavoriteText> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteChangeNotifier>(
        builder: (context, notifier, _) => Text(notifier.favoriteCount.toString())
    );
  }
}
