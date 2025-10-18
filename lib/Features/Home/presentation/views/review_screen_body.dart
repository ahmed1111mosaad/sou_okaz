import 'package:flutter/material.dart';
import 'package:rating_summary/rating_summary.dart';
import 'package:sou_okaz/Features/Home/presentation/views/list_view_item_review.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/app_bar_review_screen.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/review_text_form_field.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

class ReviewScreenBody extends StatelessWidget {
  const ReviewScreenBody({
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
          SliverToBoxAdapter(child: AppBarReviewScreen()),
          SliverToBoxAdapter(
              child:
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01)),
          SliverToBoxAdapter(child: ReviewTextFormField()),
          SliverToBoxAdapter(
              child:
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02)),
          SliverToBoxAdapter(
            child: Center(
              child: Text(S.current.summary,
                  style: AppTextStyles.medium16.copyWith(
                      fontSize: responsiveFontSize(context, 0.0, .045))),
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: RatingSummary(
                counter: 13,
                average: 3.846,
                showAverage: true,
                counterFiveStars: 5,
                counterFourStars: 4,
                counterThreeStars: 2,
                counterTwoStars: 1,
                counterOneStars: 1,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child:
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02)),
          SliverFillRemaining(
            child: ListViewItemReview(),
          )
        ],
      ),
    ));
  }
}
