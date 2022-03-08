import 'dart:ui';

import 'package:coffee/components/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0c0f14),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage('images/coffee1.jpeg'),
                                fit: BoxFit.cover)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).size.height * .2,
                                  decoration: BoxDecoration(
                                    color: Color(0xff311d18).withOpacity(0.6),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Cappuccino',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 20),
                                                        ),
                                                        SizedBox(
                                                          height: 3,
                                                        ),
                                                        Text(
                                                          'With Oat Milk',
                                                          style: TextStyle(
                                                              fontSize: 10,
                                                              color: Color(
                                                                  0xffaeaeae)),
                                                        ),
                                                        SizedBox(
                                                          height: 3,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Icon(
                                                              Icons.star,
                                                              color: Color(
                                                                  0xffd17842),
                                                            ),
                                                            Text(
                                                              '\t4.5\t',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                              child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Container(
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff141921),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        SvgPicture.asset(
                                                          'images/coffeeicon.svg',
                                                          height: 20,
                                                          color:
                                                              Color(0xffd17842),
                                                        ),
                                                        Text(
                                                          'Coffee',
                                                          style: TextStyle(
                                                              fontSize: 10,
                                                              color: Color(
                                                                  0xffaeaeae)),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff141921),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        SvgPicture.asset(
                                                          'images/milkicon.svg',
                                                          height: 20,
                                                          color:
                                                              Color(0xffd17842),
                                                        ),
                                                        Text(
                                                          'Milk',
                                                          style: TextStyle(
                                                              fontSize: 10,
                                                              color: Color(
                                                                  0xffaeaeae)),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                ],
                                              ),
                                              MaterialButton(
                                                child: Text(
                                                  'Medium Roasted',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Color(0xffaeaeae)),
                                                ),
                                                onPressed: () {},
                                                minWidth: 120,
                                                color: Color(0xff101419),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              )
                                            ],
                                          ))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),


            
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color(0xff141921),
                                  borderRadius: BorderRadius.circular(10)),
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back_ios_new,
                                  size: 20,
                                  color: Color(0xffaeaeae),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Color(0xff141921),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.favorite,
                                        size: 20,
                                        color: Color(0xffaeaeae),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20 ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Description', style:TextStyle(
                      fontSize: 20,
                      color: Color(0xffaeaeae)
                    ),),
                    Column(
                      children: [
                        Text('A cappuccino is a coffee-based drink made',style: TextStyle(
                          color: Colors.white
                        ),),
                        SizedBox(height: 10,),
                        Row(children: [
                          Text('primarily from espresso and milk', style: TextStyle(
                            color: Colors.white
                          ),),
                          Text('...Read more', style: TextStyle(
                              color: Color(0xffb25e2b)
                          ),)
                        ],)
                      ],
                    ),
                    Text('Size', style:TextStyle(
                        fontSize: 20,
                        color: Color(0xffaeaeae)
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(onPressed: (){},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: Color(0xffb25e2b)
                          )
                        ),
                        child: Text(
                          'S', style: TextStyle(
                          color: Color(0xffb86b3c)
                        ),
                        ),
                        ),
                        MaterialButton(onPressed: (){},
                          color: Color(0xff141921),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),

                          ),
                          child: Text(
                            'M', style: TextStyle(
                              color: Color(0xffb86b3c)
                          ),
                          ),
                        ),
                        MaterialButton(onPressed: (){},
                          color: Color(0xff141921),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),

                          ),
                          child: Text(
                            'L', style: TextStyle(
                              color: Color(0xffb86b3c)
                          ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text('Price', style: TextStyle(
                              color: Color(0xffaeaeae)
                            ),),
                            SizedBox(height: 3,),
                            Row(
                              children: [
                                Text('\$\t',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffd17842)
                                ),),
                                Text(' 4.20', style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),)
                              ],
                            )
                          ],
                        ),
                        SizedBox(width: 50,),
                        MaterialButton(onPressed: (){},
                        height: 55,
                        minWidth: 200,
                        color: Color(0xffd17842),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                          child: Text(
                            'Buy Now', style: TextStyle(
                            color: Colors.white
                          ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
