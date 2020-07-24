import 'package:bank_card/components/card/back_card.dart';
import 'package:bank_card/components/card/front_card.dart';
import 'package:bank_card/components/flippable_widget.dart';
import 'package:bank_card/models/credit_card.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class DetailCard extends StatefulWidget {
  final CreditCard card;
  final double sheetProgress;

  const DetailCard({Key key, this.card, this.sheetProgress}) : super(key: key);
  @override
  _DetailCardState createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> {
  bool animateCardNumber = true;

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1000),
        () => setState(() => animateCardNumber = false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.fromLTRB(
                SizeConfig.defaultWidth * 2,
                0,
                SizeConfig.defaultWidth * 2,
                widget.sheetProgress > 0.462
                    ? SizeConfig.defaultHeight * 55
                    : SizeConfig.defaultHeight * 20 +
                        widget.sheetProgress * 600),
            child: Transform.scale(
              scale: widget.sheetProgress > 0.462
                  ? 1 - (widget.sheetProgress - 0.462)
                  : 1,
              child: FlippableWidget(
                  frontWidget: FrontCard(
                    card: widget.card,
                    showCardNumber: true,
                    animateCardNumber: animateCardNumber,
                  ),
                  backWidget: BackCard(card: widget.card)),
            )));
  }
}
