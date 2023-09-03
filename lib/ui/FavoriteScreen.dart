import 'package:flutter/material.dart';
import 'package:text_flutter/components/BottomNavigationBars.dart';
// import 'package:text_flutter/constante/Style.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});
  static String id = '/FavoriteScreen';

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<Map<String, dynamic>> produit = [
    {
      'name': "Banana",
      'price': 16.7,
      'image': "assets/images/ban.png",
      'categorie': "Fruits",
      'isFavorite': true,
      'qte': 9
    },
    {
      'name': "Broccoli",
      'price': 16.7,
      'image': "assets/images/broccoli.png",
      'categorie': "Vegetable",
      'isFavorite': true,
      'qte': 8
    },
    {
      'name': "Oyster",
      'price': 16.7,
      'image': "assets/images/oyster.png",
      'categorie': "Fruits",
      'isFavorite': true,
      'qte': 4
    },
    {
      'name': "Banana",
      'price': 16.7,
      'image': "assets/images/ban.png",
      'categorie': "Fruits",
      'isFavorite': true,
      'qte': 9
    },
    {
      'name': "Broccoli",
      'price': 16.7,
      'image': "assets/images/broccoli.png",
      'categorie': "Vegetable",
      'isFavorite': true,
      'qte': 8
    },
    {
      'name': "Oyster",
      'price': 16.7,
      'image': "assets/images/oyster.png",
      'categorie': "Fruits",
      'isFavorite': true,
      'qte': 4
    },
    {
      'name': "Banana",
      'price': 16.7,
      'image': "assets/images/ban.png",
      'categorie': "Fruits",
      'isFavorite': true,
      'qte': 9
    },
    {
      'name': "Broccoli",
      'price': 16.7,
      'image': "assets/images/broccoli.png",
      'categorie': "Vegetable",
      'isFavorite': true,
      'qte': 8
    },
    {
      'name': "Oyster",
      'price': 16.7,
      'image': "assets/images/oyster.png",
      'categorie': "Fruits",
      'isFavorite': true,
      'qte': 4
    },
  ];
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBars(3),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Texte en haut
          Container(
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              'Favorite\'s',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          // ListView au milieu
          Expanded(
            child: Scrollbar(
              interactive: true,
              controller: _scrollController,
              radius: const Radius.circular(8),
              thickness: 10,
              thumbVisibility: true,
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 20),
                itemCount: produit.length,
                controller: _scrollController,
                itemBuilder: (context, index) {
                  var item = produit[index]; // Nombre d'éléments dans la liste
                  return ListTile(
                    style: ListTileStyle.drawer,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "${item['name']}",
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.redAccent,
                            ))
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "\$${item['price']}",
                          style: const TextStyle(
                              color: Colors.orangeAccent,
                              fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Navigator.pushNamedAndRemoveUntil(
                            //     context, HomeScreen.id, (route) => false);
                            // Action à effectuer lorsque le bouton est pressé
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            backgroundColor:
                                Colors.grey.shade100, // Couleur de fond orange
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(20.0), // Bords arrondis
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Text(
                              'Add to cart',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        image: AssetImage(
                          item['image'],
                        ),
                        fit: BoxFit.cover,
                        width: 70,
                        height: 200,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
