import 'package:e_commerce/components/components.dart';
import 'package:e_commerce/modules/category_screens/Product_detail.dart';
import 'package:e_commerce/modules/category_screens/category_type.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          const BannerWidget(
            urlImage: 'assets/images/Promotion Image.png',
            textOffer: 'Super Flash Sale 50% Off',
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
                            fontWeight: FontWeight.w700,
                            fontSize: 17.0)),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'See more ',
                          style: TextStyle(color: Color(0xFF40BFFF),fontWeight: FontWeight.w700),
                        ))
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const ProductDetail(),
                              ),
                            ),
                            child: productItem(
                              context: context,
                              uil: 'assets/images/image Product.png',
                              nameOfProduct: 'Nike Air Max 270 React ENG',
                              price: 299.43,
                              oldPrice: 534.33,
                              discountPercentage: 24,
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
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ProductDetail(),
                          ),
                        ),
                        child: productItem(
                              context: context,
                              uil: 'assets/images/image Product.png',
                              nameOfProduct: 'Nike Air Max 270 React ENG',
                              price: 299.43,
                              oldPrice: 534.33,
                              discountPercentage: 24,
                            ),
                      ),
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 10.0,
                          ),
                      itemCount: 10),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: BannerWidget(
                      urlImage: 'assets/images/image 51.png',
                      textOffer: 'Recommended Product',
                      isIndicator: false,
                      isThereProductSizes: false),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.81,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsetsDirectional.only(end: 8.0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.48,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(Icons.star,
                                              color: Color(0xFFFFC833),
                                              size: 20),
                                          Icon(Icons.star,
                                              color: Color(0xFFFFC833),
                                              size: 20),
                                          Icon(Icons.star,
                                              color: Color(0xFFFFC833),
                                              size: 20),
                                          Icon(Icons.star,
                                              color: Color(0xFFFFC833),
                                              size: 20),
                                          Icon(Icons.star,
                                              color: Color(0xFFEBF0FF),
                                              size: 20),
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
                          ),
                          Expanded(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.46,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(Icons.star,
                                              color: Color(0xFFFFC833),
                                              size: 20),
                                          Icon(Icons.star,
                                              color: Color(0xFFFFC833),
                                              size: 20),
                                          Icon(Icons.star,
                                              color: Color(0xFFFFC833),
                                              size: 20),
                                          Icon(Icons.star,
                                              color: Color(0xFFFFC833),
                                              size: 20),
                                          Icon(Icons.star,
                                              color: Color(0xFFEBF0FF),
                                              size: 20),
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
                          ),
                        ],
                      ),
                    ),
                    itemCount: 2,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
