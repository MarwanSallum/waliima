import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waliima_app/size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> categories = [
      {"icon": 'assets/icons/sheep.svg', 'text': 'غنم'},
      {"icon": 'assets/icons/sheep.svg', 'text': 'غنم'},
      {"icon": 'assets/icons/sheep.svg', 'text': 'غنم'},
      {"icon": 'assets/icons/sheep.svg', 'text': 'غنم'},
      {"icon": 'assets/icons/sheep.svg', 'text': 'غنم'},
    ];

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length,
                (index) => CategoryCard(
              icon: categories[index]['icon'],
              text: categories[index]['text'],
              onTap: (){},
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.onTap,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                decoration: BoxDecoration(
                  color: Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            const SizedBox(height: 5,),
            Text(text, textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}
