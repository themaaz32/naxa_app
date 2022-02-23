import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:naxa_app/core/constants/sizes.dart';
import 'package:naxa_app/core/widgets/horizontal_divider.dart';
import 'package:naxa_app/core/widgets/models/balance_item_iu_model.dart';
import 'package:naxa_app/feature/home/widgets/balance_list_item.dart';

class BalanceList extends StatelessWidget {
  const BalanceList({
    Key? key,
    required this.balances,
  }) : super(key: key);

  final List<BalanceItem> balances;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Padding(
          padding: getListItemBoundaryPaddings(
            space: 24.w,
            length: balances.length,
            index: index,
          ),
          child: BalanceListItem(
            item: balances.elementAt(index),
          ),
        );
      },
      separatorBuilder: (context, index) => GeneralHorizontalDivider(32.w),
      itemCount: balances.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
    );
  }
}
