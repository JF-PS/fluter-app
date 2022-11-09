import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'favorite.dart';

class RecipeScreen extends StatelessWidget {
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
                    Text(creator,
                        style: TextStyle(color: Colors.grey[500], fontSize: 16)),
                  ],
                )),
            Favorite(isFavorited: false, favoriteCount: 52),
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
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        softWrap: true,
      ),
    );
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(children: [
          // Image.asset(
          //     'images/landscape.jpg',
          //     width: 600,
          //     height: 240,
          //     fit: BoxFit.cover
          // ),
          CachedNetworkImage(
            imageUrl:
            'https://cdn.pixabay.com/photo/2017/06/30/21/28/landscape-2459857_640.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
            placeholder: (context, url) =>
                Center(child: CircularProgressIndicator()),
          ),
          titleSection,
          buttonSection,
          descriptionSection
        ]));
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
