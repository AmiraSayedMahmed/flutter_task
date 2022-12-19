


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../controller/cart_controller.dart';
import '../dummy_data/dummy_cart_data.dart';
import 'custom_widgets/custom_text_widget.dart';
class CartScreen extends StatelessWidget {
   const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(top: 50.sp , left: 15.sp),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 10.sp),
              child: CustomTextWidget(text: 'Cart' ,
                fontFamily: 'Pacifico',
                color: Colors.black,
                fontWeight: FontWeight.bold, fontSize: 20.sp,),
            ),
           const SizedBox(height: 25,),

            Expanded(
                child: ListView(
                  itemExtent: 100,
                  children: DUMMY_CART
                      .map(
                        (cartData) => ListItem(
                          cartData.productName,
                          cartData.amount,
                          cartData.color,
                          cartData.price,
                    ),
                  )
                      .toList(),
                )
              ),

          ],
        ),
      ),
    );
  }
}
class ListItem extends StatelessWidget {
  final String name;
  final String amount;
  final Color color;
  final int price;
  const ListItem(this.name, this.amount, this.color, this.price, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ModifyQuantities>(
        init: ModifyQuantities(),
        builder: (value) => Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: color,
          ),
          width: 70,
          height: 70,
        ),
        const SizedBox(width: 20,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextWidget(
              text: name,
              color: Colors.black,
              fontSize: 15,
            ),
            const SizedBox(height: 5,),
            CustomTextWidget(
              text: amount,
              color: Colors.grey,
              fontSize: 12,
            ),
            const SizedBox(height: 5,),
            CustomTextWidget(text: '\$ $price',
              color: const Color(0xffD1919F),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      const SizedBox(width: 80,),
         Row(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             value.counter != 0 ? IconButton(
                onPressed: value.decrement,
                icon: Container(

                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xffB0EAFD),
                  ),

                  child: const Icon(
                    Icons.minimize ,size: 30 ,
                    color: Color(0xff47B6DA),
                  ),
                ),
              ) : Container(),
              const SizedBox(width: 10,),

              CustomTextWidget(
                alignment: Alignment.center,
                text: '${value.counter}',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            const  SizedBox(width: 10,),

              IconButton(
                onPressed:  value.increment ,
                icon: Container(

                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xffB0EAFD),
                  ),

                  child: const Icon(Icons.add ,size: 30 ,
                    //0xff47B6DA
                    color: Color(0xff47B6DA),
                  ),
                ),
              ),


            ],
          ),

      ],
    ));
  }
}
