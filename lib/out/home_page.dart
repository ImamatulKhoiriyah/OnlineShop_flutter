import 'package:flutter/material.dart';
import 'package:online_shop/home.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 15,
        ),
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://ngepop.id/upload/media/entries/2023-07/05/444-entry-0-1688571607.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Get you\n',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'special sale\n',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'up to 50%',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              left: 16,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text('Shop Now'),
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'New Arrival',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                'see all',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          height: 250,
          child: ListView.builder(
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ProductCard(
                  image: products[index]['image'],
                  name: products[index]['name'],
                  description: products[index]['description'],
                  price: products[index]['price'],
                ),
              );
            },
          ),
        ),
        MyClickableText(),
        SizedBox(height: 10),
        Expanded(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: products2.map((product) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 12.0,
                      child: ProductCard2(
                        image: product['image'],
                        name: product['name'],
                        description: product['description'],
                        price: product['price'],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

final List<Map<String, dynamic>> products = [
  {
    'image':
        'https://dmcp.diviblock.com/wp-content/uploads/2022/04/usama-akram-kP6knT7tjn4-unsplash-300x300.jpg',
    'name': 'Nike Sport',
    'description': 'Man`s Shoes',
    'price': 'Rp.250.000',
  },
  {
    'image':
        'https://asset.kompas.com/crops/EWfJJUr_5aRJOGi9bv4FHFsZE2I=/0x182:5536x3872/750x500/data/photo/2021/09/27/61516b5309a19.jpg',
    'name': 'Crewneck',
    'description': 'White Color',
    'price': 'Rp.100.000',
  },
];

final List<Map<String, dynamic>> products2 = [
  {
    'image':
        'https://dmcp.diviblock.com/wp-content/uploads/2022/04/usama-akram-kP6knT7tjn4-unsplash-300x300.jpg',
    'name': 'Nike Sport',
    'description': 'Man`s Shoes',
    'price': 'Rp.250.000',
  },
  {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdFDjyjl6POSQW7LVKgMEarDSa3UZJkjBagtgn-ph-xB1k5-R5_GcfjRNCYG45tK8uOPE&usqp=CAU',
    'name': 'Nike Shoes',
    'description': 'Man`s Shoes',
    'price': 'Rp.100.000',
  },
  {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxicuvVOQwgZgH-_8puB1upcXIMY8nRmdOjSOrVGc3bFF9fahRrYymZfGKHTxkziMMjTg&usqp=CAU',
    'name': 'Nike Sport',
    'description': 'Man`s Shoes',
    'price': 'Rp.230.000',
  },
  {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ4MJ_--sMQJ8QQxqp9cjGnKIJtmatwEwGlGWUxYTQ7f5OBnp6OqDQ7E_xw8F7VVHnW5I&usqp=CAU',
    'name': 'Nike Shoes',
    'description': 'Man`s Shoes',
    'price': 'Rp.320.000',
  },
  {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk-dIiCEuoPbiIBagEP_nKcdqj4lek43_heYNfrgFxtLj-k4SfN5mq78EGF6oypDwJdRw&usqp=CAU',
    'name': 'Nike Sport',
    'description': 'Man`s Shoes',
    'price': 'Rp.300.000',
  },
];


class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final String price;

  const ProductCard({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: 200,
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 130,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(description),
                    SizedBox(height: 6),
                    Text(
                      '${price}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard2 extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final String price;

  const ProductCard2({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: 200,
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 130,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(description),
                    SizedBox(height: 6),
                    Text(
                      '${price}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClickableText extends StatefulWidget {
  @override
  _MyClickableTextState createState() => _MyClickableTextState();
}

class _MyClickableTextState extends State<MyClickableText> {
  bool shoesSelected = false;
  bool clothingsSelected = false;
  bool jacketSelected = false;
  bool trouserSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildClickableText('Shoes', shoesSelected),
            buildClickableText('Clothings', clothingsSelected),
            buildClickableText('Jacket', jacketSelected),
            buildClickableText('Trouser', trouserSelected),
          ],
        ),
      ],
    );
  }

  Widget buildClickableText(String text, bool isSelected) {
    return InkWell(
      onTap: () {
        setState(() {
          // Reset all selections first
          shoesSelected = false;
          clothingsSelected = false;
          jacketSelected = false;
          trouserSelected = false;

          // Set the clicked text as selected
          if (text == 'Shoes') shoesSelected = true;
          if (text == 'Clothings') clothingsSelected = true;
          if (text == 'Jacket') jacketSelected = true;
          if (text == 'Trouser') trouserSelected = true;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            decoration:
                isSelected ? TextDecoration.underline : TextDecoration.none,
          ),
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  final List<Map<String, dynamic>> favoriteProducts = [
    {
      'image':
          'https://www.ncrsport.com/img/storage/large/CJ0773-717-1.jpg?2023-01-27%2019:29:42',
      'name': 'Nike Sport',
      'description': 'Man`s Shoes',
      'price': 'Rp.250.000',
    },
    {
      'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxicuvVOQwgZgH-_8puB1upcXIMY8nRmdOjSOrVGc3bFF9fahRrYymZfGKHTxkziMMjTg&usqp=CAU',
    'name': 'Nike Sport',
    'description': 'Man`s Shoes',
    'price': 'Rp.230.000',
    },
    // Add more product entries as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: favoriteProducts.length,
      itemBuilder: (context, index) {
        return buildFavoriteProductCard(
          image: favoriteProducts[index]['image'],
          name: favoriteProducts[index]['name'],
          description: favoriteProducts[index]['description'],
          price: favoriteProducts[index]['price'],
        );
      },
    );
  }

  Widget buildFavoriteProductCard({
    required String image,
    required String name,
    required String description,
    required String price,
  }) {
    return Card(
      child: ListTile(
        leading: Image.network(image),
        title: Text(name),
        subtitle: Text(description),
        trailing: Text(price),
      ),
    );
  }
}


class PageThree extends StatefulWidget {
  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  final List<Map<String, dynamic>> cartProducts = [
    {
      'image':
        'https://dmcp.diviblock.com/wp-content/uploads/2022/04/usama-akram-kP6knT7tjn4-unsplash-300x300.jpg',
    'name': 'Nike Sport',
    'description': 'Man`s Shoes',
    'price': 'Rp.250.000',
      'quantity': 1,
      'isChecked': false,
    },
    {
      'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdFDjyjl6POSQW7LVKgMEarDSa3UZJkjBagtgn-ph-xB1k5-R5_GcfjRNCYG45tK8uOPE&usqp=CAU',
    'name': 'Nike Shoes',
    'description': 'Man`s Shoes',
    'price': 'Rp.100.000',
      'quantity': 2,
      'isChecked': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartProducts.length,
              itemBuilder: (context, index) {
                return buildCartProductCard(index);
              },
            ),
          ),
          buildSubtotalSection(),
        ],
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {},
        child: Text('Check out'),
      ),
    );
  }

  Widget buildCartProductCard(int index) {
    Map<String, dynamic> product = cartProducts[index];

    return Card(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              product['image'],
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product['name'],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 4),
                Text(product['description']),
                SizedBox(height: 4),
                Text(
                  product['price'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {
                  setState(() {
                    if (product['quantity'] > 1) {
                      product['quantity']--;
                    }
                  });
                },
              ),
              Text('${product['quantity']}'),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    product['quantity']++;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildSubtotalSection() {
    // Calculate the subtotal, delivery fee, and discount
    double subtotal = 0;
    double deliveryFee = 5000; // You can change this value as needed
    double discount = 0; // You can change this value as needed

    for (var product in cartProducts) {
      if (product['isChecked']) {
        double price = parsePriceString(product['price']);
        int quantity = product['quantity'];
        subtotal += price * quantity;
      }
    }

    double total = subtotal + deliveryFee - discount;

    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Subtotal'),
              SizedBox(height: 4),
              Text('Delivery Fee'),
              SizedBox(height: 4),
              Text('Discount'),
              SizedBox(height: 10),
              Text('Total'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Rp.600.000'),
              SizedBox(height: 4),
              Text('Rp.10.000'),
              SizedBox(height: 4),
              Text('10%'),
              SizedBox(height: 10),
              Text('Rp.549.000'),
            ],
          ),
        ],
      ),
    );
  }

  String formatCurrency(String value) {
    return value.replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]},',
    );
  }

  double parsePriceString(String price) {
    return double.parse(price.replaceAll(RegExp(r'[^\d]'), ''));
  }
}





class PageFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ProfileInfo(
          imageUrl: 'https://cdn-icons-png.flaticon.com/512/3135/3135823.png',
          name: 'Imamatul Khoiriyah',
        ),
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  final String imageUrl;
  final String name;

  ProfileInfo({required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(imageUrl),
        ),
        SizedBox(height: 20),
        Text(
          name,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
