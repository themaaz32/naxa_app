import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:naxa_app/core/constants/sizes.dart';
import 'package:naxa_app/core/widgets/horizontal_divider.dart';
import 'package:naxa_app/core/widgets/models/feature_item_ui_model.dart';
import 'package:naxa_app/feature/home/widgets/features_list_item.dart';

class FeatureList extends StatelessWidget {
  const FeatureList({
    Key? key,
    required this.features,
  }) : super(key: key);

  final List<FeatureItem> features;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Padding(
          padding: getListItemBoundaryPaddings(
            space: 24.w,
            length: features.length,
            index: index,
          ),
          child: FeaturesListItem(
            item: features.elementAt(index),
          ),
        );
      },
      separatorBuilder: (context, index) => GeneralHorizontalDivider(32.w),
      itemCount: features.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
    );
  }
}
