import 'package:art_gallery_app/atoms/imageWithBorderRadius.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String url =
        'https://images-na.ssl-images-amazon.com/images/M/MV5BMTQwMDQ0NDk1OV5BMl5BanBnXkFtZTcwNDcxOTExNg@@._V1_UY256_CR2,0,172,256_AL_.jpg';
    return Container(
      padding: EdgeInsets.only(
        top: 20,
      ),
      height: 120,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 35,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Browse',
              style: TextStyle(
                fontSize: 36,
                fontWeight: Theme.of(context).textTheme.title.fontWeight,
                fontFamily: Theme.of(context).textTheme.title.fontFamily,
              ),
            ),
            new ImageWithBorderRadius(
              src: url,
              radius: 100,
              dimension: 35,
            ),
          ],
        ),
      ),
    );
  }
}
