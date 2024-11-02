import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final String tokowee = 'Toko Wee';
  final String desc = 'Welcome! We do and do things for you';

  final List<HomeButtons> items = [
    HomeButtons("Lihat Daftar Produk", Icons.mood, const Color.fromARGB(255, 60, 60, 60)),
    HomeButtons("Tambah Produk", Icons.add, const Color.fromARGB(255, 50, 62, 99)),
    HomeButtons("Logout", Icons.logout, const Color.fromARGB(255, 97, 47, 44)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                'https://i.imgur.com/oTUETWx.png',
                height: 40,
                width: 120,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 29, 29, 29),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TokoWeeHeader(title: tokowee, desc: desc),
            const SizedBox(height: 325), 
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: items.map((item) {
                  return ButtonCard(item);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TokoWeeHeader extends StatelessWidget{
  final String title;
  final String desc;
  const TokoWeeHeader({super.key, required this.title, required this.desc});
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      color: const Color.fromARGB(255, 29, 29, 29),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                fontSize: 24,
                color: Color.fromARGB(255, 255, 255, 255)
                ),
            ),
            const SizedBox(height: 10.0,),
            Text(desc, 
            style: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255)
            ),)
          ],
        ),
      ),
    );
  }
}

class HomeButtons {
  final String name;
  final IconData icon;
  final Color color; // Add color property

  HomeButtons(this.name, this.icon, this.color); // Update constructor
}

class ButtonCard extends StatelessWidget {
  final HomeButtons item;

  const ButtonCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color, // Use the color from HomeButtons
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
