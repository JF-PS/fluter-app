import 'package:flutter/material.dart';
import 'package:test_test/favoriteChangeNotifier.dart';
import 'package:provider/provider.dart';

class FavoriteIcon extends StatefulWidget {
  _FavoriteIconState createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  late bool _isFavorited;

  void _toggleFavorite(FavoriteChangeNotifier _notifier) {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      } else {
        _isFavorited = true;
      }

      _notifier.isFavorited = _isFavorited;
    });
  }


  @override
  Widget build(BuildContext context) {
    FavoriteChangeNotifier _notifier = Provider.of<FavoriteChangeNotifier>(context);
    _isFavorited = _notifier.isFavorited;
    return IconButton(
      icon:
      _isFavorited ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
      color: Colors.red,
      onPressed: () => _toggleFavorite(_notifier),
    );
  }
}
