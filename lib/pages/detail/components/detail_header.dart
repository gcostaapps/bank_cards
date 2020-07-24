import 'package:flutter/material.dart';

import '../../../size_config.dart';

class DetailHeader extends StatelessWidget {
  final double sheetProgress;

  const DetailHeader({Key key, this.sheetProgress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Transform.scale(
        scale: 1 - (sheetProgress * 20),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Text(
              "Full Card",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.white),
            ),
            SizedBox(
              height: SizeConfig.defaultHeight * 1.5,
            ),
            Text(
              "Rotate the card to view the security code",
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  .copyWith(color: Colors.white60),
            )
          ],
        ),
      ),
    );
  }
}
