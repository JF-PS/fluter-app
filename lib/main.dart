import 'package:flutter/material.dart';
import 'package:test_test/recipe.dart';
import 'package:test_test/recipeScreen.dart';
import 'package:test_test/reicipeListScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      initialRoute: "/",
      onGenerateRoute: (settings) => RouterGenerator.generateRoute(settings),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => RecipeListScreen());
      case "/recipe":
        var arguments = settings.arguments;
        if (arguments != null) {
          return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => RecipeScreen(recipe: arguments as Recipe),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                animation = CurvedAnimation(curve: Curves.ease, parent: animation);
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              }
          );
        } else {
          return MaterialPageRoute(builder: (context) => Scaffold(
              appBar: AppBar(title: Text("Error"), centerTitle: true),
              body: Center(
                child: Text("Page not found"),
              )
          ));
        }
       
      default:
        return MaterialPageRoute(builder: (context) => Scaffold(
          appBar: AppBar(title: Text("Error"), centerTitle: true),
          body: Center(
            child: Text("Page not found"),
          )
        ));
    }
  }
}
