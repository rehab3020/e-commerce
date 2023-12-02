import 'package:e_commerce/models/categories/categories_details_model.dart';
import 'package:e_commerce/modules/category_screens/Product_detail.dart';
import 'package:e_commerce/repository/categories/get_categories_repo.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CategoryType extends StatefulWidget {
  final int categoryId;
  final String categoryName;
  const CategoryType(
      {required this.categoryId, required this.categoryName, super.key});

  @override
  State<CategoryType> createState() => _CategoryTypeState();
}

class _CategoryTypeState extends State<CategoryType> {
  late Future<CategoryDetailsModel> categoryDetailData;
  late int id;
  late String name;
  @override
  void initState() {
    super.initState();
    id = widget.categoryId;
    name = widget.categoryName;
    categoryDetailData = GetCategoryRepo().getCategoryDetailsData(id: id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xFF9098B1),
          ),
        ),
        title: Text(name,
            style: const TextStyle(
              color: Color(0xFF223263),
              fontWeight: FontWeight.bold,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.87,
              child: FutureBuilder(
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return SizedBox(
                      height: 200.0,
                      child: Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.grey,
                        child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (context, index) => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.46,
                                    child: const Card(
                                      color: Colors.white,
                                      child: Padding(
                                        padding: EdgeInsets.all(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.46,
                                    child: const Card(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                  if (snapshot.hasError) {
                    return const Text("error");
                  }
                  // TODO: Replace ListView with wrap
                  return ListView.builder(
                    itemCount: snapshot.data!.data.data.length - 1,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ProductDetail(
                                      productID:
                                          snapshot.data!.data.data[index].id),
                                ),
                              ),
                              child: Expanded(
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.46,
                                  child: Card(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.network(
                                              snapshot
                                                  .data!.data.data[index].image,
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
                                          Text(
                                              snapshot
                                                  .data!.data.data[index].name,
                                              style: const TextStyle(
                                                color: Color(0xFF223263),
                                                fontWeight: FontWeight.bold,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2),
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
                                          Text(
                                            '\$${snapshot.data!.data.data[index].price}',
                                            style: const TextStyle(
                                                color: Color(0xFF40BFFF),
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 5.0,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                snapshot.data!.data.data[index]
                                                            .discount <=
                                                        0
                                                    ? ''
                                                    : '\$${snapshot.data!.data.data[index].oldPrice}',
                                                style: const TextStyle(
                                                  color: Color(0xFF9098B1),
                                                  fontWeight: FontWeight.w500,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 15,
                                              ),
                                              Text(
                                                snapshot.data!.data.data[index]
                                                            .discount <=
                                                        0
                                                    ? ''
                                                    : '${snapshot.data!.data.data[index].discount}% off',
                                                style: const TextStyle(
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
                            ),
                            GestureDetector(
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ProductDetail(
                                      productID:
                                          snapshot.data!.data.data[index+1].id),
                                ),
                              ),
                              child: Expanded(
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.46,
                                  child: Card(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.network(
                                              snapshot.data!.data
                                                  .data[index + 1].image,
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
                                          Text(
                                              snapshot.data!.data
                                                  .data[index + 1].name,
                                              style: const TextStyle(
                                                color: Color(0xFF223263),
                                                fontWeight: FontWeight.bold,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2),
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
                                          Text(
                                            '\$${snapshot.data!.data.data[index + 1].price}',
                                            style: const TextStyle(
                                                color: Color(0xFF40BFFF),
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 5.0,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                snapshot
                                                            .data!
                                                            .data
                                                            .data[index + 1]
                                                            .discount <=
                                                        0
                                                    ? ''
                                                    : '\$${snapshot.data!.data.data[index + 1].oldPrice}',
                                                style: const TextStyle(
                                                  color: Color(0xFF9098B1),
                                                  fontWeight: FontWeight.w500,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 15,
                                              ),
                                              Text(
                                                snapshot
                                                            .data!
                                                            .data
                                                            .data[index + 1]
                                                            .discount <=
                                                        0
                                                    ? ''
                                                    : '${snapshot.data!.data.data[index + 1].discount}% off',
                                                style: const TextStyle(
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
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                future: categoryDetailData,
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     SizedBox(
            //       width: MediaQuery.of(context).size.width * 0.46,
            //       child: Card(
            //         color: Colors.white,
            //         child: Padding(
            //           padding: const EdgeInsets.all(10.0),
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Image.asset('assets/images/image Product.png',
            //                   width: MediaQuery.of(context).size.width * 0.4,
            //                   height: MediaQuery.of(context).size.height * 0.18,
            //                   fit: BoxFit.cover),
            //               const SizedBox(
            //                 height: 5.0,
            //               ),
            //               const Text('FS - Nike Air Max 270 React',
            //                   style: TextStyle(
            //                     color: Color(0xFF223263),
            //                     fontWeight: FontWeight.bold,
            //                   ),
            //                   overflow: TextOverflow.ellipsis,
            //                   maxLines: 2),
            //               // const Row(
            //               //   mainAxisAlignment: MainAxisAlignment.start,
            //               //   children: [
            //               //     Icon(
            //               //       Icons.star,
            //               //       color: Color(0xff6C70EB),
            //               //     )
            //               //   ],
            //               // ),
            //               const Row(
            //                 mainAxisAlignment: MainAxisAlignment.start,
            //                 children: [
            //                   Icon(Icons.star,
            //                       color: Color(0xFFFFC833), size: 20),
            //                   Icon(Icons.star,
            //                       color: Color(0xFFFFC833), size: 20),
            //                   Icon(Icons.star,
            //                       color: Color(0xFFFFC833), size: 20),
            //                   Icon(Icons.star,
            //                       color: Color(0xFFFFC833), size: 20),
            //                   Icon(Icons.star,
            //                       color: Color(0xFFEBF0FF), size: 20),
            //                 ],
            //               ),
            //               const SizedBox(
            //                 height: 15.0,
            //               ),
            //               const Text(
            //                 '\$299,43',
            //                 style: TextStyle(
            //                     color: Color(0xFF40BFFF),
            //                     fontWeight: FontWeight.bold),
            //               ),
            //               const SizedBox(
            //                 height: 5.0,
            //               ),
            //               const Row(
            //                 children: [
            //                   Text(
            //                     '\$534,33',
            //                     style: TextStyle(
            //                       color: Color(0xFF9098B1),
            //                       fontWeight: FontWeight.w500,
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     width: 15,
            //                   ),
            //                   Text(
            //                     '\$24% Off',
            //                     style: TextStyle(
            //                       color: Color(0xFFFB7181),
            //                       fontWeight: FontWeight.w500,
            //                     ),
            //                   ),
            //                 ],
            //               )
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //     SizedBox(
            //       width: MediaQuery.of(context).size.width * 0.46,
            //       child: Card(
            //         color: Colors.white,
            //         child: Padding(
            //           padding: const EdgeInsets.all(10.0),
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Image.asset('assets/images/image Product.png',
            //                   width: MediaQuery.of(context).size.width * 0.4,
            //                   height: MediaQuery.of(context).size.height * 0.18,
            //                   fit: BoxFit.cover),
            //               const SizedBox(
            //                 height: 5.0,
            //               ),
            //               const Text('FS - Nike Air Max 270 React',
            //                   style: TextStyle(
            //                     color: Color(0xFF223263),
            //                     fontWeight: FontWeight.bold,
            //                   ),
            //                   overflow: TextOverflow.ellipsis,
            //                   maxLines: 2),
            //               // const Row(
            //               //   mainAxisAlignment: MainAxisAlignment.start,
            //               //   children: [
            //               //     Icon(
            //               //       Icons.star,
            //               //       color: Color(0xff6C70EB),
            //               //     )
            //               //   ],
            //               // ),
            //               const Row(
            //                 mainAxisAlignment: MainAxisAlignment.start,
            //                 children: [
            //                   Icon(Icons.star,
            //                       color: Color(0xFFFFC833), size: 20),
            //                   Icon(Icons.star,
            //                       color: Color(0xFFFFC833), size: 20),
            //                   Icon(Icons.star,
            //                       color: Color(0xFFFFC833), size: 20),
            //                   Icon(Icons.star,
            //                       color: Color(0xFFFFC833), size: 20),
            //                   Icon(Icons.star,
            //                       color: Color(0xFFEBF0FF), size: 20),
            //                 ],
            //               ),
            //               const SizedBox(
            //                 height: 15.0,
            //               ),
            //               const Text(
            //                 '\$299,43',
            //                 style: TextStyle(
            //                     color: Color(0xFF40BFFF),
            //                     fontWeight: FontWeight.bold),
            //               ),
            //               const SizedBox(
            //                 height: 5.0,
            //               ),
            //               const Row(
            //                 children: [
            //                   Text(
            //                     '\$534,33',
            //                     style: TextStyle(
            //                       color: Color(0xFF9098B1),
            //                       fontWeight: FontWeight.w500,
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     width: 15,
            //                   ),
            //                   Text(
            //                     '\$24% Off',
            //                     style: TextStyle(
            //                       color: Color(0xFFFB7181),
            //                       fontWeight: FontWeight.w500,
            //                     ),
            //                   ),
            //                 ],
            //               )
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // const SizedBox(
            //   height: 10.0,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     SizedBox(
            //       width: MediaQuery.of(context).size.width * 0.46,
            //       child: Card(
            //         color: Colors.white,
            //         child: Padding(
            //           padding: const EdgeInsets.all(10.0),
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Image.asset('assets/images/image Product.png',
            //                   width: MediaQuery.of(context).size.width * 0.4,
            //                   height: MediaQuery.of(context).size.height * 0.18,
            //                   fit: BoxFit.cover),
            //               const SizedBox(
            //                 height: 5.0,
            //               ),
            //               const Text('FS - Nike Air Max 270 React',
            //                   style: TextStyle(
            //                     color: Color(0xFF223263),
            //                     fontWeight: FontWeight.bold,
            //                   ),
            //                   overflow: TextOverflow.ellipsis,
            //                   maxLines: 2),
            //               // const Row(
            //               //   mainAxisAlignment: MainAxisAlignment.start,
            //               //   children: [
            //               //     Icon(
            //               //       Icons.star,
            //               //       color: Color(0xff6C70EB),
            //               //     )
            //               //   ],
            //               // ),
            //               const Row(
            //                 mainAxisAlignment: MainAxisAlignment.start,
            //                 children: [
            //                   Icon(Icons.star,
            //                       color: Color(0xFFFFC833), size: 20),
            //                   Icon(Icons.star,
            //                       color: Color(0xFFFFC833), size: 20),
            //                   Icon(Icons.star,
            //                       color: Color(0xFFFFC833), size: 20),
            //                   Icon(Icons.star,
            //                       color: Color(0xFFFFC833), size: 20),
            //                   Icon(Icons.star,
            //                       color: Color(0xFFEBF0FF), size: 20),
            //                 ],
            //               ),
            //               const SizedBox(
            //                 height: 15.0,
            //               ),
            //               const Text(
            //                 '\$299,43',
            //                 style: TextStyle(
            //                     color: Color(0xFF40BFFF),
            //                     fontWeight: FontWeight.bold),
            //               ),
            //               const SizedBox(
            //                 height: 5.0,
            //               ),
            //               const Row(
            //                 children: [
            //                   Text(
            //                     '\$534,33',
            //                     style: TextStyle(
            //                       color: Color(0xFF9098B1),
            //                       fontWeight: FontWeight.w500,
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     width: 15,
            //                   ),
            //                   Text(
            //                     '\$24% Off',
            //                     style: TextStyle(
            //                       color: Color(0xFFFB7181),
            //                       fontWeight: FontWeight.w500,
            //                     ),
            //                   ),
            //                 ],
            //               )
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //     SizedBox(
            //       width: MediaQuery.of(context).size.width * 0.46,
            //       child: Card(
            //         color: Colors.white,
            //         child: Padding(
            //           padding: const EdgeInsets.all(10.0),
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Image.asset('assets/images/image Product.png',
            //                   width: MediaQuery.of(context).size.width * 0.4,
            //                   height: MediaQuery.of(context).size.height * 0.18,
            //                   fit: BoxFit.cover),
            //               const SizedBox(
            //                 height: 5.0,
            //               ),
            //               const Text('FS - Nike Air Max 270 React',
            //                   style: TextStyle(
            //                     color: Color(0xFF223263),
            //                     fontWeight: FontWeight.bold,
            //                   ),
            //                   overflow: TextOverflow.ellipsis,
            //                   maxLines: 2),
            //               // const Row(
            //               //   mainAxisAlignment: MainAxisAlignment.start,
            //               //   children: [
            //               //     Icon(
            //               //       Icons.star,
            //               //       color: Color(0xff6C70EB),
            //               //     )
            //               //   ],
            //               // ),
            //               const Row(
            //                 mainAxisAlignment: MainAxisAlignment.start,
            //                 children: [
            //                   Icon(Icons.star,
            //                       color: Color(0xFFFFC833), size: 20),
            //                   Icon(Icons.star,
            //                       color: Color(0xFFFFC833), size: 20),
            //                   Icon(Icons.star,
            //                       color: Color(0xFFFFC833), size: 20),
            //                   Icon(Icons.star,
            //                       color: Color(0xFFFFC833), size: 20),
            //                   Icon(Icons.star,
            //                       color: Color(0xFFEBF0FF), size: 20),
            //                 ],
            //               ),
            //               const SizedBox(
            //                 height: 15.0,
            //               ),
            //               const Text(
            //                 '\$299,43',
            //                 style: TextStyle(
            //                     color: Color(0xFF40BFFF),
            //                     fontWeight: FontWeight.bold),
            //               ),
            //               const SizedBox(
            //                 height: 5.0,
            //               ),
            //               const Row(
            //                 children: [
            //                   Text(
            //                     '\$534,33',
            //                     style: TextStyle(
            //                       color: Color(0xFF9098B1),
            //                       fontWeight: FontWeight.w500,
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     width: 15,
            //                   ),
            //                   Text(
            //                     '\$24% Off',
            //                     style: TextStyle(
            //                       color: Color(0xFFFB7181),
            //                       fontWeight: FontWeight.w500,
            //                     ),
            //                   ),
            //                 ],
            //               )
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
