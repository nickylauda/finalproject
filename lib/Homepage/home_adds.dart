// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class PageViewScreen extends StatefulWidget {
//   const PageViewScreen({super.key});

//   @override
//   State<PageViewScreen> createState() => _PageViewScreenState();
// }

// class _PageViewScreenState extends State<PageViewScreen> {
//   final PageController _pageController = PageController();
//   int _currentPage = 0; // Keeps track of the current page
//   Timer? _autoScrollTimer;

//   final List<String> images = [
//     "assets/homes/bankads2.jpg",
//     "assets/homes/bankads1.jpg",
//     //"assets/homes/bankads3.jpg",
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _startAutoScroll();
//   }

//   void _startAutoScroll() {
//     _autoScrollTimer = Timer.periodic(const Duration(seconds: 3), (timer) {
//       if (_pageController.hasClients) {
//         int nextPage = (_currentPage + 1) % images.length;
//         _pageController.animateToPage(
//           nextPage,
//           duration: const Duration(milliseconds: 600),
//           curve: Curves.easeInOut,
//         );
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _autoScrollTimer?.cancel();
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           height: 120,
//           child: PageView.builder(
//             controller: _pageController,
//             itemCount: images.length,
//             onPageChanged: (index) {
//               setState(() {
//                 _currentPage = index;
//               });
//             },
//             itemBuilder: (context, index) {
//               return Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(10),
//                   child: Image.asset(images[index], fit: BoxFit.cover),
//                 ),
//               );
//             },
//           ),
//         ),
//         const SizedBox(height: 5),
//         SmoothPageIndicator(
//           controller: _pageController,
//           count: images.length,
//           effect: const WormEffect(
//             activeDotColor: Colors.blue,
//             dotColor: Colors.grey,
//             dotHeight: 8,
//             dotWidth: 8,
//           ),
//         ),
//         const SizedBox(height: 20),
//       ],
//     );
//   }
// }

// page indicator inside the image

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class PageViewScreen extends StatefulWidget {
//   const PageViewScreen({super.key});

//   @override
//   State<PageViewScreen> createState() => _PageViewScreenState();
// }

// class _PageViewScreenState extends State<PageViewScreen> {
//   final PageController _pageController = PageController();
//   int _currentPage = 0; // Keeps track of the current page
//   Timer? _autoScrollTimer;

//   final List<String> images = [
//     "assets/homes/bankads2.jpg",
//     "assets/homes/bankads1.jpg",
//     //"assets/homes/bankads3.jpg",
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _startAutoScroll();
//   }

//   void _startAutoScroll() {
//     _autoScrollTimer = Timer.periodic(const Duration(seconds: 3), (timer) {
//       if (_pageController.hasClients) {
//         int nextPage = (_currentPage + 1) % images.length;
//         _pageController.animateToPage(
//           nextPage,
//           duration: const Duration(milliseconds: 600),
//           curve: Curves.easeInOut,
//         );
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _autoScrollTimer?.cancel();
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 120, // Increase height to fit the indicator inside the image
//       child: Stack(
//         alignment: Alignment.bottomCenter,
//         children: [
//           // PageView (Slideshow)
//           PageView.builder(
//             controller: _pageController,
//             itemCount: images.length,
//             onPageChanged: (index) {
//               setState(() {
//                 _currentPage = index;
//               });
//             },
//             itemBuilder: (context, index) {
//               return Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(10),
//                   child: Image.asset(images[index], fit: BoxFit.cover),
//                 ),
//               );
//             },
//           ),

//           //  Positioned Page Indicator
//           Positioned(
//             bottom: 20, // Adjust the position inside the image
//             child: SmoothPageIndicator(
//               controller: _pageController,
//               count: images.length,
//               effect: const WormEffect(
//                 activeDotColor: Colors.blue,
//                 dotColor: Colors.white, // White dots for better visibility
//                 dotHeight: 8,
//                 dotWidth: 8,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//manuel scroll page......
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class AdsPageViewScreen extends StatefulWidget {
//   const AdsPageViewScreen({super.key});

//   @override
//   State<AdsPageViewScreen> createState() => _AdsPageViewScreenState();
// }

// class _AdsPageViewScreenState extends State<AdsPageViewScreen> {
//   final PageController _pageController = PageController();

//   final List<String> images = [
//     "assets/homes/bankads2.jpg",
//     "assets/homes/bankads1.jpg",
//     "assets/homes/bankads3.jpg",
//     "assets/homes/banner1.jpg",
//   ];

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           height: 130,
//           child: PageView.builder(
//             controller: _pageController,
//             itemCount: images.length,
//             itemBuilder: (context, index) {
//               return Padding(
//                 padding: const EdgeInsets.only(top: 20, right: 8, left: 8),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(15),
//                   child: Image.asset(images[index], fit: BoxFit.cover),
//                 ),
//               );
//             },
//           ),
//         ),
//         const SizedBox(height: 10),

//         //  Smooth Page Indicator
//         SmoothPageIndicator(
//           controller: _pageController,
//           count: images.length,
//           effect: const WormEffect(
//             activeDotColor: Colors.blue,
//             dotColor: Colors.grey,
//             dotHeight: 6,
//             dotWidth: 6,
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:my_bucket/product_list/list_adds.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AdsPageViewScreen extends StatefulWidget {
  const AdsPageViewScreen({super.key});

  @override
  State<AdsPageViewScreen> createState() => _AdsPageViewScreenState();
}

class _AdsPageViewScreenState extends State<AdsPageViewScreen> {
  final PageController _pageController = PageController();

  final List<String> images = [
    "assets/homes/bankads2.jpg",
    "assets/homes/bankads1.jpg",
    "assets/homes/bankads3.jpg",
    "assets/homes/banner1.jpg",
  ];

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
          height: 130,
          child: PageView.builder(
            controller: _pageController,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // Navigate to a new screen (Replace with your Ad Details Page)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListAdds(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, right: 8, left: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(images[index], fit: BoxFit.cover),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10),

        // Smooth Page Indicator
        SmoothPageIndicator(
          controller: _pageController,
          count: images.length,
          effect: const WormEffect(
            activeDotColor: Colors.blue,
            dotColor: Colors.grey,
            dotHeight: 6,
            dotWidth: 6,
          ),
        ),
      ],
    );
  }
}
