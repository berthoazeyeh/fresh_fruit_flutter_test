import 'package:flutter/material.dart';
import 'package:text_flutter/ui/HomeSreen.dart';

// ignore: must_be_immutable
class DetailsItemScreen extends StatefulWidget {
  String data;
  DetailsItemScreen(this.data, {super.key});
  static String id = '/DetailsItemScreen';

  @override
  State<DetailsItemScreen> createState() => _DetailsItemScreenState();
}

class _DetailsItemScreenState extends State<DetailsItemScreen> {
  // Valeur initiale du champ
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                // border: Border.all(color: Color.fromARGB(255, 192, 106, 106)),
                image: DecorationImage(
                  image: AssetImage(widget.data),
                  fit: BoxFit.cover,
                ),
              ),
              // child: Image.asset('assets/images/done.jpg')
            ),
          ),
          // Container(
          //   decoration: BoxDecoration(
          //       border: Border.all(color: Colors.white),
          //       image: const DecorationImage(
          //         image: AssetImage('assets/images/done.jpg'),
          //         fit: BoxFit.cover,
          //       ),
          //       borderRadius: BorderRadius.zero),
          //   height: 250,
          // ),
          Container(
            margin: const EdgeInsets.only(top: 220),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.grey.shade300,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Fresh Orange",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, HomeScreen.id, (route) => false);
                        // Action à effectuer lorsque le bouton est pressé
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.orange, // Couleur de fond orange
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20.0), // Bords arrondis
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'ADD TO CART',
                          style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "\$34",
                      style: TextStyle(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.bold),
                    ),
                    Wrap(
                      spacing: 0,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        IconButton(
                            padding: const EdgeInsets.all(
                                0.0), // Enlève tout le padding
                            onPressed: () {},
                            icon: const Icon(Icons.remove)),

                        const Text("3"),
                        IconButton(
                            padding: const EdgeInsets.all(
                                0.0), // Enlève tout le padding
                            onPressed: () {},
                            icon: const Icon(Icons.add)),
                        // TextButton(
                        //     style: ButtonStyle(),
                        //     onPressed: () {},
                        //     child: Text("+")),
                      ],
                    ),
                  ],
                ),
                const Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6.0),
                Center(
                  child: Container(
                    width: double.infinity,
                    height: 2.0, // Épaisseur du Divider
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.orange,
                          Colors.grey,
                          Colors.grey,
                        ], // Couleurs du dégradé
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
                const SizedBox(height: 6.0),
                const Text(
                  "eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam ",
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
