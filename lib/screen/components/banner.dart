import 'package:flutter/material.dart';

class BannerQrCode extends StatelessWidget {
  const BannerQrCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            '/hehe',
          );
        },
        child: Stack(children: [
          Container(
            width: double.infinity,
            height: 120,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("assets/images/banner.png"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15)),
          ),
        ]),
      ),
    );
  }
}
