import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:naxa_app/core/constants/colors.dart';
import 'package:naxa_app/core/constants/constants.dart';
import 'package:naxa_app/core/extensions/context.dart';
import 'package:naxa_app/core/widgets/content_padded.dart';
import 'package:naxa_app/core/widgets/horizontal_divider.dart';
import 'package:naxa_app/core/widgets/svg_icon_button.dart';
import 'package:naxa_app/core/widgets/vertical_divider.dart';
import 'package:naxa_app/feature/home/widgets/announcement_list.dart';
import 'package:naxa_app/feature/home/widgets/balance_list.dart';
import 'package:naxa_app/feature/home/widgets/card_list.dart';
import 'package:naxa_app/feature/home/widgets/features_list.dart';
import 'package:naxa_app/feature/home/widgets/header_home_screen.dart';
import 'package:naxa_app/gen/assets.gen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ContentPadded(child: HeaderHomeScreen()),
              GeneralVerticalDivider(24.h),
              ContentPadded(
                child: Text(
                  "Bienvenido, Damián",
                  style: context.theme().textTheme.headlineMedium!.copyWith(
                        color: darkTextColorEmphasized,
                      ),
                ),
              ),
              GeneralVerticalDivider(8.h),
              ContentPadded(
                child: Row(
                  children: [
                    Text(
                      "Tienes 2 cuentas activas",
                      style: context.theme().textTheme.subtitle1!.copyWith(
                            color: darkTextColorEmphasized,
                          ),
                    ),
                    const Spacer(),
                    Text(
                      "Creat Cta",
                      style: context.theme().textTheme.subtitle1!.copyWith(
                            color: primaryColor,
                          ),
                    ),
                    GeneralHorizontalDivider(6.w),
                    SvgIconButton(
                      assetName: Assets.svgs.icons.icAddDocument,
                      onPressed: () {},
                      size: 18.h,
                    ),
                  ],
                ),
              ),
              GeneralVerticalDivider(16.h),
              SizedBox(
                height: 140.h,
                child: CardList(
                  cards: cards,
                ),
              ),
              GeneralVerticalDivider(32.h),
              ContentPadded(
                child: Text(
                  "¿Qué quieres hacer hoy?",
                  style: context.theme().textTheme.headlineMedium!.copyWith(
                        color: darkTextColorEmphasized,
                      ),
                ),
              ),
              GeneralVerticalDivider(16.h),
              SizedBox(
                child: FeatureList(
                  features: featureMenuItems,
                ),
                height: 72.w,
              ),
              GeneralVerticalDivider(32.h),
              ContentPadded(
                child: Text(
                  "Te facilitamos  la vida",
                  style: context.theme().textTheme.headlineMedium!.copyWith(
                        color: darkTextColorEmphasized,
                      ),
                ),
              ),
              GeneralVerticalDivider(16.h),
              ContentPadded(
                child: Text(
                  "Haz tus solicitudes en líneay olvídate de las largas filas",
                  style: context.theme().textTheme.subtitle1!.copyWith(
                        color: darkTextColor,
                      ),
                ),
              ),
              GeneralVerticalDivider(16.h),
              SizedBox(
                height: 158.h,
                child: AnnouncementList(
                  itemWidth: 180.w,
                  announcements: announcementItems,
                ),
              ),
              GeneralVerticalDivider(32.h),
              ContentPadded(
                child: Text(
                  "Descubre todo lo que puedes hacer con Nexa",
                  style: context.theme().textTheme.headlineMedium!.copyWith(
                        color: darkTextColorEmphasized,
                      ),
                ),
              ),
              SizedBox(
                height: 210.h,
                child: AnnouncementList(
                  itemWidth: 210.w,
                  announcements: announcementItems1,
                  backgroundColor: secondaryColor,
                  foregroundColor: onSecondaryColor,
                ),
              ),
              GeneralVerticalDivider(32.h),
              ContentPadded(
                child: Text(
                  "Balance",
                  style: context.theme().textTheme.headlineMedium!.copyWith(
                    color: darkTextColorEmphasized,
                  ),
                ),
              ),
              GeneralVerticalDivider(16.h),
              SizedBox(
                height: 52.h,
                child: BalanceList(balances: balances,)
              ),
              GeneralVerticalDivider(32.h),
            ],
          ),
        ),
      ),
    );
  }
}
