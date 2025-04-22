import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Bernada Cafe',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildMenuCategory('Kopi Spesial', [
            _buildMenuItem('Espresso', 'Rp 25.000', 'assets/espresso.jpg'),
            _buildMenuItem('Americano', 'Rp 28.000', 'assets/americano.jpg'),
            _buildMenuItem('Cappuccino', 'Rp 32.000', 'assets/cappuccino.jpg'),
            _buildMenuItem('Latte', 'Rp 35.000', 'assets/latte.jpg'),
            _buildMenuItem('Mocha', 'Rp 38.000', 'assets/mocha.jpg'),
          ]),
          const SizedBox(height: 20),
          _buildMenuCategory('Minuman Dingin', [
            _buildMenuItem('Iced Coffee', 'Rp 30.000', 'assets/icedcoffee.jpg'),
            _buildMenuItem(
                'Frappuccino', 'Rp 40.000', 'assets/frappuccino.jpg'),
            _buildMenuItem('Cold Brew', 'Rp 35.000', 'assets/coldbrew.jpg'),
          ]),
          const SizedBox(height: 20),
          _buildMenuCategory('Makanan Ringan', [
            _buildMenuItem('Croissant', 'Rp 25.000', 'assets/croissant.jpg'),
            _buildMenuItem('Sandwich', 'Rp 35.000', 'assets/sandwich.jpg'),
            _buildMenuItem('Muffin', 'Rp 20.000', 'assets/muffin.jpg'),
          ]),
        ],
      ),
    );
  }

  Widget _buildMenuCategory(String title, List<Widget> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.brown,
          ),
        ),
        const Divider(color: Colors.brown),
        ...items,
      ],
    );
  }

  Widget _buildMenuItem(String name, String price, String imagePath) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://via.placeholder.com/100?text=$name',
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(price),
        trailing: IconButton(
          icon: const Icon(Icons.add_shopping_cart, color: Colors.brown),
          onPressed: () {
            // Aksi ketika tombol keranjang ditekan
          },
        ),
      ),
    );
  }
}
