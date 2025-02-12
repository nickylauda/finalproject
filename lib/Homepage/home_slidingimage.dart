import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_bucket/Homepage/home_product.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AutoSlidingImages extends StatefulWidget {
  const AutoSlidingImages({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AutoSlidingImagesState createState() => _AutoSlidingImagesState();
}

class _AutoSlidingImagesState extends State<AutoSlidingImages> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> _imageUrls = [
    "assets/shoes.jpg",
    "assets/shoes2.jpg",
    "assets/shoes3.jpg",
    "assets/shoes4.jpg",
    "assets/phone.jpg",
    "assets/phone2.jpg",
    "assets/phone3.jpg",
    "assets/phone4.jpg",
  ];

  final List<Map<String, dynamic>> _textAndIcons = [
    {"text": "Apply Now", "icon": Icons.arrow_forward},
    {"text": "Register Today", "icon": Icons.edit},
    {"text": "Join Us", "icon": Icons.group},
    {"text": "Explore More", "icon": Icons.explore},
    {"text": "Buy Now", "icon": Icons.shopping_cart},
    {"text": "Get Started", "icon": Icons.play_arrow},
    {"text": "Learn More", "icon": Icons.info},
    {"text": "Subscribe", "icon": Icons.subscriptions},
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      setState(() {
        _currentPage = (_currentPage + 1) % _imageUrls.length;
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 220, // Image + Button Height
          width: double.infinity,
          child: PageView.builder(
            controller: _pageController,
            itemCount: _imageUrls.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ImageCard(
                  imageUrl: _imageUrls[index],
                  text: _textAndIcons[index]["text"],
                  icon: _textAndIcons[index]["icon"],
                ),
              );
            },
          ),
        ),
        SmoothPageIndicator(
          controller: _pageController,
          count: _imageUrls.length,
          effect: const ExpandingDotsEffect(
            activeDotColor: Colors.blue,
            dotColor: Colors.grey,
            dotHeight: 5,
            dotWidth: 10,
            expansionFactor: 4,
            spacing: 8,
          ),
        )
      ],
    );
  }
}

class ImageCard extends StatelessWidget {
  final String imageUrl;
  final String text;
  final IconData icon;

  const ImageCard({
    super.key,
    required this.imageUrl,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            // Navigate to the next page with image and text data
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeProduct(),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15), topLeft: Radius.circular(15)),
            child: Image.asset(
              imageUrl,
              height: 170,
              width: 340,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 40,
          width: 340,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeProduct(),
                    ),
                  );
                },
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(icon, color: Colors.white, size: 18),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Detail Page (Navigates to this page when an image is clicked)
class DetailPage extends StatelessWidget {
  final String imageUrl;
  final String text;

  const DetailPage({super.key, required this.imageUrl, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(text)), // Title from selected item
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imageUrl,
                height: 300,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              text,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
