import 'package:flutter/material.dart';

import 'package:my_bucket/Homepage/home_category.dart';
import 'package:my_bucket/Homepage/home_trendingpro.dart';
import 'package:my_bucket/Homepage/appbar.dart';
import 'package:my_bucket/Homepage/deal_offerece.dart';

import 'package:my_bucket/Homepage/home_recomenteditem.dart';
import 'package:my_bucket/Homepage/home_slidingimage.dart';

import 'package:my_bucket/Homepage/new_arrivals.dart';
import 'package:my_bucket/Homepage/premium.dart';

import 'package:my_bucket/Homepage/sponsored.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Column(
              children: [
                const AutoSlidingImages(),
                const SizedBox(height: 20),
                CategoriesList(),
                const SizedBox(height: 10),
                RecommendedItems(),
                const SizedBox(height: 15),
                TrendingProducts(),
                const SizedBox(height: 10),
                const NewArrivals(),
                const SizedBox(height: 10),
                DealsOffers(),
                const SizedBox(height: 10),
                const SponsoredSection(),
                const SizedBox(height: 10),
                PremiumList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
