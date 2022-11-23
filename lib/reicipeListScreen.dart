import 'package:flutter/material.dart';
import 'package:test_test/recipe.dart';
import 'package:test_test/recipeItem.dart';

class RecipeListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RecipeListScreenState();
  }
}

class RecipeListScreenState extends State<RecipeListScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Recipe> recipes = [
      Recipe(
          "Wood Spot",
          "Par JF-PS",
          "https://cdn.pixabay.com/photo/2017/06/30/21/28/landscape-2459857_640.jpg",
          "Lorem ipsum dolor sit amet. In perspiciatis internos non reiciendis deleniti aut repudiandae nihil et mollitia adipisci. Et asperiores similique quo alias tenetur ut velit repellendus sed numquam veniam ex eligendi molestias. Id facilis aperiam et earum velit aut minus omnis et exercitationem beatae At similique optio. Eos natus accusamus non vero ipsam qui galisum nemo quo voluptates distinctio est provident galisum est voluptas voluptatem. 33 molestias consequatur vel unde voluptates aut eaque nisi sed dolor facere ab odit ipsa aut temporibus dignissimos. Non molestiae enim ut sunt nemo et dignissimos nihil ab galisum molestiae. Sed dolorem iusto quo voluptas doloribus aut omnis consequatur aut voluptas alias nam modi sint. Ut autem suscipit in aperiam quidem ab aliquam galisum et consequuntur saepe. Et vitae vitae et repudiandae architecto qui officia nihil et nostrum quia ut voluptatem inventore. In rerum odit est dicta aspernatur est quibusdam blanditiis ea accusamus nihil a ipsum consequatur et ratione minima et alias aperiam? Ex dolores neque qui quos voluptates non labore Quis vel quasi fuga. Ut velit possimus eum quia distinctio et alias perferendis. Et nesciunt recusandae 33 quos voluptatem 33 galisum quas est facere unde qui totam perspiciatis ut voluptate tenetur. Ut rerum tempora ea optio voluptas qui autem quia. Aut doloribus facere id rerum quae est inventore eaque rem error excepturi sit magnam minima qui fuga reiciendis. Ex voluptatem vero qui tempore illum non quos modi sit optio recusandae eum quos voluptas aut atque nisi qui vero quia. Ut voluptatem asperiores et quia sapiente et inventore autem qui consequatur magni aut sint nihil ut quia fuga eum tempora minima. Et sint amet id dolor odit vel enim quia qui dignissimos magni vel itaque culpa cum dignissimos officia. Ut atque odio At ullam dolor eos iure inventore est laboriosam amet. Qui doloremque esse aut Quis libero a natus modi. Et praesentium expedita cum libero ipsam qui asperiores perferendis aut quod autem eos galisum enim non reiciendis itaque aut nesciunt fuga. Qui reprehenderit cumque non praesentium expedita et dolor quasi sit voluptas adipisci. Nam dolorum voluptate est porro quia eos architecto debitis qui facilis internos qui obcaecati velit qui nemo itaque. Ad corporis soluta qui aspernatur totam a repellat voluptas cum omnis harum in optio deleniti in maxime blanditiis aut delectus ipsam.",
          false,
          50),
      Recipe(
          "Wood Mountain",
          "Par JF-PS",
          "https://cdn.pixabay.com/photo/2017/06/30/21/28/landscape-2459857_640.jpg",
          "Lorem ipsum dolor sit amet. In perspiciatis internos non reiciendis deleniti aut repudiandae nihil et mollitia adipisci. Et asperiores similique quo alias tenetur ut velit repellendus sed numquam veniam ex eligendi molestias. Id facilis aperiam et earum velit aut minus omnis et exercitationem beatae At similique optio. Eos natus accusamus non vero ipsam qui galisum nemo quo voluptates distinctio est provident galisum est voluptas voluptatem. 33 molestias consequatur vel unde voluptates aut eaque nisi sed dolor facere ab odit ipsa aut temporibus dignissimos. Non molestiae enim ut sunt nemo et dignissimos nihil ab galisum molestiae. Sed dolorem iusto quo voluptas doloribus aut omnis consequatur aut voluptas alias nam modi sint. Ut autem suscipit in aperiam quidem ab aliquam galisum et consequuntur saepe. Et vitae vitae et repudiandae architecto qui officia nihil et nostrum quia ut voluptatem inventore. In rerum odit est dicta aspernatur est quibusdam blanditiis ea accusamus nihil a ipsum consequatur et ratione minima et alias aperiam? Ex dolores neque qui quos voluptates non labore Quis vel quasi fuga. Ut velit possimus eum quia distinctio et alias perferendis. Et nesciunt recusandae 33 quos voluptatem 33 galisum quas est facere unde qui totam perspiciatis ut voluptate tenetur. Ut rerum tempora ea optio voluptas qui autem quia. Aut doloribus facere id rerum quae est inventore eaque rem error excepturi sit magnam minima qui fuga reiciendis. Ex voluptatem vero qui tempore illum non quos modi sit optio recusandae eum quos voluptas aut atque nisi qui vero quia. Ut voluptatem asperiores et quia sapiente et inventore autem qui consequatur magni aut sint nihil ut quia fuga eum tempora minima. Et sint amet id dolor odit vel enim quia qui dignissimos magni vel itaque culpa cum dignissimos officia. Ut atque odio At ullam dolor eos iure inventore est laboriosam amet. Qui doloremque esse aut Quis libero a natus modi. Et praesentium expedita cum libero ipsam qui asperiores perferendis aut quod autem eos galisum enim non reiciendis itaque aut nesciunt fuga. Qui reprehenderit cumque non praesentium expedita et dolor quasi sit voluptas adipisci. Nam dolorum voluptate est porro quia eos architecto debitis qui facilis internos qui obcaecati velit qui nemo itaque. Ad corporis soluta qui aspernatur totam a repellat voluptas cum omnis harum in optio deleniti in maxime blanditiis aut delectus ipsam.",
          false,
          50),
      Recipe(
          "Test 1",
          "Par JF-PS",
          "https://cdn.pixabay.com/photo/2017/06/30/21/28/landscape-2459857_640.jpg",
          "Lorem ipsum dolor sit amet. In perspiciatis internos non reiciendis deleniti aut repudiandae nihil et mollitia adipisci. Et asperiores similique quo alias tenetur ut velit repellendus sed numquam veniam ex eligendi molestias. Id facilis aperiam et earum velit aut minus omnis et exercitationem beatae At similique optio. Eos natus accusamus non vero ipsam qui galisum nemo quo voluptates distinctio est provident galisum est voluptas voluptatem. 33 molestias consequatur vel unde voluptates aut eaque nisi sed dolor facere ab odit ipsa aut temporibus dignissimos. Non molestiae enim ut sunt nemo et dignissimos nihil ab galisum molestiae. Sed dolorem iusto quo voluptas doloribus aut omnis consequatur aut voluptas alias nam modi sint. Ut autem suscipit in aperiam quidem ab aliquam galisum et consequuntur saepe. Et vitae vitae et repudiandae architecto qui officia nihil et nostrum quia ut voluptatem inventore. In rerum odit est dicta aspernatur est quibusdam blanditiis ea accusamus nihil a ipsum consequatur et ratione minima et alias aperiam? Ex dolores neque qui quos voluptates non labore Quis vel quasi fuga. Ut velit possimus eum quia distinctio et alias perferendis. Et nesciunt recusandae 33 quos voluptatem 33 galisum quas est facere unde qui totam perspiciatis ut voluptate tenetur. Ut rerum tempora ea optio voluptas qui autem quia. Aut doloribus facere id rerum quae est inventore eaque rem error excepturi sit magnam minima qui fuga reiciendis. Ex voluptatem vero qui tempore illum non quos modi sit optio recusandae eum quos voluptas aut atque nisi qui vero quia. Ut voluptatem asperiores et quia sapiente et inventore autem qui consequatur magni aut sint nihil ut quia fuga eum tempora minima. Et sint amet id dolor odit vel enim quia qui dignissimos magni vel itaque culpa cum dignissimos officia. Ut atque odio At ullam dolor eos iure inventore est laboriosam amet. Qui doloremque esse aut Quis libero a natus modi. Et praesentium expedita cum libero ipsam qui asperiores perferendis aut quod autem eos galisum enim non reiciendis itaque aut nesciunt fuga. Qui reprehenderit cumque non praesentium expedita et dolor quasi sit voluptas adipisci. Nam dolorum voluptate est porro quia eos architecto debitis qui facilis internos qui obcaecati velit qui nemo itaque. Ad corporis soluta qui aspernatur totam a repellat voluptas cum omnis harum in optio deleniti in maxime blanditiis aut delectus ipsam.",
          false,
          50),
      Recipe(
          "Test 2",
          "Par JF-PS",
          "https://www.antoon.fr/wp-content/uploads/2022/03/norvege-que-voir-que-faire.jpg",
          "Lorem ipsum dolor sit amet. In perspiciatis internos non reiciendis deleniti aut repudiandae nihil et mollitia adipisci. Et asperiores similique quo alias tenetur ut velit repellendus sed numquam veniam ex eligendi molestias. Id facilis aperiam et earum velit aut minus omnis et exercitationem beatae At similique optio. Eos natus accusamus non vero ipsam qui galisum nemo quo voluptates distinctio est provident galisum est voluptas voluptatem. 33 molestias consequatur vel unde voluptates aut eaque nisi sed dolor facere ab odit ipsa aut temporibus dignissimos. Non molestiae enim ut sunt nemo et dignissimos nihil ab galisum molestiae. Sed dolorem iusto quo voluptas doloribus aut omnis consequatur aut voluptas alias nam modi sint. Ut autem suscipit in aperiam quidem ab aliquam galisum et consequuntur saepe. Et vitae vitae et repudiandae architecto qui officia nihil et nostrum quia ut voluptatem inventore. In rerum odit est dicta aspernatur est quibusdam blanditiis ea accusamus nihil a ipsum consequatur et ratione minima et alias aperiam? Ex dolores neque qui quos voluptates non labore Quis vel quasi fuga. Ut velit possimus eum quia distinctio et alias perferendis. Et nesciunt recusandae 33 quos voluptatem 33 galisum quas est facere unde qui totam perspiciatis ut voluptate tenetur. Ut rerum tempora ea optio voluptas qui autem quia. Aut doloribus facere id rerum quae est inventore eaque rem error excepturi sit magnam minima qui fuga reiciendis. Ex voluptatem vero qui tempore illum non quos modi sit optio recusandae eum quos voluptas aut atque nisi qui vero quia. Ut voluptatem asperiores et quia sapiente et inventore autem qui consequatur magni aut sint nihil ut quia fuga eum tempora minima. Et sint amet id dolor odit vel enim quia qui dignissimos magni vel itaque culpa cum dignissimos officia. Ut atque odio At ullam dolor eos iure inventore est laboriosam amet. Qui doloremque esse aut Quis libero a natus modi. Et praesentium expedita cum libero ipsam qui asperiores perferendis aut quod autem eos galisum enim non reiciendis itaque aut nesciunt fuga. Qui reprehenderit cumque non praesentium expedita et dolor quasi sit voluptas adipisci. Nam dolorum voluptate est porro quia eos architecto debitis qui facilis internos qui obcaecati velit qui nemo itaque. Ad corporis soluta qui aspernatur totam a repellat voluptas cum omnis harum in optio deleniti in maxime blanditiis aut delectus ipsam.",
          false,
          50),
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("Mes spots"),
        ),
        body: ListView.builder(
            itemCount: recipes.length,
            itemBuilder: (context, index) {
              final recipe = recipes[index];
              return Dismissible(
                  key: Key(recipe.title),
                  onDismissed: (direction) {
                    setState(() {
                      recipes.removeAt(index);
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("${recipe.title} supprimé"))
                    );
                  },
                  background: Container(color: Colors.red),
                  child: RecipeItem(recipe: recipe)
              );
            }));
  }
}
