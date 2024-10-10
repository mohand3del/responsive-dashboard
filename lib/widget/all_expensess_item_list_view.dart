import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_dashbord/model/all_expensess_item_model.dart';
import 'package:responsive_dashbord/utils/app_images.dart';
import 'package:responsive_dashbord/widget/all_expensess_item.dart';

class AllExpensessItemListView extends StatefulWidget {
  const AllExpensessItemListView({
    super.key,
  });

  static List<AllExpensessItemModel> itemList = [
    AllExpensessItemModel(
        date: "20-10-2021",
        image: Assets.imagesBlance,
        title: "Blance",
        price: r"$20,129"),
    AllExpensessItemModel(
        date: "20-10-2021",
        image: Assets.imagesIncom,
        title: "Incom",
        price: r"$20,129"),
    AllExpensessItemModel(
        date: "20-10-2021",
        image: Assets.imagesEspenses,
        title: "Expenses",
        price: r"$20,129"),
  ];

  @override
  State<AllExpensessItemListView> createState() =>
      _AllExpensessItemListViewState();
}

class _AllExpensessItemListViewState extends State<AllExpensessItemListView> {
  int slectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: AllExpensessItemListView.itemList.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensessItem(
                  allExpensessItemModel: item,
                  isActive: index == slectedIndex,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
              child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: AllExpensessItem(
              allExpensessItemModel: item,
              isActive: index == slectedIndex,
            ),
          ));
        }
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      slectedIndex = index;
    });
  }
}
