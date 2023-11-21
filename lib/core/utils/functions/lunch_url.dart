import 'package:bookly/core/utils/functions/custom_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> lunchCustomUrl(context,String url)
async{
  Uri uri = Uri.parse(url); //? should parse to URI first then tou can lunch the URL
  if(await canLaunchUrl(uri)) { //? check if it can lunch if he can lunch it else show snackbar with the error
    await launchUrl(uri);
  }
  else{
    customSnakeBar(context, 'Cannot Lunch $url');
  }
}

