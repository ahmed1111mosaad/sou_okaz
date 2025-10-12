import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/best_selling_products/presentation/views/widgets/custom_app_bar_best_seller.dart';
import 'package:sou_okaz/Features/best_selling_products/presentation/views/widgets/sliver_grid_item_best_seller.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';

class BestSellingViewBody extends StatelessWidget {
  const BestSellingViewBody({
    super.key,
  });

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
            SliverToBoxAdapter(child: CustomAppBarBestSeller()),
            SliverToBoxAdapter(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03)),
            SliverGridItemBestSeller()
          ],
        ),
      ),
    );
  }
}
