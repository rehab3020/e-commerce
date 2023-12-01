import 'package:flutter/material.dart';

class CategoryType extends StatelessWidget {
  const CategoryType({super.key});

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
        title: const Text('Product Items',
            style: TextStyle(
              color: Color(0xFF223263),
              fontWeight: FontWeight.bold,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height:MediaQuery.of(context).size.height*0.87,
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.46,
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/image Product.png',
                                      width: MediaQuery.of(context).size.width * 0.4,
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
                      ),
                      Expanded(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.46,
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/image Product.png',
                                      width: MediaQuery.of(context).size.width * 0.4,
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
                      ),
                    ],
                  ),
                ),
                itemCount: 5,
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
