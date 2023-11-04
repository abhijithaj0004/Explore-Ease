import 'package:exploreease/core/constants.dart';
import 'package:exploreease/presentation/screens/homescreens/widgets/app_bar.dart';
import 'package:exploreease/presentation/screens/homescreens/widgets/category_list.dart';
import 'package:exploreease/presentation/screens/homescreens/widgets/city_list_horizontal.dart';
import 'package:exploreease/presentation/screens/homescreens/widgets/city_list_vertical.dart';
import 'package:flutter/material.dart';

final List<String> categories = [
  'Best Places',
  'Most Viewed',
  'Favorites',
  'New Places'
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(
          double.infinity,
          100,
        ),
        child: HomeAppBar(),
      ),
      body: SafeArea(
        child: RefreshIndicator(
          color: Colors.grey,
          onRefresh: () async {
            return await Future.delayed(const Duration(seconds: 2));
          },
          child: const SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                kHeight30,
                CityListHorizontal(),
                kHeight10,
                CategoryList(),
                CityListVertical(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
