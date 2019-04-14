import 'package:art_gallery_app/atoms/imageWithBorderRadius.dart';
import 'package:flutter/material.dart';

class BottomPanelComponent extends StatelessWidget {
  const BottomPanelComponent({
    Key key,
  }) : super(key: key);

  List<Widget> _buildRowOfImages() {
    List profileImages = [
      'https://images-na.ssl-images-amazon.com/images/M/MV5BNjc3NTI5Mzk2NV5BMl5BanBnXkFtZTgwMDgzNjM2MDI@._V1_UX172_CR0,0,172,256_AL_.jpg',
      'https://pbs.twimg.com/profile_images/1037904400302239744/aL0MGHDT.jpg',
      'https://images-na.ssl-images-amazon.com/images/M/MV5BMTYyOTQ2NjkyMl5BMl5BanBnXkFtZTcwODk5NjQzOA@@._V1_UY256_CR5,0,172,256_AL_.jpg'
    ];
    List<Widget> listOfImageComponents = [];
    profileImages.forEach((f) {
      listOfImageComponents.add(new ImageWithBorderRadius(
        src: f,
        radius: 5,
        dimension: 45,
      ));
    });
    return listOfImageComponents;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.only(
          left: 35,
          right: 25,
          top: 30,
          bottom: 40,
        ),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromRGBO(19, 21, 57, 1),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Popular Artist',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: Theme.of(context).textTheme.subtitle.fontWeight,
                    fontFamily: Theme.of(context).textTheme.subtitle.fontFamily,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    top: 3,
                  ),
                  width: 50,
                  height: 2,
                  color: Colors.grey.shade800,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: _buildRowOfImages(),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.pink.shade400,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_right),
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
