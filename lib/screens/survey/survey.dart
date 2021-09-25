import 'package:cancer_app/sizeConfig.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class Survey extends StatelessWidget {
  const Survey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
