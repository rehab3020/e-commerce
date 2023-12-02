import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class BannerWidget extends StatefulWidget {
//   final String urlImage;
//   // final bool? isThereOffers;
//   final String? textOffer;
//   final bool? isThereProductSizes;
//   final List<int>? productSizes;
//   final bool? isIndicator;
//   const BannerWidget(
//       {required this.urlImage,
//       // this.isThereOffers,
//       this.textOffer,
//       this.isThereProductSizes,
//       this.productSizes,
//       this.isIndicator,
//       super.key});
//
//   @override
//   State<BannerWidget> createState() => _BannerWidgetState();
// }
//
// class _BannerWidgetState extends State<BannerWidget> {
//   int _currentIndex = 0;
//   late String url;
//   // late bool? isOffers;
//   String? textOffer;
//   bool? isProductSizes;
//   List<int> productSizes = [08, 34, 52];
//   bool? isIndicator;
//   @override
//   void initState() {
//     super.initState();
//     url = widget.urlImage;
//     isProductSizes = widget.isThereProductSizes;
//     isIndicator = widget.isIndicator;
//     textOffer = widget.textOffer;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         CarouselSlider.builder(
//           itemCount: 5,
//           itemBuilder: (context, index, realIndex) {
//             return Stack(
//               children: [
//                 Image.network(
//                   url,
//                   fit: BoxFit.cover,
//                   width: MediaQuery.of(context).size.width * 0.9,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         textOffer ?? '',
//                         maxLines: 2,
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 27.5,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       // const Text(
//                       //   '50% Off',
//                       //   style: TextStyle(
//                       //     color: Colors.white,
//                       //     fontSize: 25,
//                       //     fontWeight: FontWeight.bold,
//                       //   ),
//                       // ),
//                       const SizedBox(
//                         height: 10.0,
//                       ),
//                       if (isProductSizes ?? true)
//                         Row(
//                           children: [
//                             productSize(productSizes[0]),
//                             const SizedBox(
//                               width: 10.0,
//                             ),
//                             productSize(productSizes[1]),
//                             const SizedBox(
//                               width: 10.0,
//                             ),
//                             productSize(productSizes[2]),
//                           ],
//                         ),
//                     ],
//                   ),
//                 ),
//               ],
//             );
//           },
//           options: CarouselOptions(
//             reverse: true,
//             viewportFraction: 0.95,
//             enlargeCenterPage: true,
//             // height: MediaQuery.of(context).size.width * 0.55,
//             autoPlay: true,
//             onPageChanged: (index, reason) =>
//                 setState(() => _currentIndex = index),
//           ),
//         ),
//         const SizedBox(
//           height: 5,
//         ),
//         if (isIndicator ?? true) buildIndicator(_currentIndex),
//       ],
//     );
//   }
// }

Widget productSize(int size) => Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(7.0)),
      child: Center(
          child: Text(
        '$size',
        style: const TextStyle(
          color: Color(0xff223263),
          fontSize: 15,
        ),
      )),
    );
buildIndicator(int currentIndex) => AnimatedSmoothIndicator(
      activeIndex: currentIndex,
      count: 5,
      effect: const ScaleEffect(
        dotWidth: 7.0,
        dotHeight: 7.0,
        dotColor: Color(0xFFEBF0FF),
        activeDotColor: Color(0xFF40BFFF),
        scale: 1.8,
      ),
    );

// class ProductListView extends StatelessWidget {
//   const ProductListView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.of(context).size.height * 0.38,
//       child: ListView.separated(
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (context, index) => productItem(
//                 context: context,
//                 uil: 'assets/images/image Product.png',
//                 nameOfProduct: 'Nike Air Max 270 React ENG',
//                 price: 299.43,
//                 oldPrice: 534.33,
//                 discountPercentage: 24,
//               ),
//           separatorBuilder: (context, index) => const SizedBox(
//                 width: 10.0,
//               ),
//           itemCount: 10),
//     );
//   }
// }

Widget productItem({
  required BuildContext context,
  required String uil,
  required String nameOfProduct,
  required double price,
  double? oldPrice,
  int? discountPercentage,
}) =>
    SizedBox(
      width: MediaQuery.of(context).size.width * 0.43,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(uil,
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.15,
                  fit: BoxFit.cover),
              const SizedBox(
                height: 5.0,
              ),
              Text(nameOfProduct,
                  style: const TextStyle(
                    color: Color(0xFF223263),
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                '\$$price',
                style: const TextStyle(color: Color(0xFF40BFFF)),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  Text(discountPercentage == 0 ? '' : '\$$oldPrice',
                      style: const TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Color(0xFF9098B1),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                      discountPercentage == 0
                          ? ''
                          : '$discountPercentage% Off',
                      style: const TextStyle(
                        color: Color(0xFFFB7181),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
