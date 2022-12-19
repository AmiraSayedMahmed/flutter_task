import 'package:flutter/material.dart';
import 'package:flutter_task/view/cart_screen.dart';
import 'package:flutter_task/view/home_screen.dart';
import 'package:flutter_task/view/news.dart';

import './categories_screen.dart';
import 'favorite_screen.dart';

class BottomNavBar extends StatefulWidget {

  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Map<String, dynamic>> ?_pages ;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': CategoriesScreen(),
        'title': 'Categories',
      },
      {
        'page': NewsScreen(),
        'title': 'News Screen',
      },
      {
        'page': HomeScreen(),
        'title': 'Home Screen',
      },
      {
        'page': FavoriteScreen(),
        'title': 'Your Favorite',
      },
      {
        'page': CartScreen(),
        'title': 'Your Cart',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${_pages![_selectedPageIndex]['title']}'),
      ),
      body: _pages![_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: Text("Category"),
              ),
              label: '',
              icon: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Icon(Icons.category_outlined)
              )), //category
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: Text("News"),
              ),
              label: '',
              icon: Padding(
                padding:  EdgeInsets.only(top: 20),
                 child: Icon(Icons.newspaper),
              )), //news
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: Text("Home"),
              ),
              label: '',
              icon: Padding(
                padding:  EdgeInsets.only(top: 20),
                 child: Icon(Icons.home),
              )), //news

          BottomNavigationBarItem(
              activeIcon: Padding(
                padding:  EdgeInsets.only(top: 25.0),
                child: Text("Favorite"),
              ),
              label: '',
              icon: Padding(
                padding:  EdgeInsets.only(top: 20),
                 child: Icon(Icons.favorite),
              )),//favorite
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding:  EdgeInsets.only(top: 25.0),
                child: Text("Cart"),
              ),
              label: '',
              icon: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Icon(Icons.shopping_cart)
              )), //cart
        ],
        unselectedItemColor: Colors.black,
        currentIndex: _selectedPageIndex,
        onTap: _selectPage,
        elevation: 0,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.red,
      ),


/*
      BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            label:'Categories',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
*/
    );
  }
}
