import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselController _carouselController = CarouselController();
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    height: 45.0,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Search Product',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xFF40BFFF),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black26,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF40BFFF),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none_sharp,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            CarouselSlider.builder(
              carouselController: _carouselController,
              itemCount: 5,
              itemBuilder: (context, index, realIndex) {
                return Stack(
                  children: [
                    Image.asset(
                      'assets/images/Promotion Image.png',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width * 0.9,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Super Flash Sale',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            '50% Off',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7.0)),
                                child: const Center(
                                    child: Text(
                                  '08',
                                  style: TextStyle(
                                    color: Color(0xff223263),
                                    fontSize: 15,
                                  ),
                                )),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7.0)),
                                child: const Center(
                                    child: Text(
                                  '08',
                                  style: TextStyle(
                                    color: Color(0xff223263),
                                    fontSize: 15,
                                  ),
                                )),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7.0)),
                                child: const Center(
                                    child: Text(
                                  '08',
                                  style: TextStyle(
                                    color: Color(0xff223263),
                                    fontSize: 15,
                                  ),
                                )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
              options: CarouselOptions(
                viewportFraction: 0.85,
                enlargeCenterPage: true,
                height: MediaQuery.of(context).size.width * 0.55,
                autoPlay: true,
              ),
            ),
            SmoothPageIndicator(
              controller: _pageController,
              count: 5,
              effect: const ScaleEffect(
                dotWidth: 7.0,
                dotHeight: 7.0,
                dotColor: Color(0xFFEBF0FF),
                activeDotColor: Color(0xFF40BFFF),
              ),
              onDotClicked: (index) {
                _carouselController.animateToPage(index);
              },
            ),
          ],
        ),
      );
  }
}
