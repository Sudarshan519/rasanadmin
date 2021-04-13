import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rasanadmin/src/pages/profile.dart';

import 'add_product.dart';

class AllOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text('ShopHome'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.shop),
                  text: 'My Orders',
                ),
                Tab(
                  icon: Icon(Icons.shop),
                  text: ' Shipping',
                ),
                Tab(
                  icon: Icon(Icons.shop),
                  text: 'Completed',
                ),
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(),
                  otherAccountsPictures: [CircleAvatar(),
                  CircleAvatar()],
                    accountName: Text('RasanMart'), accountEmail: Text('myshop@gmail.com')),
                ListTile(
                  onTap: (){
                    Get.to(Profile());
                  },
                  title: Text('Profile'),
                ),ListTile(
                  onTap: (){

                    Get.to(ProductUpload());
                  },
                  title: Text('Add Product'),
                ),
                 ListTile(
                  title: Text('My Products'),
                ),
                ListTile(
                  title: Text('Log out'),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(itemBuilder: (_, int i) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    child: Icon(Icons.person),
                  ),
                  title: Text('My orders'),
                  subtitle: Row(children: [
                    Text('2010-2-13,13.040.'),
                    Container(
                      height: 25,
                      child: TextButton(
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.red),
                        onPressed: () {},
                        child: Text(
                          'View Details',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: Theme.of(context).buttonColor),
                        ),
                      ),
                    )
                  ]),
                  trailing: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border:
                                  Border.all(color: Colors.grey, width: .3)),
                          child: Text(
                            'not reviewed',
                            style: TextStyle(color: Colors.grey, fontSize: 8),
                          )),
                      SizedBox(
                        height: 4,
                      ),
                    ],
                  ),
                );
              }),
              Container(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(''),
              )),
              Container(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(''),
              )),
            ],
          )),
    );
  }
}
