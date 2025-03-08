// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// class AllEyesOnThis extends StatelessWidget {
//   AllEyesOnThis({super.key});
//   final List<String> carouselImages = [
//     "assets/homes/slide1.jpg",
//     "assets/homes/slide2.jpg",
//     "assets/homes/slide3.jpg",
//     "assets/homes/slide4.jpg",
//     "assets/homes/slide5.jpg",
//     "assets/homes/slide6.jpg",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 380,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: Colors.green[100],
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: const [
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 10,
//             spreadRadius: 2,
//             offset: Offset(0, 4),
//           ),
//         ],
//       ),
//       padding: const EdgeInsets.only(top: 10, bottom: 15),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const SizedBox(height: 10),
//           const Text(
//             'All Eyes On This',
//             style: TextStyle(
//               fontSize: 22,
//               fontWeight: FontWeight.bold,
//               color: Colors.black87,
//             ),
//           ),
//           const SizedBox(height: 15),
//           CarouselSlider(
//             options: CarouselOptions(
//               height: 280,
//               autoPlay: true,
//               enlargeCenterPage: true,
//               autoPlayInterval: const Duration(seconds: 3),
//               aspectRatio: 16 / 9,
//               viewportFraction: 0.8,
//             ),
//             items: carouselImages.map((imagePath) {
//               return ClipRRect(
//                 borderRadius: BorderRadius.circular(15),
//                 child: Image.asset(
//                   imagePath,
//                   fit: BoxFit.cover,
//                   width: MediaQuery.of(context).size.width,
//                 ),
//               );
//             }).toList(),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_bucket/product_list/list_carousel.dart';

class AllEyesOnThis extends StatelessWidget {
  AllEyesOnThis({super.key});

  final List<String> carouselImages = [
    "assets/homes/slide1.jpg",
    "assets/homes/slide2.jpg",
    "assets/homes/slide3.jpg",
    "assets/homes/slide4.jpg",
    "assets/homes/slide5.jpg",
    "assets/homes/slide6.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.only(top: 10, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          const Text(
            'All Eyes On This',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 15),
          CarouselSlider(
            options: CarouselOptions(
              height: 280,
              autoPlay: true,
              enlargeCenterPage: true,
              autoPlayInterval: const Duration(seconds: 3),
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
            ),
            items: carouselImages.map((imagePath) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListCarousel(),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
