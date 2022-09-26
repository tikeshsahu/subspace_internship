import 'package:flutter/material.dart';

class myAppbar extends StatelessWidget {
  const myAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 13,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF1B1B1B),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Explore',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.white,
                letterSpacing: 1,
              ),
            ),
            Row(
              children: const [
                CircleAvatar(
                  radius: 22,
                  backgroundColor: Color(0xFF3E50B6),
                  child: Icon(
                    Icons.wine_bar_rounded,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 22,
                  backgroundColor: Color(0xFF3E50B6),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 25,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}