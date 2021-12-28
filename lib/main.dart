import 'package:croni_mini/Controllers/home.dart';
import 'package:croni_mini/Views/about_us.dart';
import 'package:croni_mini/Views/attachments.dart';
import 'package:croni_mini/Views/auger.dart';
import 'package:croni_mini/Views/become_a_dealer.dart';
import 'package:croni_mini/Views/broom.dart';
import 'package:croni_mini/Views/bucket.dart';
import 'package:croni_mini/Views/contact_us.dart';
import 'package:croni_mini/Views/croni_l_80.dart';
import 'package:croni_mini/Views/croni_lh_110.dart';
import 'package:croni_mini/Views/croni_lh_80.dart';
import 'package:croni_mini/Views/edge_trimmer.dart';
import 'package:croni_mini/Views/grapple_bucket.dart';
import 'package:croni_mini/Views/grapple_rake.dart';
import 'package:croni_mini/Views/hay_bale_grapple.dart';
import 'package:croni_mini/Views/hedge_trimmer.dart';
import 'package:croni_mini/Views/industries.dart';
import 'package:croni_mini/Views/lawn_mower.dart';
import 'package:croni_mini/Views/leaf_vacuum.dart';
import 'package:croni_mini/Views/leveller.dart';
import 'package:croni_mini/Views/light_material_bucket.dart';
import 'package:croni_mini/Views/m_l_agriculture.dart';
import 'package:croni_mini/Views/m_l_church.dart';
import 'package:croni_mini/Views/m_l_housing_association.dart';
import 'package:croni_mini/Views/m_l_stud.dart';
import 'package:croni_mini/Views/m_l_warehouse.dart';
import 'package:croni_mini/Views/news_events.dart';
import 'package:croni_mini/Views/our_dealers.dart';
import 'package:croni_mini/Views/our_models.dart';
import 'package:croni_mini/Views/pallet_fork.dart';
import 'package:croni_mini/Views/rake.dart';
import 'package:croni_mini/Views/snow_plow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'CroniMini Loader App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      getPages: [
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(
          name: '/models',
          page: () => const OurModels(),
          children: [
            GetPage(name: '/croni-l-80', page: () => CroniL80()),
            GetPage(name: '/croni-lh-80', page: () => CroniLH80()),
            GetPage(name: '/croni-lh-110', page: () => CroniLH110()),
          ],
        ),
        GetPage(
          name: '/attachments',
          page: () => Attachments(),
          children: [
            GetPage(name: '/auger', page: () => const Auger()),
            GetPage(name: '/broom', page: () => const Broom()),
            GetPage(name: '/bucket', page: () => const Bucket()),
            GetPage(name: '/edge-trimmer', page: () => const EdgeTrimmer()),
            GetPage(name: '/grapple-bucket', page: () => const GrappleBucket()),
            GetPage(name: '/grapple-rake', page: () => const GrappleRake()),
            GetPage(
                name: '/hay-bale-grapple', page: () => const HayBaleGrapple()),
            GetPage(name: '/hedge-trimmer', page: () => const HedgeTrimmer()),
            GetPage(name: '/lawn-mower', page: () => const LawnMower()),
            GetPage(name: '/leveller', page: () => const Leveller()),
            GetPage(
                name: '/light-material-bucket',
                page: () => const LightMaterialBucket()),
            GetPage(name: '/leaf-vacuum', page: () => const LeafVacuum()),
            GetPage(name: '/pallet-fork', page: () => const PalletFork()),
            GetPage(name: '/rake', page: () => const Rake()),
            GetPage(name: '/snow-plow', page: () => const SnowPlow()),
          ],
        ),
        GetPage(
          name: '/industries',
          page: () => Industries(),
          children: [
            GetPage(name: '/m-l-agriculture', page: () => MLAgriculture()),
            GetPage(name: '/m-l-church', page: () => MLChurch()),
            GetPage(
                name: '/m-l-housing-association',
                page: () => MLHousingAssociation()),
            GetPage(name: '/m-l-stud', page: () => MLStud()),
            GetPage(name: '/m-l-warehouse', page: () => MLWarehouse()),
          ],
        ),
        GetPage(
          name: '/dealers',
          page: () => OurDealers(),
          children: [
            GetPage(
                name: '/become-a-dealer', page: () => const BecomeADealer()),
          ],
        ),
        GetPage(name: '/contact', page: () => const ContactUs()),
        GetPage(
          name: '/about',
          page: () => const AboutUs(),
          children: [
            GetPage(name: '/news-and-events', page: () => const NewsEvents()),
          ],
        ),
      ],
      home: HomePage(),
    );
  }
}
