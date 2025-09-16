import 'package:comics/app/routes/app_routes.dart';
import 'package:comics/features/category/category_bindings.dart';
import 'package:comics/features/category/view/category_screen.dart';
import 'package:comics/features/coin_wallet/coin_wallet_bindings.dart';
import 'package:comics/features/coin_wallet/view/coin_wallet_screen.dart';
import 'package:comics/features/home/view/home_screen.dart';
import 'package:comics/features/home/home_bindings.dart';
import 'package:comics/features/language/language_bindings.dart';
import 'package:comics/features/language/view/language_screen.dart';
import 'package:comics/features/library/library_bindings.dart';
import 'package:comics/features/library/view/library_screen.dart';
import 'package:comics/features/main/main_bindings.dart';
import 'package:comics/features/main/view/main_screen.dart';
import 'package:comics/features/notification/notification_bindings.dart';
import 'package:comics/features/notification/view/notification_screen.dart';
import 'package:comics/features/payment/view/payment_view.dart';
import 'package:comics/features/premium/premium_bindings.dart';
import 'package:comics/features/premium/view/premium_screen.dart';
import 'package:comics/features/profile/profile_bindings.dart';
import 'package:comics/features/profile/view/create_comic.dart';
import 'package:comics/features/profile/view/help_support_screen.dart';
import 'package:comics/features/profile/view/profile_screen.dart';
import 'package:comics/features/profile/view/request_comic_screen.dart';
import 'package:comics/features/splash/splash_bindings.dart';
import 'package:comics/features/splash/view/splash_screen.dart';
import 'package:comics/global/widgets/card_payment_view.dart' show CardPaymentView;
import 'package:comics/global/widgets/upi_payment_view.dart' show UpiPaymentView;
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static const initial = AppRoutes.splash;

  static final routes = [
    // Splash
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),

    // Main + Tabs
    GetPage(
      name: AppRoutes.main,
      page: () => MainScreen(),
      binding: MainBinding(),
      children: [
        GetPage(
          name: AppRoutes.home,
          page: () => const HomeScreen(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: AppRoutes.category,
          page: () => const CategoriesScreen(),
          binding: CategoriesBinding(),
        ),
        GetPage(
          name: AppRoutes.library,
          page: () => const LibraryScreen(),
          binding: LibraryBinding(),
        ),
        GetPage(
          name: AppRoutes.notifications,
          page: () => const NotificationsScreen(),
          binding: NotificationsBinding(),
        ),
        GetPage(
          name: AppRoutes.profile,
          page: () => const ProfileScreen(),
          binding: ProfileBinding(),
        ),
      ],
    ),

    GetPage(
      name: AppRoutes.comicWallet,
      page: () => const CoinWalletScreen(),
      binding: CoinWalletBinding(),
    ),
    GetPage(
      name: AppRoutes.language,
      page: () => LanguageScreen(),
      binding: LanguageBinding(),
    ),
    GetPage(
      name: AppRoutes.requestComic,
      page: () => RequestComicScreen(),
    ),
    GetPage(
      name: AppRoutes.createComic,
      page: () => CreateComicScreen(),
    ),
    GetPage(
      name: AppRoutes.help,
      page: () => HelpSupportScreen(),
    ),
    GetPage(
      name: AppRoutes.payment,
      page: () => PaymentView(),
    ),
    GetPage(
      name: AppRoutes.addUpi,
      page: () => UpiPaymentView(),
    ),
    GetPage(
      name: AppRoutes.addCard,
      page: () => CardPaymentView(),
    ),
    GetPage(
      name: AppRoutes.premiumPayment,
      page: () => PremiumScreen(),
      binding: PremiumBinding()
    ),
  ];
}
