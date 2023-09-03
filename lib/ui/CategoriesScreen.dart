import 'package:flutter/material.dart';
import 'package:text_flutter/components/BottomNavigationBars.dart';
import 'package:text_flutter/constante/Style.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});
  static String id = '/CategoriesScreen';

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<Map<String, dynamic>> produit = [
    {'name': "Fruits", 'image': "assets/images/cat1.png"},
    {'name': "Vegetables", 'image': "assets/images/cat2.png"},
    {'name': "Mushroom", 'image': "assets/images/cat3.png"},
    {'name': "Dairy", 'image': "assets/images/cat4.png"},
    {'name': "Oats", 'image': "assets/images/cat5.png"},
    {'name': "Bread", 'image': "assets/images/cat6.png"},
    {'name': "Rice", 'image': "assets/images/cat7.png"},
    {'name': "Egg", 'image': "assets/images/cat8.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Text(
          "Categories",
          style: TextStyle(fontSize: 30.0),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(top: 0),
          child: Wrap(
            children: [
              Center(
                child: Wrap(
                    spacing: 15.0,
                    runSpacing: 15.0,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.spaceBetween,
                    children: produit.map((item) {
                      return Container(
                        // margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 8.0),
                        decoration: Styles.decContainer,
                        width: (MediaQuery.of(context).size.width / 2) - 33,
                        // height: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              width: 80,
                              // width: (MediaQuery.of(context).size.width / 2) - 50,
                              fit: BoxFit.contain,
                              image: AssetImage(item['image']),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "${item['name']}",
                              style: const TextStyle(
                                  color: Colors.orangeAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            )
                          ],
                        ),
                      );
                    }).toList()),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBars(1),
    );
  }
}
