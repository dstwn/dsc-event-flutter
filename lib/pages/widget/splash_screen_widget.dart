import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/splash/splash_screen_bloc.dart';

class SplashScreenWidget extends StatefulWidget {
  @override
  _SplashScreenWidgetState createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  @override
  void initState() {
    super.initState();
    this._dispatchEvent(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'LOGO',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 30,
                bottom: 30,
              ),
            ),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  void _dispatchEvent(BuildContext context) {
    BlocProvider.of<SplashScreenBloc>(context).dispatch(
      NavigateToHomeScreenEvent(),
    );
  }
}
