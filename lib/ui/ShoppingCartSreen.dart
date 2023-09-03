import 'package:flutter/material.dart';
import 'package:text_flutter/components/BottomNavigationBars.dart';
// import 'package:text_flutter/constante/Style.dart';
import 'package:text_flutter/ui/orderPocessScreen.dart';

class ShoppingCartSreen extends StatefulWidget {
  const ShoppingCartSreen({super.key});
  static String id = '/ShoppingCartSreen';

  @override
  State<ShoppingCartSreen> createState() => _ShoppingCartSreenState();
}

class _ShoppingCartSreenState extends State<ShoppingCartSreen> {
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
      bottomNavigationBar: BottomNavigationBars(2),
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
              'Item Details',
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
                itemCount: produit.length,
                controller: _scrollController,
                itemBuilder: (context, index) {
                  var item = produit[index]; // Nombre d'éléments dans la liste
                  return ListTile(
                    // leading: // Image à gauche
                    title: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 80.0, // Largeur fixe
                            height: 100.0,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    10.0), // Bords arrondis
                                child: Image.asset(
                                  item['image'],
                                  fit: BoxFit.cover,
                                )),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          ("${item['categorie']}")
                                              .toUpperCase(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.grey,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "${item['name']}",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "\$${item['price']}",
                                          style: const TextStyle(
                                              color: Colors.orangeAccent,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(
                                              0.0), // Enlève tout le padding
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade100,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Wrap(
                                            spacing: 0,
                                            alignment: WrapAlignment.center,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.center,
                                            children: [
                                              IconButton(
                                                  padding: const EdgeInsets.all(
                                                      0.0), // Enlève tout le padding
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.remove,
                                                    color: Colors.grey,
                                                  )),
                                              Text("${item['qte']}",
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              IconButton(
                                                  padding: const EdgeInsets.all(
                                                      0.0), // Enlève tout le padding
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.add,
                                                    color: Colors.grey,
                                                  )),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          // Container en bas
          Container(
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
            padding: const EdgeInsets.all(16.0),
            // color: Colors.blue, // Couleur de fond du conteneur
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Center(
                  child: Text(
                    'Total \$8',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const OrderProcessScreen()), // Remplacez NewScreen() par le widget de votre nouvelle page
                    );

                    // Action à effectuer lorsque le bouton est pressé
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.orangeAccent, // Couleur de fond orange
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20.0), // Bords arrondis
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'PLACE ORDER',
                      style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
