
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imglist = [
  "assets/slider.jpg",
  "assets/catagory 6.png",
  "assets/catagory2.png",
  "assets/splashimg.png"
];
final CarouselController _controller = CarouselController();

class scr4 extends StatefulWidget {
  const scr4({super.key});

  @override
  State<scr4> createState() => _scr4State();
}

class _scr4State extends State<scr4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: Image(
            image: AssetImage("assets/karmalogo.png"),
            color: Colors.black,
          ),
        ),
        title: Center(
          child: Text(
            "Karma Louge",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_drop_down_circle,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 30)
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(178, 242, 242, 242),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("Search Products"),
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 200,
                child: CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    aspectRatio: 16 / 9,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                  ),
                  items: imglist
                      .map((item) => Center(
                              child: Image(
                            image: AssetImage(item),
                            fit: BoxFit.fill,
                            height: 300,
                            width: double.infinity,
                          )))
                      .toList(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: Card(
                          child:
                              Image(image: AssetImage("assets/catagory 1.gif")),
                        ),
                      ),
                      Text("On Sale!"),
                      Text("On Sale!"),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: Card(
                          child: Image(
                            image: AssetImage("assets/catagory 3.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text("Beverages"),
                      Text("Lassi  Tea   Ice-tea"),
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: Card(
                          child: Image(
                            image: AssetImage("assets/catagory 5.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text("Mix Drinks"),
                      Text("Mohito Mumbai"),
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: Card(
                          child: Image(
                            image: AssetImage("assets/catagory 3.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text("Rice"),
                      Text("Original southi"),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: const [
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: Card(
                          child: Image(
                            image: AssetImage("assets/catagory2.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text("Starter"),
                      Text("Samosa, Paneer, Pakora"),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: Card(
                          child: Image(
                            image: AssetImage("assets/catagory 4.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text("Wine"),
                      Text("Wine"),
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: Card(
                          child: Image(
                            image: AssetImage("assets/catagory 6.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text("Breads"),
                      Text("Paratha, Butter, Naan"),
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: Card(
                          child: Image(
                            image: AssetImage("assets/samosu.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text("Samosaa"),
                      Text("Geeta Samosa"),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
