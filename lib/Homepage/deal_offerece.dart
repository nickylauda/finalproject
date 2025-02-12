import 'package:flutter/material.dart';

class DealsOffers extends StatelessWidget {
  final List<Map<String, String>> deals = [
    {
      "image": "assets/laptop1.jpg",
      "name": "MacBook Air",
      "discount": "20% OFF",
      "price": "₹79,999"
    },
    {
      "image": "assets/phone1.jpg",
      "name": "iPhone 15",
      "discount": "15% OFF",
      "price": "₹69,999"
    },
    {
      "image": "assets/shoes10.jpg",
      "name": "Nike Running Shoes",
      "discount": "30% OFF",
      "price": "₹1,999"
    },
    {
      "image": "assets/headphone.jpg",
      "name": "Sony Headphones",
      "discount": "25% OFF",
      "price": "₹2,499"
    },
    {
      "image": "assets/watch1.jpg",
      "name": "Apple Watch",
      "discount": "10% OFF",
      "price": "₹19,999"
    },
  ];

  DealsOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ✅ Section Title
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "🔥Deals & Offers",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  // TODO: Navigate to full deals page
                },
                child: const Text("See All"),
              ),
            ],
          ),
        ),

        // ✅ Horizontal ListView of Deals
        SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: deals.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: DealCard(
                  image: deals[index]["image"]!,
                  name: deals[index]["name"]!,
                  discount: deals[index]["discount"]!,
                  price: deals[index]["price"]!,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

// ✅ Deal Card Widget
class DealCard extends StatelessWidget {
  final String image;
  final String name;
  final String discount;
  final String price;

  const DealCard({
    super.key,
    required this.image,
    required this.name,
    required this.discount,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300, blurRadius: 4, spreadRadius: 2),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ✅ Product Image with Discount Tag
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image.asset(
                  image,
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    discount,
                    style: const TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
            ],
          ),

          // ✅ Product Name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Text(
              name,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),

          // ✅ Product Price
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              price,
              style: const TextStyle(fontSize: 14, color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
