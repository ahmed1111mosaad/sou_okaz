import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/item_gender.dart';
import 'package:sou_okaz/generated/l10n.dart';

class ListItemGender extends StatefulWidget {
  const ListItemGender({
    super.key,
  });

  @override
  State<ListItemGender> createState() => _ListItemGenderState();
}

class _ListItemGenderState extends State<ListItemGender> {
  int selectedIndex = 0;
  final List<String> text = [S.current.filtersMen, S.current.filtersWomen];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(text.length, (index) {
        return GestureDetector(
            onTap: () {
              selectedIndex = index;
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: ItemGender(
                isSelected: selectedIndex == index,
                text: text[index],
              ),
            ));
      }),
    );
  }
}
