import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:rescpitalitask/controllers/cart_controller.dart';
import 'package:rescpitalitask/models/cart.dart';
import 'package:rescpitalitask/theme/colors.dart';

class CartButtons extends StatelessWidget {
  final CartController cartController;
  final CartModel cartModel;
  const CartButtons({
    Key? key,
    required this.cartController,
    required this.cartModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 30,
        child: Row(
          children: [
            Align(
              alignment: AlignmentDirectional.topStart,
              child: InkWell(
                onTap: () {
                  cartController.plusToCart(cartModel);
                },
                child: Container(
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xffB0EAFD),
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 20,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                cartController.getQuantity(cartModel).toString(),
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: InkWell(
                onTap: () {
                  cartController.minusToCart(cartModel);
                },
                child: Container(
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xffB0EAFD),
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                  ),
                  child: const Icon(
                    Icons.minimize,
                    size: 20,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
