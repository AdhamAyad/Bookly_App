import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           CustomAppBar(),
           FeaturedBooksListView(),
           SizedBox(
            height: 16,
          ),
          Text(
            'Best Seller',//? copyWith → to make copy of it and edit
            style: Styles.textStyle18,
          ),

          SizedBox(height: 20,),

           BestSellerListViewItem()

        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        children: [
          AspectRatio(
            //! AspectRatio → save responsive of hight and width to be good on another device
            aspectRatio: 2.6 / 4, //?width/hight
            child: Container(
              // height: MediaQuery.of(context).size.height * .36, //todo: use media quary to be responsive with any device
              // width: MediaQuery.of(context).size.width * .4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  //color: Colors.red, //? to test code
                  image: const DecorationImage(
                      image: AssetImage(
                        AssetsData.testImage,
                      ),
                      fit: BoxFit.fill //? to fill photo to to take space
                      )),
            ),
          ),
           Column(
            children: [

              SizedBox( //? make width for text to be good at viwed 
                width: MediaQuery.of(context).size.width *.5, // todo : to be responsive with other devices
                child: const Text(
                'Harry Potter And The Gobelt Of Fire',
                maxLines: 2, //? maxLines → جعل النص لا يتخطى السطرين 
                overflow: TextOverflow.ellipsis, //? if words are many than width it erites dots to tell user that there a words that canot view
                style: Styles.textStyle20,
                )
                )

            ],
          )
        ],
      ),
    );
  }
}
