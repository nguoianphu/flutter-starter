import 'package:app/src/config/image_constants.dart';
import 'package:app/src/widgets/cache_image_widget.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CachedImage(
              imageUrl: "https://theuniqueacademy.co.in/assets/images/test.png",
              fit: BoxFit.fitWidth,
              errorWidget: Image.network(
                AllImages().kDefaultImage,
              ),
              width: 500,
              height: 250,
              placeholder: CircularProgressIndicator(),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome to Flutter Starter",
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "A Flutter starter-kit for production-level apps",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ButtonStyle(
                enableFeedback: true,
                backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).primaryColorDark,
                ),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text(
                "Login Now",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            ElevatedButton(
              style: ButtonStyle(
                enableFeedback: true,
                backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).canvasColor,
                ),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: Text(
                "Create Account",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}