import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_raiting.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView); //? go router → to navigate to another page
      },
      child: SizedBox(
        height: 140,
        child: Row(
          children: [
            CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
            const SizedBox(
              width: 15,
            ),
            Expanded( //? to provide row to take the space in hight and width with expanded
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      //? make width for text to be good at viwed
                      width: MediaQuery.of(context).size.width *
                          .5, // todo : to be responsive with other devices
                      child: Text(
                        bookModel.volumeInfo.title!,
                        maxLines: 2, //? maxLines → جعل النص لا يتخطى السطرين
                        overflow: TextOverflow
                            .ellipsis, //? if words are many than width it erites dots to tell user that there a words that canot view
                        style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                      )),
            
                  const SizedBox(
                    height: 3,
                  ),
            
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
            
                  const SizedBox(
                    height: 10,
                  ),
            
                   Row(
                    children: [
                      Text('Free' , style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
    
                      const Spacer(), // todo: or main axis aliment spacebetwean
                                
                      BookRating( //? we give it as two variabels not as a object
                      rating: bookModel.volumeInfo.averageRating??0,
                      count: bookModel.volumeInfo.ratingsCount??0,),
                                
                    ],
                 )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// AspectRatio(
//               //! AspectRatio → save responsive of hight and width to be good on another device
//               aspectRatio: 2.6 / 4, //?width/hight
//               child: Container(
//                 // height: MediaQuery.of(context).size.height * .36, //todo: use media quary to be responsive with any device
//                 // width: MediaQuery.of(context).size.width * .4,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8),
//                    // color: Colors.red, //? to test code
//                     image: const DecorationImage(
//                         image: AssetImage(
//                           AssetsData.testImage,
//                         ),
//                         fit: BoxFit.fill //? to fill photo to to take space
//                         )),
//               ),
//             ),

