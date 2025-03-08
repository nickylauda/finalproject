// import 'package:flutter/material.dart';
// import 'package:my_bucket/Homepage/accesorize.dart';
// import 'package:my_bucket/Homepage/carousel_slider.dart';

// import 'package:my_bucket/Homepage/home_category.dart';
// import 'package:my_bucket/Homepage/home_trendingpro.dart';
// import 'package:my_bucket/Homepage/appbar.dart';
// import 'package:my_bucket/Homepage/deal_offerece.dart';

// import 'package:my_bucket/Homepage/home_recomenteditem.dart';
// import 'package:my_bucket/Homepage/home_slidingimage.dart';
// import 'package:my_bucket/Homepage/masonrygrid.dart';

// import 'package:my_bucket/Homepage/new_arrivals.dart';
// import 'package:my_bucket/Homepage/premium.dart';

// import 'package:my_bucket/Homepage/sponsored.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueGrey[50],
//       body: NestedScrollView(
//         headerSliverBuilder: (context, innerBoxIsScrolled) {
//           return [
//             const MyAppBar(), // Custom App Bar
//           ];
//         },
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               const AutoSlidingImages(),
//               const SizedBox(height: 20),
//               CategoriesList(),
//               const SizedBox(height: 10),
//               RecommendedItems(),
//               const SizedBox(height: 15),
//               TrendingProducts(),
//               const SizedBox(height: 10),
//               const NewArrivals(),
//               const SizedBox(height: 10),
//               DealsOffers(),
//               const SizedBox(height: 10),
//               const SponsoredSection(),
//               const SizedBox(height: 10),
//               PremiumList(),
//               const SizedBox(height: 15),
//               const AccesorizeOn(),
//               const SizedBox(height: 15),
//               AllEyesOnThis(),
//               const SizedBox(height: 15),
//               MasonryGridViewWidget(),
//               const SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:my_bucket/Homepage/home_accesorize.dart';
import 'package:my_bucket/Homepage/home_adds.dart';

import 'package:my_bucket/Homepage/home_carousel_slider.dart';
import 'package:my_bucket/Homepage/home_dealofferece.dart';
import 'package:my_bucket/Homepage/home_category.dart';
import 'package:my_bucket/Homepage/home_trendingpro.dart';
import 'package:my_bucket/Homepage/home_appbar.dart';

import 'package:my_bucket/Homepage/home_recomenteditem.dart';
import 'package:my_bucket/Homepage/home_slidingimage.dart';
import 'package:my_bucket/Homepage/home_masonrygrid.dart';
import 'package:my_bucket/Homepage/home_newarrivals.dart';
import 'package:my_bucket/Homepage/home_premium.dart';
import 'package:my_bucket/Homepage/home_sponsored.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> _refreshPage() async {
    // Simulate a network request or data reload
    await Future.delayed(const Duration(seconds: 2));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            const MyAppBar(), // Custom App Bar
          ];
        },
        body: RefreshIndicator(
          // triggerMode: RefreshIndicatorTriggerMode.onEdge,
          edgeOffset: 0,
          onRefresh: _refreshPage,
          color: Colors.blue,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                const AutoSlidingImages(),
                const SizedBox(height: 20),
                CategoriesList(),
                const SizedBox(height: 15),
                const RecommendedItems(),
                const SizedBox(height: 15),
                TrendingProducts(),
                const Divider(height: 30),
                const NewArrivals(),
                const SizedBox(height: 10),
                DealsOffers(),
                const SizedBox(height: 10),
                const SponsoredSection(),
                const Divider(height: 30),
                PremiumList(),
                const SizedBox(height: 25),
                const AccesorizeOn(),
                const SizedBox(height: 15),
                const AdsPageViewScreen(),
                const SizedBox(height: 15),
                AllEyesOnThis(),
                const MasonryGridViewWidget(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
