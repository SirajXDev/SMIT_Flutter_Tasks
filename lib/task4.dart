import 'package:flutter/material.dart';

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.camera_alt),
                Text('Instagram'),
                Icon(Icons.send),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('stories'),
                Row(
                  children: [
                    Icon(Icons.play_arrow),
                    Text('watch all'),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 40,
                          ),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/Rectangle 6.png'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('samad '),
                        ],
                      ),
                    );
                  }),
            ),
          
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        
                        children: [
                           ListTile(
                            leading: const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/Rectangle 6.png'),
                            ),
                            title: Text('Siraj khan $index'),
                            trailing: const Icon(Icons.more_horiz_outlined),
                          ),
                          Container(
                            height: 350,
                            width: 300,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/Screenshot 2024-04-28 135937.png'),
                                    fit: BoxFit.cover)),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.favorite),
                                  Icon(Icons.circle_outlined),
                                  Icon(Icons.send),
                                ],
                              ),
                              Icon(Icons.save_sharp),
                            ],
                          ),
                          const Align(
                              alignment: Alignment.topLeft,
                              child: Text('20203 Likes')),
                          const Row(
                            children: [
                              Text('siraj'),
                              Text(
                                'khan',
                                style: TextStyle(color: Colors.amber),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
