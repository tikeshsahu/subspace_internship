import 'package:carousel_slider/carousel_slider.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

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

class netflix extends StatelessWidget {
  const netflix({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 6,
        ),
        Container(
            height:
                MediaQuery.of(context).size.height / 8.4,
            width: MediaQuery.of(context).size.width / 1.05,
            decoration: const BoxDecoration(
                color: Color(0xFF2B2B2B)),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Row(
                    children: [
                      Stack(
                        children: const [
                          CircleAvatar(
                            radius: 37,
                            backgroundImage: NetworkImage(
                              'https://cdn.vox-cdn.com/thumbor/SEEvZdiXcs0CS-YbPj2gm6AJ8qc=/0x0:3151x2048/1400x1400/filters:focal(1575x1024:1576x1025)/cdn.vox-cdn.com/uploads/chorus_asset/file/15844974/netflixlogo.0.0.1466448626.png',
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 50),
                            child: Align(
                              alignment:
                                  AlignmentDirectional(
                                      1, 0.8),
                              child: CircleAvatar(
                                radius: 13,
                                backgroundImage:
                                    NetworkImage(
                                  'https://www.incimages.com/uploaded_files/image/1920x1080/getty_624206636_200013332000928034_376810.jpg',
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Netflix Standard Plan',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white70,
                                fontSize: 15),
                          ),
                          Text(
                            'by Anil Thakur',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white60,
                                fontSize: 12),
                          ),
                          Text(
                            '3 / 4 friends sharing',
                            style: TextStyle(
                                color: Color.fromARGB(
                                    255, 63, 111, 150),
                                fontSize: 13,
                                fontWeight:
                                    FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Column(
                          mainAxisAlignment:
                              MainAxisAlignment.center,
                          children: [
                            const Text(
                              '₹ 250 / User / Month',
                              style: TextStyle(
                                  fontWeight:
                                      FontWeight.bold,
                                  color: Colors.white60,
                                  fontSize: 11),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(
                                      top: 5),
                              child: Container(
                                height:
                                    MediaQuery.of(context)
                                            .size
                                            .height /
                                        24,
                                width:
                                    MediaQuery.of(context)
                                            .size
                                            .width /
                                        3.8,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius
                                            .circular(5),
                                    color: Color.fromARGB(
                                        255, 7, 60, 183)),
                                child: const Center(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.all(5.0),
                                    child: Text(
                                      'Join',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors
                                              .white70),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Align(
                    alignment:
                        const AlignmentDirectional(-1, -1),
                    child: Container(
                      height: MediaQuery.of(context)
                              .size
                              .width /
                          17,
                      width: MediaQuery.of(context)
                              .size
                              .width /
                          5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6)),
                        color: const Color.fromARGB(
                            255, 24, 153, 142),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(4),
                        child: Text(
                          '  22+ groups',
                          style: TextStyle(
                              fontSize: 12.5,
                              color: Colors.white70),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ],
    );
  }
}

class movies extends StatelessWidget {
  const movies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.9,
      width: MediaQuery.of(context).size.width / 1.05,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 59, 58, 58),
        borderRadius: BorderRadius.circular(7),
      ),
      child: GridView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, mainAxisSpacing: 0, childAspectRatio: 1.12),
        itemBuilder: (BuildContext context, int index) {
          return Card(
              child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                'https://movies.universalpictures.com/media/04-bst-dm-mainstage-mobile-banner-1080x793on-demand-km-f01-090722-631a21edac647-1.jpg',
                fit: BoxFit.fill,
              ),
              Align(
                alignment: const AlignmentDirectional(-1, 1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    child: Column(
                      children: const [
                        Text(
                          'Amazon prime',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          'Starting at \$22',
                          style: TextStyle(
                              color: Colors.yellowAccent, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1, -1),
                child: Container(
                  height: 43,
                  width: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 24, 153, 142),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(2.5),
                    child: Text(
                      'UPTO  30 %   OFF',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: AlignmentDirectional(0.85, -0.93),
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 14.5,
                  ),
                ),
              )
            ],
          ));
        },
      ),
    );
  }
}

class referBar extends StatelessWidget {
  const referBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 4.4,
        width: MediaQuery.of(context).size.width / 1.05,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(4),
        ),
        child: CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 6),
              scrollDirection: Axis.horizontal),
          items: [
            Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/.....png',
                  fit: BoxFit.fill,
                )
              ],
            ),
            Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  'https://img.freepik.com/premium-vector/male-hand-holding-megaphone-with-refer-friend-speech-bubble-loudspeaker-banner-business-marketing-advertising-vector-illustration_175838-3040.jpg?w=1060',
                  fit: BoxFit.fill,
                )
              ],
            ),
            Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  'https://img.freepik.com/free-vector/referral-marketing-refer-friend-banner_107791-11591.jpg?w=1060&t=st=1664169034~exp=1664169634~hmac=cdf68b1a8bf7d2e5b2c9d8fbb6c85dbe93b45f6a7568810ed91c09da29d6ce98',
                  fit: BoxFit.fill,
                )
              ],
            ),
          ],
        ));
  }
}

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
