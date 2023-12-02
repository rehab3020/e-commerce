import 'package:e_commerce/components/components.dart';
import 'package:e_commerce/models/banner_flash_model.dart';
import 'package:e_commerce/models/products/product_details_model.dart';
import 'package:e_commerce/modules/category_screens/search_delegate.dart';
import 'package:e_commerce/modules/screens/banner_widget.dart';
import 'package:e_commerce/repository/banner_flash_repo.dart';
import 'package:e_commerce/repository/products/get_product_details_repo.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProductDetail extends StatefulWidget {
  final int productID;
  const ProductDetail({required this.productID, super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  late Future<ProductDetailModel> productDetailData;
  late Future<BannerAndFlashModel> homeData;
  late int id;
  @override
  initState() {
    super.initState();
    id = widget.productID;
    productDetailData = GetProductDataRepo().getProductsData(productID: id);
    homeData = GetHomePageDataRepo().getBannerAndProductsData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xFF9098B1),
          ),
        ),
        title: const Text('Nike Air Max 270 Rea'),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
            icon: const Icon(
              Icons.search_outlined,
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
        // toolbarHeight: 0.0,
      ),
      body: SingleChildScrollView(
        child: FutureBuilder(
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return SizedBox(
                height: 200.0,
                child: Shimmer.fromColors(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey,
                  child: Center(
                    child: Text("wait"),
                  ),
                ),
              );
            }
            if (snapshot.hasError) {
              return const Text("error");
            }
            return Column(
              children: [
                BannerWidget(
                    urlImage: snapshot.data!.data.image,
                    isThereProductSizes: false),
                //all Widgets Under Banner
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(start: 15.0, top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Name,Rate and Price of Product
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(snapshot.data!.data.name,
                                    maxLines: 2,
                                    style: TextStyle(
                                      color: Color(0xFF223263),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20.0,
                                    )),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.favorite_border),
                              )
                            ],
                          ),
                          const SizedBox(height: 4.0),
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
                          const SizedBox(height: 10.0),
                          Text(
                            '\$${snapshot.data!.data.price}',
                            style: TextStyle(
                                color: Color(0xFF40BFFF),
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),

                      //Size of product
                      const Text(
                        'Select Size',
                        style: TextStyle(
                            color: Color(0xFF223263),
                            fontWeight: FontWeight.w700,
                            fontSize: 17.0),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        height: 90.0,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => const Column(
                            children: [
                              CircleAvatar(
                                radius: 28.0,
                                backgroundColor: Color(0xFF40BFFF),
                                child: CircleAvatar(
                                  radius: 27.0,
                                  backgroundColor: Color(0xFFFFFFFF),
                                  child: Text('15'),
                                ),
                              ),
                            ],
                          ),
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 10),
                          itemCount: 10,
                        ),
                      ),

                      //Color of product
                      const Text(
                        'Select Color',
                        style: TextStyle(
                            color: Color(0xFF223263),
                            fontWeight: FontWeight.w700,
                            fontSize: 17.0),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        height: 90.0,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => const Column(
                            children: [
                              CircleAvatar(
                                radius: 28.0,
                                backgroundColor: Color(0xFF40BFFF),
                                child: CircleAvatar(
                                  radius: 27.0,
                                  backgroundColor: Color(0xFF53D1B6),
                                ),
                              ),
                            ],
                          ),
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 10),
                          itemCount: 10,
                        ),
                      ),

                      //Specification
                      const Text(
                        'Specification',
                        style: TextStyle(
                            color: Color(0xFF223263),
                            fontWeight: FontWeight.w700,
                            fontSize: 17.0),
                      ),
                      //Shown
                      const Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Shown:',
                              style: TextStyle(color: Color(0xff223263)),
                            ),
                          ),
                          Expanded(
                              child: Text(
                            'Laser Blue/Anthracite/Watermelon/White',
                            style: TextStyle(color: Color(0xFF9098B1)),
                            maxLines: 3,
                          ))
                        ],
                      ),

                      const SizedBox(
                        height: 20.0,
                      ),

                      //style
                      const Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Style:',
                              style: TextStyle(color: Color(0xff223263)),
                            ),
                          ),
                          Expanded(
                              child: Text(
                            'CD0113-400',
                            style: TextStyle(color: Color(0xFF9098B1)),
                            maxLines: 3,
                          ))
                        ],
                      ),

                      //Description
                      Padding(
                        padding: EdgeInsetsDirectional.only(
                            top: 15.0, bottom: 15.0, end: 15.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                snapshot.data!.data.description,
                                style: TextStyle(
                                  color: Color(0xFF9098B1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  height: 1.6,
                                ),
                                // maxLines: 3,
                              ),
                            )
                          ],
                        ),
                      ),
                      //Product review (rating, who rated it, review message)
                      Column(
                        children: [
                          //Review Product
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Review Product',
                                  style: TextStyle(
                                      color: Color(0xFF223263),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17.0)),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'See more ',
                                    style: TextStyle(
                                        color: Color(0xFF40BFFF),
                                        fontWeight: FontWeight.w700),
                                  ))
                            ],
                          ),

                          //rating, who rated it
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
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                '4.5',
                                style: TextStyle(
                                  color: Color(0xFF9098B1),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.0,
                                ),
                              ),
                              Text(
                                '(5 Review)',
                                style: TextStyle(
                                  color: Color(0xFF9098B1),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 25.0,
                                  child: Image.asset(
                                      'assets/images/Profile Picture.png'),
                                ),
                                const SizedBox(width: 10.0),
                                const Column(
                                  children: [
                                    Text('James Lawson'),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),

                          //text of Description
                          const Padding(
                            padding: EdgeInsetsDirectional.only(
                                top: 15.0, bottom: 15.0, end: 15.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.',
                                    style: TextStyle(
                                      color: Color(0xFF9098B1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      height: 1.6,
                                    ),
                                    // maxLines: 3,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      //picture of product
                      SizedBox(
                        height: 90.0,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data!.data.images.length,
                          itemBuilder: (context, index) => Container(
                            height: 80.0,
                            width: 80.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              // color: const Color(0xFFF6F6F6),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      snapshot.data!.data.images[index]),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 10.0),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'December 10, 2016',
                          style: TextStyle(
                            color: Color(0xFF9098B1),
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      //You Might Also Like
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          'You Might Also Like',
                          style: TextStyle(
                              color: Color(0xFF223263),
                              fontWeight: FontWeight.w700,
                              fontSize: 17.0),
                        ),
                      ),
                      FutureBuilder(
                        builder:(context, snapshot) => SizedBox(
                          height: MediaQuery.of(context).size.height * 0.36,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => GestureDetector(
                                    onTap: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => ProductDetail(
                                            productID: snapshot.data!.data.products[index].id),
                                      ),
                                    ),
                                    child: productItem(
                                      context: context,
                                      uil: snapshot.data!.data.products[index].image,
                                      nameOfProduct: snapshot.data!.data.products[index].name,
                                      price: snapshot.data!.data.products[index].price,
                                      oldPrice: snapshot.data!.data.products[index].oldPrice,
                                      discountPercentage: snapshot.data!.data.products[index].discount,
                                    ),
                                  ),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                              itemCount: 10),
                        ),
                        future: homeData,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.92,
                        child: MaterialButton(
                          onPressed: () {},
                          height: 50,
                          color: const Color(0xff40BFFF),
                          child: const Text(
                            'Add To Cart',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
          future: productDetailData,
        ),
      ),
    );
  }
}
