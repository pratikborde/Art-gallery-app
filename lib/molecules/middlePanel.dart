import 'package:flutter/material.dart';

class MiddlePanelComponent extends StatefulWidget {
  @override
  _MiddlePanelComponentState createState() => _MiddlePanelComponentState();
}

class _MiddlePanelComponentState extends State<MiddlePanelComponent> {
  List listOfArt = [
    'https://i.pinimg.com/originals/9e/e9/8f/9ee98f8eb42e7e145a7e292cd859f097.jpg',
    'http://harmonyfinearts.org/wp-content/uploads/2015/09/Van-gogh-Starry-Night.jpg',
    'https://i.pinimg.com/originals/0c/69/b2/0c69b222d530ec8d598212e48b02c711.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 50,
        ),
        child: ListView.builder(
          padding: EdgeInsets.only(
            left: 35,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: listOfArt.length,
          itemBuilder: _renderCards,
        ),
      ),
    );
  }

  Widget _renderCards(BuildContext context, i) {
    var currentImage = listOfArt[i];
    return Container(
      width: 270,
      margin: EdgeInsets.only(
        right: 30,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _renderCardImage(currentImage),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 10,
                            ),
                            child: Text(
                              'Van Gogh',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .title
                                    .fontWeight,
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .title
                                    .fontFamily,
                              ),
                            ),
                          ),
                          Text(
                            'The sister troop 09, 2019',
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontFamily:
                                  Theme.of(context).textTheme.title.fontFamily,
                              fontWeight: Theme.of(context)
                                  .textTheme
                                  .subtitle
                                  .fontWeight,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Mauris accumsan eros eget lib.',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: RaisedButton(
                        color: Color.fromRGBO(19, 21, 57, 1),
                        padding: EdgeInsets.symmetric(
                          horizontal: 35,
                        ),
                        onPressed: () {},
                        child: Text(
                          'Save',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Expanded _renderCardImage(currentImage) {
    return Expanded(
      flex: 1,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Image.network(
          currentImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
