import 'package:flutter/material.dart';

class Task5 extends StatefulWidget {
  const Task5({super.key});

  @override
  State<Task5> createState() => _Task5State();
}

class _Task5State extends State<Task5> {
  final List<String> imageUrls = [
    'https://th.bing.com/th/id/OIP.b8qMhgK7BerbGugMLcexDAHaHa?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th?id=OIP.gQViIiNNJOVDbP6sVGMGCwHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
    'https://cdn.pixabay.com/photo/2013/07/12/15/53/t-shirt-150527_640.png',
    'https://th.bing.com/th?id=OIP.DSjZPk9uy01_f2ox4Q5QPgHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
    'https://th.bing.com/th/id/OIP.b8qMhgK7BerbGugMLcexDAHaHa?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th?id=OIP.gQViIiNNJOVDbP6sVGMGCwHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
    'https://cdn.pixabay.com/photo/2013/07/12/15/53/t-shirt-150527_640.png',
    'https://th.bing.com/th?id=OIP.DSjZPk9uy01_f2ox4Q5QPgHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
    'https://th.bing.com/th/id/OIP.b8qMhgK7BerbGugMLcexDAHaHa?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th?id=OIP.gQViIiNNJOVDbP6sVGMGCwHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
  ];
  final List<String> imagesNames = [
    'Trendy Tee',
    'Vintage Vibes',
    'Comfy Classic',
    'Bold Statement',
    'Graphic Groove',
    'Urban Explorer',
    'Chill Vibes',
    'Classic Comfort',
    'Retro Revival',
    'Adventure Awaits',
  ];
  final List<String> imagesPrice = [
    '\$200',
    '\$300',
    '\$400',
    '\$100',
    '\$250',
    '\$350',
    '\$150',
    '\$450',
    '\$500',
    '\$550',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.2),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Icon(Icons.arrow_back),
                ),
                const Text(
                  'T-Shirt Shop',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.2),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Icon(Icons.menu),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.5,
                  ),
                  itemCount: imageUrls.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.5))),
                          child: Column(
                            children: [
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: 10, top: 10),
                                  child: FavoriteIcon(),
                                  ),
                                ],
                              ),
                              Image(image: NetworkImage(imageUrls[index])),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(imagesNames[index]),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                imagesPrice[index],
                                style: const TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 40,
                          width: 150,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.red,
                          ),
                          child: const Center(
                              child: Text(
                            'BUY NOW',
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ],
                    );
                  }),
            )),
          ],
        ),
      ),
    );
  }
}

//favorite icon class
class FavoriteIcon extends StatefulWidget {
  const FavoriteIcon({super.key});

  @override
  State<FavoriteIcon> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: GestureDetector(
            onTap: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            child: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
              color: isFavorite ? Colors.red : Colors.black,
            )));
  }
}
