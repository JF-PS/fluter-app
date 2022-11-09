import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  final bool isFavorited = true;
  final int favoriteCount = 41;

  const Favorite(
      {Key key = const Key("any_key"),
      required isFavorited,
      required favoriteCount})
      : super(key: key);

  _FavoriteState createState() => _FavoriteState(isFavorited, favoriteCount);
}

class _FavoriteState extends State<Favorite> {
  bool _isFavorited;
  int _favoriteCount;


  _FavoriteState(this._isFavorited, this._favoriteCount);

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
        _favoriteCount -= 1;
      } else {
        _isFavorited = true;
        _favoriteCount += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon:
              _isFavorited ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
          color: Colors.red,
          onPressed: _toggleFavorite,
        ),
        Text('$_favoriteCount'),
      ],
    );
  }
}
