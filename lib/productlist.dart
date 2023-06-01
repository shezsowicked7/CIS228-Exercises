import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'productdetails.dart';

import 'app_drawer.dart'; // import your Drawer class

class ProductList extends MyApp {
  final List<Map<String, String>> products = [
    {
      'name': 'T-Shirt',
      'description':
          'A t-shirt is a type of shirt that is typically made of soft, lightweight fabric such as cotton or a cotton blend. It usually has short sleeves and a round neckline, although some t-shirts may have a V-neck or other types of necklines. T-shirts can come in a variety of colors and patterns, ranging from solid colors to graphic prints.',
      'price': '\₱399.00',
      'image': '../assets/tshirt.png'
    },
    {
      'name': 'Jeans',
      'description':
          'Jeans are a type of pants that are made of denim fabric. They are a staple of casual wear and are known for their durability, comfort, and versatility. Jeans typically have a button or zipper fly, and may also have belt loops and pockets.',
      'price': '\₱699.00',
      'image': '../assets/jeans.png'
    },
    {
      'name': 'Jacket',
      'description':
          'A jacket is a type of outerwear that is designed to provide warmth and protection from the elements. Jackets come in many different styles, from lightweight windbreakers to heavy-duty parkas, and can be made from a variety of materials, including cotton, leather, and synthetic fabrics.',
      'price': '\₱999.00',
      'image': '../assets/jacket.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        backgroundColor: Colors.purple,
      ),
      drawer: const MyDrawer(), // use your Drawer class here
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(products[index]['image']!),
            title: Text(products[index]['name']!),
            subtitle: Text(products[index]['description']!),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(products[index]['price']!),
                const SizedBox(width: 10),
                IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  onPressed: () {
                    // TODO: Implement add to cart functionality.
                  },
                ),
                IconButton(
                  icon: Icon(Icons.payment),
                  onPressed: () {
                    // TODO: Implement buy functionality.
                  },
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetails(product: products[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
