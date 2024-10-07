import 'package:flutter/material.dart';
import 'package:responsive_dashbord/model/drawer_item_model.dart';
import 'package:responsive_dashbord/widget/drawer_item.dart';
import 'package:responsive_dashbord/widget/user_info_list_tile.dart';

import '../utils/app_images.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  static List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: "Dashbord", image: Assets.imagesDashbord),
    DrawerItemModel(title: "My Transaction", image: Assets.imagesMyTransaction),
    DrawerItemModel(title: "Statistics", image: Assets.imagesStatistics),
    DrawerItemModel(title: "Wallet Account", image: Assets.imagesWallet),
    DrawerItemModel(title: "My Investment", image: Assets.imagesMyInvestments)
  ];

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: UserInfoListTile(
                image: Assets.imagesProfileAvtare,
                title: "Lekan Okeowo",
                subtitle: "demo@gmail.com"),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          ...CustomDrawer.drawerItems.map((e) => SliverToBoxAdapter(
                child: GestureDetector(
                  onTap: () {
                    if (activeIndex != CustomDrawer.drawerItems.indexOf(e)) {
                      setState(() {
                        activeIndex = CustomDrawer.drawerItems.indexOf(e);
                        print(activeIndex);
                      });
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: DrawerItem(
                      drawerItemModel: e,
                      isActive:
                          activeIndex == CustomDrawer.drawerItems.indexOf(e),
                    ),
                  ),
                ),
              )),
          const SliverToBoxAdapter(child: Spacer()),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: SizedBox()),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Settings", image: Assets.imagesSettings)),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Logout", image: Assets.imagesLogout)),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
