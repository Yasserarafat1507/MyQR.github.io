import 'package:flutter/material.dart';
import 'package:qr_project_skl_3/screen/components/build_button.dart';
import 'package:qr_project_skl_3/screen/components/banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 83, 82, 82),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: const AssetImage('assets/images/pp.png'),
                  backgroundColor: Colors.amber.shade400,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hallo Maya',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'UI/UX Designer',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 201, 201, 201)
                            .withOpacity(0.5),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  'MYQR',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const BannerQrCode(),
          // Expanded untuk GridView
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Card(
                    color: Colors.blueAccent,
                    child: BuildButton(
                      icon: Icons.qr_code_2_sharp,
                      label: 'Create',
                      iconColor: Colors.white,
                      // backgroundColor: Colors.blueAccent,
                      onTap: () {
                        Navigator.pushNamed(context, '/create');
                      },
                    ),
                  ),
                  Card(
                    color: Colors.red,
                    child: BuildButton(
                      icon: Icons.qr_code_scanner_sharp,
                      label: 'Scan',
                      iconColor: const Color.fromARGB(255, 255, 252, 252)
                          .withOpacity(0.9),
                      // backgroundColor: Colors.red.withOpacity(0.5),
                      onTap: () {
                        Navigator.pushNamed(context, '/scan');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
