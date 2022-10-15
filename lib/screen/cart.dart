import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rescpitalitask/controllers/cart_controller.dart';
import 'package:rescpitalitask/theme/colors.dart';
import 'package:rescpitalitask/widgets/header.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.put(CartController());

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Header(),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Text(
                  'Cart',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Obx(
              () => cartController.cart.isEmpty
                  ? SliverToBoxAdapter(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.6,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          color: Color(0xffffffff),
                        ),
                        child: const Center(
                          child: Text(
                            'Your Cart is Empty ',
                          ),
                        ),
                      ),
                    )
                  : SliverToBoxAdapter(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.7,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          color: Color(0xffffffff),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Expanded(
                                child: ListView.builder(
                                  physics: const BouncingScrollPhysics(),
                                  itemCount: cartController.cart.length,
                                  itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 56,
                                              height: 56,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                color: Color(int.parse(
                                                    cartController
                                                        .cart[index].color)),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  cartController
                                                      .cart[index].name,
                                                  overflow: TextOverflow.clip,
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 30,
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        '${cartController.cart[index].price}\$',
                                                        style: const TextStyle(
                                                          color: AppColors
                                                              .primaryColor,
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 130,
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional
                                                                .center,
                                                        child: InkWell(
                                                          onTap: () {
                                                            cartController
                                                                .minusToCart(
                                                                    cartController
                                                                            .cart[
                                                                        index]);
                                                            cartController.cart
                                                                .refresh();
                                                          },
                                                          child: Container(
                                                            width: 30,
                                                            alignment: Alignment
                                                                .center,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color(
                                                                  0xffB0EAFD),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                8,
                                                              ),
                                                            ),
                                                            child: const Icon(
                                                              Icons
                                                                  .minimize_rounded,
                                                              size: 20,
                                                              color: AppColors
                                                                  .whiteColor,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional
                                                                .center,
                                                        child: Text(
                                                          cartController
                                                              .getQuantity(
                                                                  cartController
                                                                          .cart[
                                                                      index])
                                                              .toString(),
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyText2,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional
                                                                .topStart,
                                                        child: InkWell(
                                                          onTap: () {
                                                            cartController
                                                                .plusToCart(
                                                                    cartController
                                                                            .cart[
                                                                        index]);
                                                            cartController.cart
                                                                .refresh();
                                                          },
                                                          child: Container(
                                                            width: 30,
                                                            alignment: Alignment
                                                                .center,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color(
                                                                  0xffB0EAFD),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                8,
                                                              ),
                                                            ),
                                                            child: const Icon(
                                                              Icons.add,
                                                              size: 20,
                                                              color: AppColors
                                                                  .whiteColor,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        const Divider(),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
