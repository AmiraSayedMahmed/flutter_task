
import 'package:flutter/material.dart';
import 'package:flutter_task/view/custom_widgets/custom_text_widget.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            children: [
              _searchTextFormField(),
               SizedBox(
                height: 5.h,
              ),
              CustomTextWidget(
                text: "Categories",
              ),
             SizedBox(
                height: 5.h,
              ),
              _listViewCategory(),
               SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextWidget(
                    text: "Best Selling",
                    fontSize: 18.sp,
                  ),
                  CustomTextWidget(
                    text: "See all",
                    fontSize: 16.sp,
                  ),
                ],
              ),
               SizedBox(
                height: 5.h,
              ),
              _listViewProducts(),
              SizedBox(
                height: 5.h,
              ),
              TextButton(
                  onPressed: (){},
                  child: CustomTextWidget(
                text: 'Go to Your Cart',
                    color: Colors.cyan.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.sp,
                    alignment: Alignment.bottomRight,
              ))

            ],
          ),
        ),
      ),

    );
  }
}

Widget _searchTextFormField() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.grey.shade200,
    ),
    child: TextFormField(
      decoration: const InputDecoration(
        border: InputBorder.none,
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black,
        ),
      ),
    ),
  );
}

Widget _listViewCategory() {
  return Container(
      height: 15.h,
      child: ListView.separated(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.shade100,
                ),
                height: 10.h,
                width: 20.w,
                child: Padding(
                  padding:  EdgeInsets.all(8.0.sp),
                  child: Image.asset('assets/images/category.png'),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomTextWidget(
                text: 'Categories',
              ),
            ],
          );
        },
        separatorBuilder: (context, index) =>  SizedBox(
          width: 6.w,
        ),
      ),

  );
}

Widget _listViewProducts() {
  return Container(
      height: 350,
    child: ListView.separated(
      itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              width: MediaQuery.of(context).size.width * .4,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade100,
                    ),
                    child: Container(
                        height: 220,
                        width: MediaQuery.of(context).size.width * .4,
                        child: Image.asset(
                          'assets/images/salmon.png',
                          fit: BoxFit.fill,
                        )),
                  ),
                 const SizedBox(
                    height: 20,
                  ),
                  CustomTextWidget(
                    text: 'Product Name',
                    alignment: Alignment.bottomLeft,
                  ),
                 const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: CustomTextWidget(
                      text: 'Product Discrbtion',
                      color: Colors.grey,
                      alignment: Alignment.bottomLeft,
                    ),
                  ),
                const SizedBox(
                    height: 20,
                  ),
                  CustomTextWidget(
                    text:
                        " 20 \$",
                    color: Colors.cyan,
                    alignment: Alignment.bottomLeft,
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 20,
        ),
      ),
  );
}
