import 'package:flutter/material.dart';
import 'package:grad_project/models/favourites_model.dart';
import 'package:grad_project/shared/components/components.dart';
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
              SizedBox(
                height: 10.0,
              ),
              ListView.separated(
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildFavouriteItem(favourites[index]),
                itemCount: 6,
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


  Widget buildFavouriteItem(FavouritesModel favourite) => Container(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  child: Image(
                    image: AssetImage('${favourite.image}'),
                    fit: BoxFit.cover,
                    width: 130,
                    height: 100,
                  ),
                  borderRadius: BorderRadius.circular(10.0,),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${favourite.name}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(
                        height:10.0,
                      ),
                      Text(
                        '${favourite.location}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // SizedBox(
              //   width: 20.0,
              // ),
              Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10.0,
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
              ),

            ],
          ),
          // SizedBox(
          //   height: 5.0,
          // ),
          Divider(
            thickness: 1.0,
            indent: 5.0,
          ),
          // SizedBox(
          //   height: 5.0,
          // ),
          Align(
            alignment: Alignment.bottomRight,
            child: defaultButton(
              width: 130.0,
              function: ()
              {
              },
              text: 'Book Now',
            ),
          ),
          // SizedBox(
          //   height: 5.0,
          // ),
        ],
      ),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.grey[200],
    ),
  );
}
