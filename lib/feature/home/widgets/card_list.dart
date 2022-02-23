import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:naxa_app/core/constants/sizes.dart';
import 'package:naxa_app/core/widgets/accounting_card.dart';
import 'package:naxa_app/core/widgets/horizontal_divider.dart';
import 'package:naxa_app/core/widgets/models/card_item_ui_model.dart';


class CardList extends StatelessWidget {
  const CardList({
    Key? key,
    required this.cards,
  }) : super(key: key);

  final List<CardItem> cards;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Padding(
          padding: getListItemBoundaryPaddings(
            space: 24.w,
            length: cards.length,
            index: index,
          ),
          child: AccountingCard(
            width: 243.w,
            height: 140.h,
            card: cards.elementAt(index),
          ),
        );
      },
      separatorBuilder: (context, index) => GeneralHorizontalDivider(16.w),
      itemCount: cards.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
    );
  }
}
