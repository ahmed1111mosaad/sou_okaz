import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/sliver_grid_favourite_item.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/core/utils/custom_arrow_back_app_bar.dart';
import 'package:sou_okaz/generated/l10n.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: responsivePaddingWithWidth(context, 0.04),
          vertical: responsivePaddingWithHeight(context, 0.02),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: Row(
              children: [
                CustomArrowBackAppBar(),
                Spacer(),
                Text(S.current.favouriteTitle,
                    style: AppTextStyles.medium16.copyWith(
                        fontSize: responsiveFontSize(context, 0.0, .053))),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.heart,
                      color: Colors.red,
                      size: 20,
                    ))
              ],
            )),
            SliverToBoxAdapter(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03)),
            SliverGridFavouriteItem()
          ],
        ),
      ),
    );
  }
}
