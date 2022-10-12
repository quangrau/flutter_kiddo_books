import 'package:audiobook/src/utils/app_dimensions.dart';
import 'package:audiobook/src/utils/app_styles.dart';
import 'package:audiobook/src/widgets/app_icon.dart';
import 'package:audiobook/src/widgets/headline.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen(this.bookId, {Key? key}) : super(key: key);

  final String bookId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: AppStyles.secondaryColor,
            expandedHeight: 250.0,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const AppIcon(
                    icon: FluentSystemIcons.ic_fluent_ios_arrow_left_regular,
                  ),
                  onPressed: () {
                    context.go("/home");
                  },
                ),
              ],
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/bg_book_details.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(AppDimensions.getHeight(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Headline(
                    text: "All the ways to be smart",
                    size: 2,
                  ),
                  Gap(AppDimensions.getHeight(5)),
                  Text("Davina Bell", style: AppStyles.textStyle),
                  Gap(AppDimensions.getHeight(10)),
                  Row(
                    children: [
                      Wrap(children: [
                        ...List.generate(
                            4,
                            (index) => Icon(
                                  FluentSystemIcons.ic_fluent_star_filled,
                                  color: AppStyles.secondaryColor,
                                )),
                        Icon(
                          FluentSystemIcons.ic_fluent_star_filled,
                          color: AppStyles.iconColor,
                        )
                      ])
                    ],
                  ),
                  Gap(AppDimensions.getHeight(20)),
                  const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis congue lacinia efficitur. Mauris interdum erat quis nisl consequat vestibulum. Mauris vitae nisl enim. In nulla nisl, dictum pellentesque mauris in, blandit euismod ligula. Donec dapibus, velit et scelerisque imperdiet, ligula purus finibus erat, eu consequat libero lorem ut tellus. Donec in pellentesque odio. Integer molestie nunc sit amet libero sodales placerat eget et elit. Nunc eleifend tortor molestie facilisis venenatis. Donec tempus felis vel leo vehicula, ac vehicula nulla consectetur. Maecenas vel tincidunt arcu. Phasellus at posuere nunc. Nunc pulvinar molestie metus, eu elementum arcu. Curabitur a enim ac ipsum tempus vehicula sed ut turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec vitae nisi ut dolor mollis suscipit vitae dictum nibh. Cras feugiat tincidunt volutpat.\r\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis congue lacinia efficitur. Mauris interdum erat quis nisl consequat vestibulum. Mauris vitae nisl enim. In nulla nisl, dictum pellentesque mauris in, blandit euismod ligula. Donec dapibus, velit et scelerisque imperdiet, ligula purus finibus erat, eu consequat libero lorem ut tellus. Donec in pellentesque odio. Integer molestie nunc sit amet libero sodales placerat eget et elit. Nunc eleifend tortor molestie facilisis venenatis. Donec tempus felis vel leo vehicula, ac vehicula nulla consectetur. Maecenas vel tincidunt arcu. Phasellus at posuere nunc. Nunc pulvinar molestie metus, eu elementum arcu. Curabitur a enim ac ipsum tempus vehicula sed ut turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec vitae nisi ut dolor mollis suscipit vitae dictum nibh. Cras feugiat tincidunt volutpat.\r\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis congue lacinia efficitur. Mauris interdum erat quis nisl consequat vestibulum. Mauris vitae nisl enim. In nulla nisl, dictum pellentesque mauris in, blandit euismod ligula. Donec dapibus, velit et scelerisque imperdiet, ligula purus finibus erat, eu consequat libero lorem ut tellus. Donec in pellentesque odio. Integer molestie nunc sit amet libero sodales placerat eget et elit. Nunc eleifend tortor molestie facilisis venenatis. Donec tempus felis vel leo vehicula, ac vehicula nulla consectetur. Maecenas vel tincidunt arcu. Phasellus at posuere nunc. Nunc pulvinar molestie metus, eu elementum arcu. Curabitur a enim ac ipsum tempus vehicula sed ut turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec vitae nisi ut dolor mollis suscipit vitae dictum nibh. Cras feugiat tincidunt volutpat.\r\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis congue lacinia efficitur. Mauris interdum erat quis nisl consequat vestibulum. Mauris vitae nisl enim. In nulla nisl, dictum pellentesque mauris in, blandit euismod ligula. Donec dapibus, velit et scelerisque imperdiet, ligula purus finibus erat, eu consequat libero lorem ut tellus. Donec in pellentesque odio. Integer molestie nunc sit amet libero sodales placerat eget et elit. Nunc eleifend tortor molestie facilisis venenatis. Donec tempus felis vel leo vehicula, ac vehicula nulla consectetur. Maecenas vel tincidunt arcu. Phasellus at posuere nunc. Nunc pulvinar molestie metus, eu elementum arcu. Curabitur a enim ac ipsum tempus vehicula sed ut turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec vitae nisi ut dolor mollis suscipit vitae dictum nibh. Cras feugiat tincidunt volutpat."),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
