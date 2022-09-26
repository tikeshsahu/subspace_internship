import 'package:carousel_slider/carousel_slider.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:subspace_internship/widgets/movies.dart';
import 'package:subspace_internship/widgets/netflixBar.dart';

import 'widgets/appbar.dart';
import 'widgets/refer.dart';
import 'widgets/searchBar.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: const Color.fromARGB(255, 24, 24, 24),
        initialActiveIndex: 1,
        activeColor: const Color(0xFF3E50B6),
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Explore'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.chat_bubble, title: 'Chat'),
          TabItem(icon: Icons.account_balance_wallet, title: 'Subpay'),
        ],
        onTap: (int i) {},
      ),
      backgroundColor: const Color(0xFF212121),
      body: SafeArea(
        child: Column(
          children: [
            const myAppbar(),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 18,
                  ),
                  const searchBar(),
                  const SizedBox(
                    height: 16,
                  ),
                  const referBar(),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'All Subscriptions',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Color.fromARGB(255, 131, 130, 130),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 24,
                          width: MediaQuery.of(context).size.width / 4.8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color.fromARGB(115, 65, 61, 61),
                                  Color.fromARGB(255, 71, 70, 70),
                                ],
                              )),
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                'See More',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 190, 178, 15)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const movies(),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Public Groups',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Color.fromARGB(255, 131, 130, 130),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 24,
                          width: MediaQuery.of(context).size.width / 4.8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color.fromARGB(115, 65, 61, 61),
                                  Color.fromARGB(255, 71, 70, 70),
                                ],
                              )),
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                'See More',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 190, 178, 15)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 1060,
                    //color: Colors.amber,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return netflix();
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 14.5,
                    width: MediaQuery.of(context).size.width / 1.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color(0xFF212121),
                      border: Border.all(
                          color: const Color.fromARGB(255, 223, 231, 246),
                          width: 2),
                    ),
                    child: const Center(
                      child: Text(
                        'Show All Public Groups',
                        style: TextStyle(color: Colors.grey, fontSize: 17),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 5.35,
                    width: MediaQuery.of(context).size.width / 1.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color(0xFF2B2B2B),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'What do you want us to list next?',
                            style: TextStyle(color: Colors.white, fontSize: 19),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Suggest us a subscription',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          Row(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 16,
                                width: MediaQuery.of(context).size.width / 1.45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: const Color.fromARGB(239, 73, 67, 67),
                                ),
                                child: const Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 76),
                                    child: Text(
                                      'Give your suggestion',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Icon(
                                Icons.telegram_rounded,
                                color: Colors.white,
                                size: 40,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}










