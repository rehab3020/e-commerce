import 'package:e_commerce/modules/category_screens/Product_detail.dart';
import 'package:e_commerce/modules/category_screens/category_type.dart';
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
    return SingleChildScrollView(
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
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Category',
                        style: TextStyle(
                          color: Color(0xFF223263),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'More Category',
                          style: TextStyle(color: Color(0xFF40BFFF)),
                        ))
                  ],
                ),
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CategoryType(),
                      )),
                      child: const Column(
                        children: [
                          CircleAvatar(
                            radius: 36.0,
                            backgroundColor: Color(0xFFEBF0FF),
                            child: CircleAvatar(
                              radius: 35.0,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.ice_skating),
                            ),
                          ),
                          Text('data'),
                        ],
                      ),
                    ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 10),
                    itemCount: 10,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Flash Sale',
                        style: TextStyle(
                          color: Color(0xFF223263),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'See more ',
                          style: TextStyle(color: Color(0xFF40BFFF)),
                        ))
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.38,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => SizedBox(
                            width: MediaQuery.of(context).size.width * 0.43,
                            child: Card(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                        'assets/images/image Product.png',
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.18,
                                        fit: BoxFit.cover),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    const Text('FS - Nike Air Max 270 React',
                                        style: TextStyle(
                                          color: Color(0xFF223263),
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    const Text(
                                      '\$299,43',
                                      style:
                                          TextStyle(color: Color(0xFF40BFFF)),
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    const Row(
                                      children: [
                                        Text('\$534,33',
                                            style: TextStyle(
                                              color: Color(0xFF9098B1),
                                            )),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text('\$24% Off',
                                            style: TextStyle(
                                              color: Color(0xFFFB7181),
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 10.0,
                          ),
                      itemCount: 10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Mega Sale ',
                        style: TextStyle(
                          color: Color(0xFF223263),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'See more ',
                          style: TextStyle(color: Color(0xFF40BFFF)),
                        ))
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.38,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ProductDetail(),
                            )),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.43,
                              child: Card(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                          'assets/images/image Product.png',
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.18,
                                          fit: BoxFit.cover),
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      const Text('FS - Nike Air Max 270 React',
                                          style: TextStyle(
                                            color: Color(0xFF223263),
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2),
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      const Text(
                                        '\$299,43',
                                        style:
                                            TextStyle(color: Color(0xFF40BFFF)),
                                      ),
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      const Row(
                                        children: [
                                          Text('\$534,33',
                                              style: TextStyle(
                                                color: Color(0xFF9098B1),
                                              )),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text('\$24% Off',
                                              style: TextStyle(
                                                color: Color(0xFFFB7181),
                                              )),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 10.0,
                          ),
                      itemCount: 10),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                      top: 10.0, end: 10.0, bottom: 10.0),
                  child: Image.asset('assets/images/Promotion Image.png'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.46,
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/image Product.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  height:
                                      MediaQuery.of(context).size.height * 0.18,
                                  fit: BoxFit.cover),
                              const SizedBox(
                                height: 5.0,
                              ),
                              const Text('FS - Nike Air Max 270 React',
                                  style: TextStyle(
                                    color: Color(0xFF223263),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2),
                              // const Row(
                              //   mainAxisAlignment: MainAxisAlignment.start,
                              //   children: [
                              //     Icon(
                              //       Icons.star,
                              //       color: Color(0xff6C70EB),
                              //     )
                              //   ],
                              // ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.star,
                                      color: Color(0xFFFFC833), size: 20),
                                  Icon(Icons.star,
                                      color: Color(0xFFFFC833), size: 20),
                                  Icon(Icons.star,
                                      color: Color(0xFFFFC833), size: 20),
                                  Icon(Icons.star,
                                      color: Color(0xFFFFC833), size: 20),
                                  Icon(Icons.star,
                                      color: Color(0xFFEBF0FF), size: 20),
                                ],
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              const Text(
                                '\$299,43',
                                style: TextStyle(
                                    color: Color(0xFF40BFFF),
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    '\$534,33',
                                    style: TextStyle(
                                      color: Color(0xFF9098B1),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    '\$24% Off',
                                    style: TextStyle(
                                      color: Color(0xFFFB7181),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.46,
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/image Product.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  height:
                                      MediaQuery.of(context).size.height * 0.18,
                                  fit: BoxFit.cover),
                              const SizedBox(
                                height: 5.0,
                              ),
                              const Text('FS - Nike Air Max 270 React',
                                  style: TextStyle(
                                    color: Color(0xFF223263),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2),
                              // const Row(
                              //   mainAxisAlignment: MainAxisAlignment.start,
                              //   children: [
                              //     Icon(
                              //       Icons.star,
                              //       color: Color(0xff6C70EB),
                              //     )
                              //   ],
                              // ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.star,
                                      color: Color(0xFFFFC833), size: 20),
                                  Icon(Icons.star,
                                      color: Color(0xFFFFC833), size: 20),
                                  Icon(Icons.star,
                                      color: Color(0xFFFFC833), size: 20),
                                  Icon(Icons.star,
                                      color: Color(0xFFFFC833), size: 20),
                                  Icon(Icons.star,
                                      color: Color(0xFFEBF0FF), size: 20),
                                ],
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              const Text(
                                '\$299,43',
                                style: TextStyle(
                                    color: Color(0xFF40BFFF),
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    '\$534,33',
                                    style: TextStyle(
                                      color: Color(0xFF9098B1),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    '\$24% Off',
                                    style: TextStyle(
                                      color: Color(0xFFFB7181),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.46,
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/image Product.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  height:
                                      MediaQuery.of(context).size.height * 0.18,
                                  fit: BoxFit.cover),
                              const SizedBox(
                                height: 5.0,
                              ),
                              const Text('FS - Nike Air Max 270 React',
                                  style: TextStyle(
                                    color: Color(0xFF223263),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2),
                              // const Row(
                              //   mainAxisAlignment: MainAxisAlignment.start,
                              //   children: [
                              //     Icon(
                              //       Icons.star,
                              //       color: Color(0xff6C70EB),
                              //     )
                              //   ],
                              // ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.star,
                                      color: Color(0xFFFFC833), size: 20),
                                  Icon(Icons.star,
                                      color: Color(0xFFFFC833), size: 20),
                                  Icon(Icons.star,
                                      color: Color(0xFFFFC833), size: 20),
                                  Icon(Icons.star,
                                      color: Color(0xFFFFC833), size: 20),
                                  Icon(Icons.star,
                                      color: Color(0xFFEBF0FF), size: 20),
                                ],
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              const Text(
                                '\$299,43',
                                style: TextStyle(
                                    color: Color(0xFF40BFFF),
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    '\$534,33',
                                    style: TextStyle(
                                      color: Color(0xFF9098B1),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    '\$24% Off',
                                    style: TextStyle(
                                      color: Color(0xFFFB7181),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.46,
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/image Product.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  height:
                                      MediaQuery.of(context).size.height * 0.18,
                                  fit: BoxFit.cover),
                              const SizedBox(
                                height: 5.0,
                              ),
                              const Text('FS - Nike Air Max 270 React',
                                  style: TextStyle(
                                    color: Color(0xFF223263),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2),
                              // const Row(
                              //   mainAxisAlignment: MainAxisAlignment.start,
                              //   children: [
                              //     Icon(
                              //       Icons.star,
                              //       color: Color(0xff6C70EB),
                              //     )
                              //   ],
                              // ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.star,
                                      color: Color(0xFFFFC833), size: 20),
                                  Icon(Icons.star,
                                      color: Color(0xFFFFC833), size: 20),
                                  Icon(Icons.star,
                                      color: Color(0xFFFFC833), size: 20),
                                  Icon(Icons.star,
                                      color: Color(0xFFFFC833), size: 20),
                                  Icon(Icons.star,
                                      color: Color(0xFFEBF0FF), size: 20),
                                ],
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              const Text(
                                '\$299,43',
                                style: TextStyle(
                                    color: Color(0xFF40BFFF),
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    '\$534,33',
                                    style: TextStyle(
                                      color: Color(0xFF9098B1),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    '\$24% Off',
                                    style: TextStyle(
                                      color: Color(0xFFFB7181),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
