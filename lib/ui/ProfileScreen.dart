import 'package:flutter/material.dart';
import 'package:text_flutter/components/BottomNavigationBars.dart';
import 'package:text_flutter/ui/HomeSreen.dart';
import 'package:text_flutter/ui/LogInScreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  static String id = '/ProfileScreen';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Utilisateur'),
      ),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.pushNamedAndRemoveUntil(
              context, HomeScreen.id, (route) => false);
          return true;
        },
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage(
                        'assets/images/background.png'), // Remplacez par votre image de profil
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Nom de l\'utilisateur',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    ' utilisateur@example.com', // Remplacez par l'adresse email de l'utilisateur
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Action à effectuer lorsque le bouton est pressé (par exemple, modifier le profil)
                    },
                    child: const Text('Modifier le profil'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Action à effectuer lorsque le bouton est pressé (par exemple, modifier le profil)
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        LogInScreen.id,
                        (route) => false,
                        arguments: {
                          'onBoad': false,
                        },
                      );
                    },
                    child: const Text('Log Out'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBars(4),
    );
  }
}
