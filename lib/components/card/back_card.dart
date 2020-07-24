import 'package:bank_card/models/credit_card.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

class BackCard extends StatelessWidget {
  final CreditCard card;

  const BackCard({Key key, this.card}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5 / 3,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: card.colors[1]),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultHeight * 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: SizeConfig.defaultHeight * 5,
                color: card.colors[0],
              ),
              Container(
                margin: EdgeInsets.only(
                    top: SizeConfig.defaultHeight * 2,
                    right: SizeConfig.defaultWidth * 5),
                padding: EdgeInsets.only(right: SizeConfig.defaultWidth),
                height: SizeConfig.defaultHeight * 4,
                width: SizeConfig.defaultWidth * 20,
                color: Colors.white,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(card.securityCode),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: SizeConfig.defaultWidth * 5),
                child: Text("Service Hotline / 028-6577",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(color: Colors.white)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
