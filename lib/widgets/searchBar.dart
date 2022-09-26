import 'package:flutter/material.dart';

class searchBar extends StatelessWidget {
  const searchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 14.5,
      width: MediaQuery.of(context).size.width / 1.05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: const Color(0xFF001427),
        border: Border.all(
            color: const Color.fromARGB(255, 104, 119, 145), width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 12,
                  child: Icon(
                    Icons.energy_savings_leaf_sharp,
                    color: Colors.white,
                    size: 17,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Play and earn coins',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 0),
              child: Icon(
                Icons.keyboard_double_arrow_right_sharp,
                size: 35,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}