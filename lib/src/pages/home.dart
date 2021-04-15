import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rasanadmin/src/controller/home_controller.dart';

class AllOrders extends StatelessWidget {
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('ShopHome'),
        //   bottom: TabBar(
        //     tabs: [
        //       Tab(
        //         icon: Icon(Icons.shop),
        //         text: 'My Orders',
        //       ),
        //       Tab(
        //         icon: Icon(Icons.shop),
        //         text: ' Shipping',
        //       ),
        //       Tab(
        //         icon: Icon(Icons.shop),
        //         text: 'Completed',
        //       ),
        //     ],
        //   ),
        // ),
        // drawer: Drawer(
        //   child: ListView(
        //     children: [
        //       UserAccountsDrawerHeader(
        //         currentAccountPicture: CircleAvatar(),
        //         otherAccountsPictures: [CircleAvatar(),
        //         CircleAvatar()],
        //           accountName: Text('RasanMart'), accountEmail: Text('myshop@gmail.com')),
        //       ListTile(
        //         onTap: (){
        //           Get.to(Profile());
        //         },
        //         title: Text('Profile'),
        //       ),ListTile(
        //         onTap: (){

        //           Get.to(ProductUpload());
        //         },
        //         title: Text('Add Product'),
        //       ),
        //        ListTile(
        //         title: Text('My Products'),
        //       ),
        //       ListTile(
        //         title: Text('Log out'),
        //       ),
        //     ],
        //   ),
        // ),
        body: SafeArea(
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Obx(
          () => Container(
            width: homeController.width.value,
            // padding: EdgeInsets.only(top:40),
            color: Colors.grey[850],
            height: MediaQuery.of(context).size.height,
            child: Column(children: [
              SizedBox(height: 30),
              FlutterLogo(
                size: 50,
              ),
              SizedBox(height: 20),
              Container(
                height: 1,
                color: Colors.grey[500],
              ),
              SizedBox(height: 30),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(width: 10),
                Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                if (homeController.width.value == 140)
                  Text(
                    'DashBoard',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
              ]),
              SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Get.to(OrderPage());
                },
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  SizedBox(width: 10),
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  if (homeController.width.value == 140)
                    Text(
                      'Orders',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )
                ]),
              ),
              SizedBox(height: 30),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(width: 10),
                Icon(
                  Icons.people,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                if (homeController.width.value == 140)
                  Text(
                    'Customer',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
              ]),
              SizedBox(height: 30),
              Icon(
                Icons.open_in_browser,
                color: Colors.white,
              ),
              SizedBox(height: 30),
              Icon(
                Icons.language,
                color: Colors.white,
              ),
              SizedBox(height: 30),
              Icon(
                Icons.report,
                color: Colors.white,
              ),
              SizedBox(height: 30),
              Expanded(
                child: SizedBox(height: 10),
              ),
              InkWell(
                  onTap: () {
                    if (homeController.width.value != 140)
                      homeController.width.value = 140;
                    else
                      homeController.width.value = 50;
                  },
                  child: homeController.width.value != 140
                      ? Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        )
                      : Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
              SizedBox(height: 40)
            ]),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(children: [
            Obx(
              () => Container(
                  width: MediaQuery.of(context).size.width -
                      homeController.width.value,
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        padding: EdgeInsets.only(top: 20, left: 20, right: 10),
                        width: double.infinity,
                        color: Colors.green,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mechanic Admin  ',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                              color: Colors.white,
                            ),
                            Spacer(),
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              backgroundImage: NetworkImage(
                                  'https://lh3.googleusercontent.com/-TJ4K4KHhQkk/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucnO0KqtmeWm40Cuo4dcfflkUghLoA/photo.jpg?sz=46'),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
            Positioned(
                left: 30,
                top: 170,
                child: Container(
                  height: 200,
                  padding: EdgeInsets.only(left: 20, top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[400],
                  ),
                  width: 300,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'This Week',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
                        Container(
                          // padding: EdgeInsets.only(left:30),
                          decoration: BoxDecoration(
                              //border: Border.all(color:Colors.grey,width: 3,),
                              //color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10)),
                          height: 120,
                          child: CustomPaint(
                            foregroundPainter: GraphPainter(),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Mon'),
                            SizedBox(width: 15),
                            Text('Tue'),
                            SizedBox(
                              width: 15,
                            ),
                            Text('Wed'),
                            SizedBox(
                              width: 15,
                            ),
                            Text('Fri'),
                            SizedBox(
                              width: 20,
                            ),
                            Text('Sat')
                          ],
                        )
                      ]),
                )),
            Positioned(
              left: 30,
              top: 380,
              child: Container(
                decoration: BoxDecoration(

                    //color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(5)),
                height: 100,
                width: 310,
                child: Row(
                  children: [
                    VerticalDivider(),
                    Column(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        SizedBox(height: 20),
                        Container(width: 280, color: Colors.red, height: 1),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(10),
                    //  color: Colors.grey,
                    ),
                height: MediaQuery.of(context).size.height * .26,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, int i) {
                      return Container(
                        padding: EdgeInsets.only(left: 20),
                        width: 300,
                        decoration: BoxDecoration(
                            //border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(20)),

                        //  color: Colors.indigo,
                        height: MediaQuery.of(context).size.height * .26,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 100,
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20)),
                                        gradient: LinearGradient(colors: [
                                          Colors.purple,
                                          Colors.blue
                                        ])),
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 100,
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20)),
                                        gradient: LinearGradient(colors: [
                                          Colors.redAccent,
                                          Colors.purple
                                        ])),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Flutter Test ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Flutter Test ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            // Container(
                            //     alignment: Alignment.center,
                            //     child: Card(child: Text('Products')))
                          ],
                        ),
                      );
                    }),
              ),
            )
          ]),
        ),
      ]),
    )

        // TabBarView(
        //   children: [
        //     ListView.builder(itemBuilder: (_, int i) {
        //       return ListTile(
        //         leading: Container(
        //           height: 40,
        //           width: 40,
        //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.grey),
        //           child: Icon(Icons.person),
        //         ),
        //         title: Text('My orders'),
        //         subtitle: Row(children: [
        //           Text('2010-2-13,13.040.'),
        //           // Container(
        //           //   height: 25,
        //           //   child: TextButton(
        //           //     style:
        //           //         TextButton.styleFrom(backgroundColor: Colors.red),
        //           //     onPressed: () {},
        //           //     child: Text(
        //           //       'View Details',
        //           //       style: TextStyle(
        //           //           fontSize: 10,
        //           //           fontWeight: FontWeight.w300,
        //           //           color: Theme.of(context).buttonColor),
        //           //     ),
        //           //   ),
        //           // )
        //         ]),
        //         trailing: Column(
        //           children: [
        //             Container(
        //               height: 20,
        //               width: 50,
        //               alignment: Alignment.center,
        //                 padding: EdgeInsets.all(3),
        //                 decoration: BoxDecoration(
        //                     borderRadius: BorderRadius.circular(5),
        //                     border:
        //                         Border.all(color: Colors.redAccent, width: .3)),
        //                 child: Text(
        //                   'New',
        //                   style: TextStyle(color: Colors.redAccent, fontSize: 12,fontWeight: FontWeight.bold),
        //                 )),
        //             SizedBox(
        //               height: 4,
        //             ),
        //           ],
        //         ),
        //       );
        //     }),
        //     Container(
        //         child: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(''),
        //     )),
        //     Container(
        //         child: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(''),
        //     )),
        //   ],
        // )
        );
  }
}

class OrderPage extends StatelessWidget {
  const OrderPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Text('All Orders',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
        ]),
      ),
    );
  }
}

class GraphPainter extends CustomPainter {
  Paint trackBarPaint = Paint()
    ..color = Colors.grey
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 12;

  Paint trackPaint = Paint()
    ..color = Colors.red
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 12;

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Path trackBarPath = Path();
    Path trackPath = Path();
    List val = [
      size.height * .8,
      size.height * .4,
      size.height * .5,
      size.height * .6,
      size.height * .6,
    ];
    double origin = 8;
    for (int i = 0; i < val.length; i++) {
      trackPath.moveTo(origin, size.height);
      trackPath.lineTo(origin, 0);

      trackBarPath.moveTo(origin, size.height);
      trackBarPath.lineTo(origin, val[i]);
      origin = origin + 190 * .22;
    }

    canvas.drawPath(trackPath, trackPaint);
    canvas.drawPath(trackBarPath, trackBarPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
