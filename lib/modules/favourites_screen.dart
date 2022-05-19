import 'package:flutter/material.dart';
import 'package:grad_project/models/favourites_model.dart';
import 'package:like_button/like_button.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {

  var isFavourite = true;

  List<FavouritesModel> favourites = [
    FavouritesModel(
      id:1,
      name:'Ideaspace workspace',
      image: 'assets/images/space2.jpg',
      location: 'ElNozha,Cairo',
      isFavourite: true,
    ),
    FavouritesModel(
      id:2,
      name:'Elkhaima',
      image: 'assets/images/space1.jpg',
      location: 'Dokki,Giza',
      isFavourite: false,
    ),
    FavouritesModel(
      id:3,
      name:'Zeus',
      image: 'assets/images/space3.jpg',
      location: 'Dokki,Giza',
      isFavourite: true,
    ),
    FavouritesModel(
      id:4,
      name:'Ideaspace workspace',
      image: 'assets/images/space2.jpg',
      location: 'ElNozha,Cairo',
      isFavourite: true,
    ),
    FavouritesModel(
      id:5,
      name:'Elkhaima',
      image: 'assets/images/space1.jpg',
      location: 'Dokki,Giza',
      isFavourite: false,
    ),
    FavouritesModel(
      id:6,
      name:'Zeus',
      image: 'assets/images/space3.jpg',
      location: 'Dokki,Giza',
      isFavourite: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.separated(
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildFavouriteItem(favourites[index]),
                itemCount: favourites.length,
                separatorBuilder: (context, index) => SizedBox(
                  height: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

<<<<<<< HEAD

  Widget buildFavouriteItem(FavouritesModel favourite) => Container(
=======
  Widget buildFavouriteItem(FavouritesModel favourite) =>  Container(
    width: double.infinity,
    height: 220,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      image:DecorationImage(
        image: AssetImage('${favourite.image}'),
        fit: BoxFit.cover,
      ),
    ),
>>>>>>> 851f02f40d03857649ce1b2c949f965fec2db2b3
    child: Padding(
      padding: const EdgeInsets.only(top:15.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white30.withOpacity(0.8),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          height: 50,
          width: double.infinity,
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "${favourite.name}",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 18.0,
                            color:Colors.black,
                          ),
                        ),
                      ),
                      LikeButton(
                        isLiked: favourite.isFavourite,
                        likeBuilder: (isLiked){
                          final color = isLiked ? Colors.red : Colors.grey;
                          return Icon(
                            isLiked ? Icons.favorite_outlined : Icons.favorite_outline,
                            color: color,
                            size: 50.0,
                          );
                        },
                        onTap: (isLiked) async {
                          return !isLiked;
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "${favourite.location}",
                          style: TextStyle(
                            fontSize: 17.0,
                            color:Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
