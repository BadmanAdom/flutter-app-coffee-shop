import 'package:coffee/components/DetailsPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildCoffeeCategory({String? categoryName, bool? isSelected}) {
      return Container(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          children: [
            Text(
              categoryName!,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isSelected! ? Color(0xffd17842) : Color(0xff52555a)),
            ),
            isSelected
                ? Text('☕',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xffd17842)))
                : Text(''),
          ],
        ),
      );
    }

    Widget buildSingleItem(
        {String? images,
        String? title,
        String? subtitle,
        double? price,
        double? rating}) {
      return GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => DetailsPage()));
        },
        child: Container(
          height: MediaQuery.of(context).size.height * .3,
          width: MediaQuery.of(context).size.width * .5,
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color(0xff17191f),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 2,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(images!), fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2.0,
                                  spreadRadius: 1.0,
                                  color: Color(0xff30221f))
                            ]),
                      ),
                      Container(
                        height: 20,
                        width: 55,
                        decoration: BoxDecoration(
                            color: Color(0xff231715),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(15))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.star,
                              size: 12,
                              color: Color(0xffd17842),
                            ),
                            Text(
                              '$rating',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title!,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    subtitle!,
                    style: TextStyle(fontSize: 10, color: Color(0xffaeaeae)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '\$\t',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffd17842)),
                          ),
                          Text(
                            '$price',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffd17842),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              )),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff0c0f14),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Color(0xff141921),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.grid_view_rounded,
                        color: Color(0xff4d4f52),
                        size: 20,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Color(0xff141921),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('images/profile.png'))),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Find the best',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      'coffee for you',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20)),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xff52555a),
                            ),
                            fillColor: Color(0xff141921),
                            filled: true,
                            hintText: 'Find your coffee',
                            hintStyle: TextStyle(color: Color(0xff52555a))),
                      ),
                    ),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          buildCoffeeCategory(
                              categoryName: 'Cappuccino ', isSelected: true),
                          buildCoffeeCategory(
                              categoryName: 'Expresso ', isSelected: false),
                          buildCoffeeCategory(
                              categoryName: 'Latte ', isSelected: false),
                          buildCoffeeCategory(
                              categoryName: 'Regular ', isSelected: false),
                          buildCoffeeCategory(
                              categoryName: 'Sugary ', isSelected: false),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          buildSingleItem(
                              images: 'images/coffee1.jpeg',
                              title: 'Capuccino',
                              subtitle: 'With Oat Milk',
                              price: 6.29,
                              rating: 4.5),
                          buildSingleItem(
                              images: 'images/coffee2.jpeg',
                              title: 'Capuccino',
                              subtitle: 'With Oat Milk',
                              price: 6.29,
                              rating: 4.8),
                          buildSingleItem(
                              images: 'images/coffee3.jpeg',
                              title: 'Capuccino',
                              subtitle: 'With Oat Milk',
                              price: 6.29,
                              rating: 4.3),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'Special For You',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * .2,
                          decoration: BoxDecoration(
                              color: Color(0xff171b22),
                              borderRadius: BorderRadius.circular(25)),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                  child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('images/coffee5.jpeg'),
                                        fit: BoxFit.cover),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 2,
                                          spreadRadius: 1,
                                          color: Color(0xff30221f))
                                    ]),
                              )),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '5 Coffee Beans you\n Must Try!',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text(
                                        'With Oat Milk',
                                        style: TextStyle(
                                            color: Color(0xffaeaeae),
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '\$\t4.29',
                                            style: TextStyle(
                                                color: Color(0xffd17842),
                                                fontWeight: FontWeight.w400),
                                          ),

                                          Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xffd17842),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Icon(
                                              Icons.add,
                                              size: 30,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),

                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 25,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color(0xff231715),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(15))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.star,
                                size: 12,
                                color: Color(0xffd17842),
                              ),
                              Text(
                                '4.2',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
