import 'package:flutter/material.dart';
import 'package:text_flutter/components/BottomNavigationBars.dart';
import 'package:text_flutter/components/haderNotification.dart';
import 'package:text_flutter/constante/Style.dart';
import 'package:text_flutter/ui/CategoriesScreen.dart';
import 'package:text_flutter/ui/DetailsItemScreen.dart';
import 'package:top_modal_sheet/top_modal_sheet.dart';
// import 'package:text_flutter/ui/ShoppingCartSreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String id = '/HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var catList = [
    "assets/images/cate1.png",
    "assets/images/cate2.png",
    "assets/images/cate3.png",
    "assets/images/cate4.png",
    "assets/images/cate1.png",
    "assets/images/cate2.png",
    "assets/images/cate3.png",
    "assets/images/cate4.png",
  ];
  List<Map<String, dynamic>> produit = [
    {
      'name': "Orange",
      'price': 16.7,
      'image': "assets/images/prod1.png",
      'categorie': "",
      'isFavorite': true,
    },
    {
      'name': "Garlic",
      'price': 9.7,
      'image': "assets/images/prod2.png",
      'categorie': "",
      'isFavorite': false,
    },
    {
      'name': "Broccoli",
      'price': 5.79,
      'image': "assets/images/prod3.png",
      'categorie': "",
      'isFavorite': false,
    },
    {
      'name': "Red onion",
      'price': 12.7,
      'image': "assets/images/prod4.png",
      'categorie': "",
      'isFavorite': true,
    },
    {
      'name': "Banana",
      'price': 61.7,
      'image': "assets/images/prod5.png",
      'categorie': "",
      'isFavorite': false,
    },
    {
      'name': "Tomato",
      'price': 13.7,
      'image': "assets/images/prod6.png",
      'categorie': "",
      'isFavorite': false,
    },
    {
      'name': "Patatos",
      'price': 10.7,
      'image': "assets/images/prod7.png",
      'categorie': "",
      'isFavorite': true,
    },
    {
      'name': "Orange",
      'price': 6.7,
      'image': "assets/images/prod8.png",
      'categorie': "",
      'isFavorite': true
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBars(0),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Good Morning',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Rafatul Islam',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Stack(
                        alignment: Alignment
                            .topRight, // Alignez le cercle en haut à droite
                        children: <Widget>[
                          // Icon(Icons.remove),
                          IconButton(
                            onPressed: () async {
                              var value = await showTopModalSheet<String?>(
                                  context, const HeaderNotification());
                              print(value.toString());
                            },
                            icon: const Icon(Icons.notifications),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 8, right: 8),
                            width: 10.0, // Largeur du cercle
                            height: 10.0, // Hauteur du cercle
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.orangeAccent, // Couleur du cercle
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 0, left: 10),
              decoration: BoxDecoration(color: Colors.grey.shade100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Categories',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, CategoriesScreen.id);
                          },
                          icon: const Icon(
                            Icons.arrow_forward,
                          ))
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: catList.map((item) {
                        return Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 8.0),
                          decoration: Styles.decContainer,
                          width: 75,
                          height: 60,
                          child: Image.asset(item),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Lasted Products',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Wrap(
                      spacing: 10.0,
                      runSpacing: 15.0,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      alignment: WrapAlignment.spaceBetween,
                      children: produit.map((item) {
                        return InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, DetailsItemScreen.id);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsItemScreen(item[
                                      'image'])), // Remplacez NewScreen() par le widget de votre nouvelle page
                            );
                            print("object");
                          },
                          child: Container(
                            decoration: Styles.decContainer1,
                            width: (MediaQuery.of(context).size.width / 2) - 13,
                            // height: 170,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width:
                                      (MediaQuery.of(context).size.width / 2) -
                                          13,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(item['image'])),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                          padding: const EdgeInsets.all(0),
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.favorite,
                                            color: (item['isFavorite'] == true)
                                                ? Colors.redAccent
                                                : Colors.grey,
                                          )),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${item['name']}",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '\$${item['price']}',
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {},
                                            child: const Text(
                                              "Add to cart",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.redAccent),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
