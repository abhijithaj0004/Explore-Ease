import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  AppBarHome({
    super.key,
    required this.ontap,
    required this.icon,
  });
  final VoidCallback ontap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: const Color.fromARGB(255, 107, 103, 103),
                  spreadRadius: 0.1,
                  blurRadius: 3)
            ],
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(15)),
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppBarHome(ontap: () {}, icon: Icons.sort_rounded),
            Text(
              'Explore-Ease',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            AppBarHome(ontap: () {}, icon: Icons.search),
          ],
        ),
      ),
    );
  }
}
