import 'package:flutter/material.dart';
import 'package:text_flutter/networking/ApiClient.dart';
import 'package:text_flutter/ui/HomeSreen.dart';
import 'package:text_flutter/ui/LogInScreen.dart';
// import 'package:text_flutter/ui/OndoardingSreen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  static String id = '/SignInScreen';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _passwordVisible = false;
  final TextEditingController _textFieldController = TextEditingController(
      text: 'rafatul@gmail.com'); // Valeur initiale du champ
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset('assets/images/done.jpg'),
          ),
          Container(
            margin: const EdgeInsets.only(top: 300),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(20), left: Radius.circular(20)),
              color: Colors.white,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Sign In",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  style: const TextStyle(height: 1),
                  controller: _textFieldController,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(20.0), // Bordures arrondies
                      borderSide: const BorderSide(
                          color: Colors.grey), // Couleur de la bordure grise
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  style: const TextStyle(height: 1),

                  initialValue: "1234",
                  onChanged: (value) {},
                  // controller: _passwordController,
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(20.0), // Bordures arrondies
                      borderSide: const BorderSide(
                          color: Colors.grey), // Couleur de la bordure grise
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    ApiClient apiService =
                        ApiClient(baseUrl: 'https://votre-api.com');
                    print(apiService);

                    Navigator.pushNamedAndRemoveUntil(
                        context, HomeScreen.id, (route) => false);
                    // Action à effectuer lorsque le bouton est pressé
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange, // Couleur de fond orange
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20.0), // Bords arrondis
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("You have an account"),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            LogInScreen.id,
                            (route) => false,
                            arguments: {
                              'onBoad': false,
                            },
                          );
                        },
                        child: const Text("Log In"))
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:top_modal_sheet/top_modal_sheet.dart';

// class SignInScreen extends StatefulWidget {
//   const SignInScreen({super.key});
//   static String id = '/SignInScreen';

//   @override
//   State<SignInScreen> createState() => _SignInScreenState();
// }

// class _SignInScreenState extends State<SignInScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text("TopModalSheet sample"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//         child: Column(
//           children: <Widget>[
//             Expanded(
//                 child: Center(
//               child: Text(
//                 "_topModalData",
//                 style: TextStyle(fontSize: 30),
//               ),
//             )),
//             MaterialButton(
//               color: Colors.white,
//               elevation: 5,
//               child: const Text("Show TopModal 1"),
//               onPressed: () async {
//                 var value =
//                     await showTopModalSheet<String?>(context, DumyModal());
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DumyModal extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: 20),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[
//           const Text("Choose Wisely",
//               style: TextStyle(color: Colors.teal, fontSize: 20),
//               textAlign: TextAlign.center),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Expanded(
//                   child: Padding(
//                 padding: const EdgeInsets.only(left: 10, right: 5),
//                 child: OutlinedButton(
//                   child: Column(
//                     children: [
//                       FlutterLogo(
//                         size: MediaQuery.of(context).size.height * .15,
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(vertical: 2),
//                         child: Text("CF Cruz Azul"),
//                       )
//                     ],
//                   ),
//                   onPressed: () {
//                     Navigator.of(context).pop("CF Cruz Azul");
//                   },
//                 ),
//               )),
//               Expanded(
//                   child: Padding(
//                 padding: const EdgeInsets.only(left: 5, right: 10),
//                 child: OutlinedButton(
//                   child: Column(
//                     children: [
//                       FlutterLogo(
//                         size: MediaQuery.of(context).size.height * .15,
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(vertical: 2),
//                         child: Text("Monarcas FC"),
//                       )
//                     ],
//                   ),
//                   onPressed: () {
//                     Navigator.of(context).pop("Monarcas FC");
//                   },
//                 ),
//               ))
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
