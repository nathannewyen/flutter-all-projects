import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../services/utils.dart';
import '../widgets/on_sale_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _offerImages = [
    'assets/images/offres/Offer1.jpg',
    'assets/images/offres/Offer2.jpg',
    'assets/images/offres/Offer3.jpg',
    'assets/images/offres/Offer4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final Utils utils = Utils(context);
    final themeState = utils.getTheme;
    Size size = utils.getScreenSize;

    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: size.height * 0.3,
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return Image.asset(_offerImages[index], fit: BoxFit.fill);
            },
            autoplay: true,
            itemCount: _offerImages.length,
            pagination: const SwiperPagination(
              alignment: Alignment.bottomCenter,
              builder: DotSwiperPaginationBuilder(
                color: Colors.white,
                activeColor: Colors.red,
              ),
            ),
          ),
        ),
        OnSaleWidget(),
      ],
    ));
  }
}
