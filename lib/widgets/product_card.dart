import 'package:flutter/material.dart';
import 'package:tokowee_mobile/screens/productform.dart';

class HomeButtons {
  final String name;
  final IconData icon;
  final Color color;

  HomeButtons(this.name, this.icon, this.color);
}

class ButtonCard extends StatelessWidget {
  final HomeButtons item;

  const ButtonCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("You pressed the ${item.name} button!"))
            );
          if (item.name == "Add Products") {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductForm()));
          }
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 35.0,
                ),
                const SizedBox(height: 8),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}