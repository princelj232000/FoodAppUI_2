import 'package:flutter/material.dart';
import 'package:food_app_ui/components/ImageCarousel.dart';
import 'package:food_app_ui/components/restaurant_info_medium_card.dart';
import 'package:food_app_ui/components/section_title.dart';
import 'package:food_app_ui/constants.dart';
import 'package:food_app_ui/demoData.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
            slivers: [
              SliverAppBar(
                centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
            floating: true,
            title: Column(
              children: [
                Text("Delivery to".toUpperCase(),
                  style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: kActiveColor),
                ),
                Text("San Francisco",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text("Filter",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: ImageCarousel(), 
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: "Featured Partners",
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: 
                  List.generate(demoMediumCardData.length, 
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: RestaurantInfoMediumCard(
                      title: demoMediumCardData[index]['name'],
                      location: demoMediumCardData[index]['location'],
                      image: demoMediumCardData[index]['image'],
                      deliveryTime: demoMediumCardData[index]['deliverTime'],
                      rating: demoMediumCardData[index]['rating'],
                      press: (){},
                    ),
                  ),
                ),             
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: Image.asset("images/big_1.jpg"),
            ),
          ),
          
          SliverPadding(
            padding: EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: "Best Pick",
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: 
                  List.generate(demoMediumCardData.length, 
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: RestaurantInfoMediumCard(
                      title: demoMediumCardData[index]['name'],
                      location: demoMediumCardData[index]['location'],
                      image: demoMediumCardData[index]['image'],
                      deliveryTime: demoMediumCardData[index]['deliverTime'],
                      rating: demoMediumCardData[index]['rating'],
                      press: (){},
                    ),
                  ),
                ),             
              ),
            ),
          ),
        ],
      ),
    );
  }
}

