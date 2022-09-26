import 'package:flutter/material.dart';

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