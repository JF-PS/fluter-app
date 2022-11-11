import 'package:flutter/material.dart';
import 'package:test_test/favoriteChangeNotifier.dart';
import 'package:test_test/favoriteText.dart';
import 'package:test_test/favoriteIcon.dart';
import 'package:test_test/recipe.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'favorite.dart';

class RecipeScreen extends StatelessWidget {
  final Recipe recipe;
  const RecipeScreen({
    Key key = const Key("any_key"),
    required this.recipe,
  }) : super(key: key);

  final String title = "My Spots";
  final String subTitle = "Wood Spot";
  final String creator = "By JF-PS";

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(subTitle,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                Text(recipe.user,
                    style: TextStyle(color: Colors.grey[500], fontSize: 16)),
              ],
            )),
            FavoriteIcon(),
            FavoriteText(),
          ],
        ));

    Widget buttonSection = Container(
      padding: const EdgeInsets.all(8),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        _buildButtonColumn(Colors.blue, Icons.comment, "Comment"),
        _buildButtonColumn(Colors.blue, Icons.share, "Share")
      ]),
    );

    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        recipe.description,
        softWrap: true,
      ),
    );
    return ChangeNotifierProvider(
      create: (context) => FavoriteChangeNotifier(recipe.isFavorite, recipe.favoriteCount),
      child: Scaffold(
          appBar: AppBar(
            title: Text(recipe.title),
          ),
          body: ListView(children: [
            // Image.asset(
            //     'images/landscape.jpg',
            //     width: 600,
            //     height: 240,
            //     fit: BoxFit.cover
            // ),
            CachedNetworkImage(
              imageUrl: recipe.imageUrl,
                  //'https://cdn.pixabay.com/photo/2017/06/30/21/28/landscape-2459857_640.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
              placeholder: (context, url) =>
                  Center(child: CircularProgressIndicator()),
            ),
            titleSection,
            buttonSection,
            descriptionSection
          ])),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          padding: const EdgeInsets.only(bottom: 8),
          child: Icon(icon, color: color)),
      Text(label,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: color))
    ]);
  }
}
