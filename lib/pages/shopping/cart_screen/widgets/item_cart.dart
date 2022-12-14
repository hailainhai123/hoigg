import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hoigg/models/product_shop.dart';
import 'package:hoigg/pages/shopping/cart_screen/controller/cart_controller.dart';
import 'package:hoigg/widgets/stateless_widgets/out_container_button.dart';

import '../../../../constants/theme.dart';
import '../../../../utils/styles.dart';
import '../../../../widgets/stateful_widgets/touchable_opacity.dart';

class ItemCartShopping extends StatefulWidget {
  final double width;
  final ProductShop product;
  final int index;

  ItemCartShopping(
      {Key? key,
      required this.width,
      required this.product,
      required this.index})
      : super(key: key);

  @override
  State<ItemCartShopping> createState() => _ItemCartShoppingState();
}

class _ItemCartShoppingState extends State<ItemCartShopping> {
  final CartController controller = Get.find();

  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    count = controller.items[widget.index].countInCart!;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 158 / 310,
        child: Container(
          width: widget.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xffF8F9FF),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          child: Column(
            children: [
              Expanded(
                  child: AspectRatio(
                aspectRatio: 1,
                child: widget.product.urlImage == ""
                    ? SvgPicture.asset('assets/svg/image_product_demo.svg')
                    : Image.network(widget.product.urlImage),
              )),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.product.name,
                      style: TextStyle(color: Color(0xff19191D), fontSize: 12)),
                  Row(
                    children: [
                      Text('${widget.product.price} xu',
                          style: TextStyle(
                              color: Color(0xff5365FD),
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                      Text('-${widget.product.salePercent}%',
                          style: TextStyle(color: Color(0xff75818F)))
                    ],
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 4.5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 16,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Color(0xffFB8200),
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text('${widget.product.starRate}',
                            style: TextStyle(color: Color(0xff5E6366))),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Text('M??u s???c',
                          style: TextStyle(color: Color(0xff474747))),
                      Container(
                        margin: const EdgeInsets.only(left: 8),
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color(0xffD0D0D0CC),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              for (var color in widget.product.listColorProduct)
                                Container(
                                  margin: const EdgeInsets.only(left: 2),
                                  decoration: BoxDecoration(
                                      color: color,
                                      borderRadius: BorderRadius.circular(10)),
                                  width: 20,
                                  height: 20,
                                )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('S??? l?????ng'),
                        Row(
                          children: [
                            TouchableOpacity(
                              onTap: () {
                                if (count == 1) return;
                                setState(() {
                                  count--;
                                });
                                controller.updateCountInCart(
                                    widget.product, count);
                              },
                              child: Container(
                                color: Color(0xffF3F3F3),
                                height: 16,
                                width: 16,
                                child: Center(
                                    child: Text('-',
                                        style: TextStyle(
                                            color: Color(0xffA6A6A6)))),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text('$count'),
                            ),
                            TouchableOpacity(
                              onTap: () {
                                // int value = count++;
                                setState(() {
                                  count++;
                                });
                                controller.updateCountInCart(
                                    widget.product, count);
                              },
                              child: Container(
                                color: const Color(0xffF3F3F3),
                                height: 16,
                                width: 16,
                                child: const Center(
                                    child: Text('+',
                                        style: TextStyle(
                                            color: Color(0xffA6A6A6)))),
                              ),
                            ),
                          ],
                        ),
                        TouchableOpacity(
                            child: const Icon(Icons.delete_outline,
                                color: Color(0xffEB8195)),
                            onTap: () {
                              Get.defaultDialog(
                                  title: 'Xo?? s???n ph???m',
                                  titlePadding: EdgeInsets.only(top: 30),
                                  titleStyle: Styles.titleDiaglog,
                                  content: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0),
                                    child: Text(
                                      'B???n c?? ch???c mu???n xo?? s???n ph???m kh???i gi??? h??ng?',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  actions: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/5),
                                      child: OutContainerButton(
                                          textButton: 'Xo??', onTap: () {
                                        controller.items.remove(widget.product);
                                        controller.update();
                                        Get.back();
                                      }),
                                    )
                                  ]);
                            })
                      ],
                    ),
                  )
                ],
              ))
            ],
          ),
        ));
  }
}
