import 'package:flutter/material.dart';

Widget restaurantListItem({
  String imageUrl, 
  String name, 
  String description, 
  double ratting, 
  int mins, 
  int price,
}) =>
Container(
  padding: EdgeInsets.symmetric(horizontal: 16),
  margin: EdgeInsets.only(bottom: 40),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

      // food image container start
      Container(
        child: Image(
          height: 80,
          width: 80,
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      // food image container end

      // food info start
      Expanded(
        child: Container(
          margin: EdgeInsets.only(left: 15),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              
              Container(
                child: Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff3d4152),
                    fontWeight: FontWeight.w600,
                  )
                ),
              ),

              Text(
                description,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff7e808c),
                  fontWeight: FontWeight.w600,
                )
              ),

              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  "50% off | Use coupon WELCOME50",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff7e808c),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              
              Divider(),

              Container(
                child: Row(
                  children: <Widget>[

                    Icon(
                      Icons.star,
                      size: 11.9,
                      color: Color(0xff7e808c)
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "$ratting",
                        style: TextStyle(
                          fontSize: 11,
                          color: Color(0xff7e808c),
                        ),
                      )
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: 2,
                        width: 2,
                        color: Color(0xff7e808c),
                      ),
                    ),

                    Container(
                      child: Text(
                        "$mins MINS",
                        style: TextStyle(
                          fontSize: 11,
                          color: Color(0xff7e808c),
                        ),
                      )
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: 2,
                        width: 2,
                        color: Color(0xff7e808c),
                      ),
                    ),

                    Container(
                      child: Text(
                        "₹ $price FOR TWO",
                        style: TextStyle(
                          fontSize: 11,
                          color: Color(0xff7e808c),
                        ),
                      )
                    ),

                  ],
                ),
              )

            ],
          ),
        ),
      )
      // food info end

    ],
  ),
);