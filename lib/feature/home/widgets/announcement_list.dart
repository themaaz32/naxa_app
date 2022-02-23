import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:naxa_app/core/constants/sizes.dart';
import 'package:naxa_app/core/widgets/horizontal_divider.dart';
import 'package:naxa_app/core/widgets/models/announcement_item_ui_model.dart';
import 'package:naxa_app/feature/home/widgets/announcement_list_item.dart';

class AnnouncementList extends StatelessWidget {
  const AnnouncementList({
    Key? key,
    required this.announcements,
    required this.itemWidth,
    this.backgroundColor,
    this.foregroundColor,
  }) : super(key: key);

  final List<AnnouncementItem> announcements;
  final double itemWidth;
  final Color? backgroundColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Padding(
          padding: getListItemBoundaryPaddings(
            space: 24.w,
            length: announcements.length,
            index: index,
          ),
          child: AnnouncementListItem(
            item: announcements.elementAt(index),
            width: itemWidth,
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
          ),
        );
      },
      separatorBuilder: (context, index) => GeneralHorizontalDivider(32.w),
      itemCount: announcements.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
    );
  }
}
