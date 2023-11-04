import 'package:exploreease/core/constants.dart';
import 'package:exploreease/presentation/screens/homescreens/home_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CityListHorizontal extends StatelessWidget {
  const CityListHorizontal({
    super.key,
    // required this.images,
  });

  // final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.23,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: citydetails.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 10),
            width: MediaQuery.of(context).size.width * 0.37,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(citydetails[index]['image']),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.bookmark_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      citydetails[index]['city_name'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
