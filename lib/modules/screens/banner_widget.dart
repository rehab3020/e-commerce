import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/components/components.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatefulWidget {
  final String urlImage;
  // final bool? isThereOffers;
  final String? textOffer;
  final bool? isThereProductSizes;
  final List<int>? productSizes;
  final bool? isIndicator;
  const BannerWidget(
      {required this.urlImage,
        // this.isThereOffers,
        this.textOffer,
        this.isThereProductSizes,
        this.productSizes,
        this.isIndicator,
        super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  int _currentIndex = 0;
  late String url;
  // late bool? isOffers;
  String? textOffer;
  bool? isProductSizes;
  List<int> productSizes = [08, 34, 52];
  bool? isIndicator;
  @override
  void initState() {
    super.initState();
    url = widget.urlImage;
    isProductSizes = widget.isThereProductSizes;
    isIndicator = widget.isIndicator;
    textOffer = widget.textOffer;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: 5,
          itemBuilder: (context, index, realIndex) {
            return Stack(
              children: [
                Image.network(
                  url,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textOffer ?? '',
                        maxLines: 2,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 27.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // const Text(
                      //   '50% Off',
                      //   style: TextStyle(
                      //     color: Colors.white,
                      //     fontSize: 25,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      if (isProductSizes ?? true)
                        Row(
                          children: [
                            productSize(productSizes[0]),
                            const SizedBox(
                              width: 10.0,
                            ),
                            productSize(productSizes[1]),
                            const SizedBox(
                              width: 10.0,
                            ),
                            productSize(productSizes[2]),
                          ],
                        ),
                    ],
                  ),
                ),
              ],
            );
          },
          options: CarouselOptions(
            reverse: true,
            viewportFraction: 0.95,
            enlargeCenterPage: true,
            // height: MediaQuery.of(context).size.width * 0.55,
            autoPlay: true,
            onPageChanged: (index, reason) =>
                setState(() => _currentIndex = index),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        if (isIndicator ?? true) buildIndicator(_currentIndex),
      ],
    );
  }
}