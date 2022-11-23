import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_test/recipe.dart';
import 'package:test_test/recipeScreen.dart';
import 'package:test_test/reicipeListScreen.dart';

class RecipeItem extends StatelessWidget {
  final Recipe recipe;
  const RecipeItem({Key key = const Key("any_key"), required this.recipe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  RecipeScreen(recipe: recipe),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                // var begin = Offset(0.0, 1.0);
                // var end = Offset.zero;
                // var curve = Curves.ease;
                // var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                // return SlideTransition(
                //     position: animation.drive(tween),
                //     child: child
                // );
                animation = CurvedAnimation(
                    parent: animation,
                    curve: Curves.ease
                );

                return FadeTransition(
                    opacity: animation,
                    child: child
                );
                    
              },
            ));
      },
      child: Card(
        margin: const EdgeInsets.all(8),
        elevation: 8,
        child: Row(
          children: [
            Hero(
              tag: "imageRecipe" + recipe.title,
              child: CachedNetworkImage(
                imageUrl: recipe.imageUrl,
                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(recipe.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                  Text(recipe.user,
                      style: TextStyle(color: Colors.grey[500], fontSize: 16))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
