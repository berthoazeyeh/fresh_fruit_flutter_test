import 'package:flutter/material.dart';
import 'package:text_flutter/ui/CategoriesScreen.dart';
import 'package:text_flutter/ui/DetailsItemScreen.dart';
import 'package:text_flutter/ui/FavoriteScreen.dart';
import 'package:text_flutter/ui/HomeSreen.dart';
import 'package:text_flutter/ui/LogInScreen.dart';
import 'package:text_flutter/ui/ProfileScreen.dart';
// import 'package:text_flutter/ui/OndoardingSreen.dart';
import 'package:text_flutter/ui/ShoppingCartSreen.dart';
import 'package:text_flutter/ui/SignInScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: LogInScreen.id,
        routes: {
          HomeScreen.id: (context) => const HomeScreen(),
          ShoppingCartSreen.id: (context) => const ShoppingCartSreen(),
          FavoriteScreen.id: (context) => const FavoriteScreen(),
          CategoriesScreen.id: (context) => const CategoriesScreen(),
          ProfileScreen.id: (context) => const ProfileScreen(),
          SignInScreen.id: (context) => const SignInScreen(),
          LogInScreen.id: (context) => const LogInScreen(),
          DetailsItemScreen.id: (context) =>
              DetailsItemScreen("assets/images/done.jpg"),
        }
        // home: SignInScreen(),
        );
  }
}
