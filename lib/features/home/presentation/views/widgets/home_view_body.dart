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

          SizedBox(height: 16,),

          Text('Best Seller',style: Styles.titleMedium,),

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
    return  SizedBox(height: 150,
      child: Row(
        children: [
        AspectRatio( //! save responsive of hight and width to be good on another device
      aspectRatio: 2.6/4, //?width/hight
        child: Container(
          // height: MediaQuery.of(context).size.height * .36, //todo: use media quary to be responsive with any device
          // width: MediaQuery.of(context).size.width * .4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            //color: Colors.red, //? to test code
            image:const DecorationImage(image: AssetImage(AssetsData.testImage,),
            fit: BoxFit.fill //? to fill photo to to take space
            )
          ),
        ),
      )
      ],),
    );
  }
}




