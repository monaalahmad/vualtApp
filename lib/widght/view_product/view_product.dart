import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/product_card.dart';
import 'container_list_view.dart';
import 'package:get/get.dart';

class ViewProduct extends StatelessWidget {
  const ViewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text('18'.tr),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              margin: const EdgeInsets.only(top: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ContainerListView(
                    image: const AssetImage('assets/images/menu_settings.png'),
                    onTap: () {
                      print(',,,');
                    },
                  ),
                  ContainerListView(
                    image: const AssetImage('assets/images/menu_settings.png'),
                    onTap: () {},
                  ),
                  ContainerListView(
                    image: const AssetImage('assets/images/menu_settings.png'),
                    onTap: () {},
                  ),
                  ContainerListView(
                    image: const AssetImage('assets/images/menu_settings.png'),
                    onTap: () {},
                  ),
                  ContainerListView(
                    image: const AssetImage('assets/images/menu_settings.png'),
                    onTap: () {},
                  ),
                  ContainerListView(
                    image: const AssetImage('assets/images/menu_settings.png'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[700],
            ),
            const SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding3.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding2.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding3.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding2.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding3.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding2.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding3.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding2.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding3.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding2.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding3.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding2.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding3.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding2.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding3.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding2.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding3.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding2.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding3.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding2.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding3.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding2.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding3.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding2.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding3.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: ProductCard(
                            image: AssetImage('assets/images/onboarding2.jpg'),
                            originalPrice: '100\$',
                            discountedPrice: '75\$',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
