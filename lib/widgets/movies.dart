import 'package:flutter/material.dart';



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