import 'package:naxa_app/core/constants/colors.dart';
import 'package:naxa_app/core/widgets/models/announcement_item_ui_model.dart';
import 'package:naxa_app/core/widgets/models/balance_item_iu_model.dart';
import 'package:naxa_app/core/widgets/models/card_item_ui_model.dart';
import 'package:naxa_app/gen/assets.gen.dart';

import '../widgets/models/feature_item_ui_model.dart';

const placeNetworkImage = "";
const testingNetworkImage =
    "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80";

final featureMenuItems = [
  FeatureItem(
    label: "Consultar saldos",
    onPressed: (context) {},
    icon: Assets.svgs.icons.icConsulting,
  ),
  FeatureItem(
    label: "Hacer transferencias",
    onPressed: (context) {},
    icon: Assets.svgs.icons.icTransfer,
  ),
  FeatureItem(
    label: "Depositar cheques",
    onPressed: (context) {},
    icon: Assets.svgs.icons.icDeposit,
  ),
  FeatureItem(
    label: "Pagar servicios",
    onPressed: (context) {},
    icon: Assets.svgs.icons.icPayServices,
  ),
];

final announcementItems = [
  AnnouncementItem(
    onPressed: (context) {},
    actionLabel: "Solicitar tarjeta",
    body: "Obtén tu tarjeta de crédito desde tu móvil",
  ),
  AnnouncementItem(
    onPressed: (context) {},
    actionLabel: "Solicitar prestamo",
    body: "Logra tus sueños de la manera más fácil",
  ),
];

final announcementItems1 = [
  AnnouncementItem(
    onPressed: (context) {},
    icon: Assets.pngs.pencilDynamicGradient.path,
    actionLabel: "Crear firma digital",
    body:
        "Contrata servicios sin hacer tantos trámites, solo tienes que crear tu firma digital",
  ),
  AnnouncementItem(
    onPressed: (context) {},
    icon: Assets.pngs.lockerDynamicGradient.path,
    actionLabel: "Crear firma digital",
    body: "La  manera mas sencilla de alcanzar tus sueños es ahorrando",
  ),
];

final cards = [
  CardItem(
    last4: "3456",
    name: "Tu cuenta",
    expMonth: 11,
    expYear: 22,
    formattedAmount: "Q 12,111.00",
    backgroundColor: primaryAccent1,
  ),
  CardItem(
    last4: "3456",
    name: "Tu cuenta",
    expMonth: 11,
    expYear: 22,
    formattedAmount: "Q 12,111.00",
    backgroundColor: primaryAccent,
  ),
];

final balances = [
  BalanceItem(label: "Ingresos", formattedBalance: "Q15,000.00", color: primaryColor),
  BalanceItem(label: "Gastos", formattedBalance: "Q12,500.00", color: primaryAccent2),
  BalanceItem(label: "Global", formattedBalance: "Q27,500.00", color: primaryAccent3),
];
