import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gamezi/utils/glass_card.dart';
import 'package:gamezi/utils/text_style.dart';
import '../../../../data/models/custom_service.dart';
import '../../../../utils/app_enums.dart';
import '../../../../utils/app_extensions.dart';
import '../../../../utils/colors.dart';

class DetailedServiceItem extends StatefulWidget {
  const DetailedServiceItem({super.key, required this.service});

  final CustomService service;

  @override
  State<DetailedServiceItem> createState() => _DetailedServiceItemState();
}

class _DetailedServiceItemState extends State<DetailedServiceItem> {
  static const List<int> _bucketsPx = [512, 1024, 1600];

  int _pickBucket(double logicalWidth, double dpr) {
    final px = (logicalWidth * dpr).clamp(1, 100000).toDouble();
    if (px <= 700) return _bucketsPx[0];
    if (px <= 1300) return _bucketsPx[1];
    return _bucketsPx[2];
  }

  Future<void> _precacheAllBuckets(BuildContext context) async {
    for (final w in _bucketsPx) {
      final provider = ResizeImage(AssetImage(widget.service.image), width: w);
      await precacheImage(provider, context);
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _precacheAllBuckets(context);
  }

  @override
  Widget build(BuildContext context) {
    return glassEffectsCard(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final dpr = MediaQuery.of(context).devicePixelRatio;
            final isMobile = context.width < DeviceType.mobile.getMinWidth();
            final imgHeight = isMobile ? 40.0 : 275.0;

            // Pick a stable bucket so we don't decode on every tiny width change.
            final bucket = _pickBucket(constraints.maxWidth, dpr);
            final imageProvider = ResizeImage(
              AssetImage(widget.service.image),
              width: bucket,
            );

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.circular(12),
                    child: Image(
                      image: imageProvider,
                      height: imgHeight,
                      fit: context.width < DeviceType.smallScreenLaptop.getMinWidth()
                          ? BoxFit.cover
                          : BoxFit.scaleDown,
                      filterQuality: FilterQuality.low,
                      gaplessPlayback: true,
                      // keep old frame while new stream resolves
                      frameBuilder: (context, child, frame, wasSyncLoaded) {
                        // If a new frame isn't ready yet (e.g., on breakpoint switch),
                        // keep showing the last painted child to avoid a blank gap.
                        if (wasSyncLoaded || frame != null) return child;
                        return child; // already painted previous frame thanks to gaplessPlayback
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 26),

                // Avoid FittedBox to reduce relayout cost in grids
                Text(
                  widget.service.service,
                  style: MyFontStyle.s16.copyWith(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 10),

                Text(
                  widget.service.subTitle,
                  style: MyFontStyle.s18,
                  textAlign: TextAlign.left,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),

                if (context.width > DeviceType.mobile.getMinWidth()) ...[
                  const SizedBox(height: 16),
                  Flexible(
                    child: AutoSizeText(
                      widget.service.description,
                      style: MyFontStyle.s16.copyWith(color: AppColors.textColorLight),
                      minFontSize: 10,
                      textAlign: TextAlign.left,
                    ),
                  )
                ],
              ],
            );
          },
        ),
      ),
    );
//   }
// }

    // return MouseRegion(
    //   onEnter: _onEnter,
    //   onExit: _onExit,
    //   child: Motion.only(
    //     borderRadius: BorderRadius.circular(10),
    //     glare:
    //         GlareConfiguration(color: AppColors.primaryColor, maxOpacity: 0.3),
    //     translation: const TranslationConfiguration(maxOffset: Offset(9, 9)),
    //     filterQuality: FilterQuality.high,
    //     child: glassEffectsCard(
    //       child: Padding(
    //         padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           children: [
    //             Center(
    //               child: ClipRRect(
    //                 borderRadius: BorderRadius.circular(12),
    //                 child: Image.asset(
    //                   widget.service.image,
    //                   height: context.width < DeviceType.mobile.getMinWidth()
    //                       ? 40
    //                       : 275,
    //                   fit: context.width <
    //                           DeviceType.smallScreenLaptop.getMinWidth()
    //                       ? BoxFit.cover
    //                       : BoxFit.scaleDown,
    //                 ),
    //               ),
    //             ),
    //             const SizedBox(height: 26),
    //             FittedBox(
    //               child: Text(
    //                 widget.service.service,
    //                 style: MyFontStyle.s16.copyWith(
    //                     color: AppColors.primaryColor,
    //                     fontWeight: FontWeight.w600,
    //                     fontSize: 20),
    //                 textAlign: TextAlign.left,
    //               ),
    //             ),
    //             const SizedBox(height: 10),
    //             Flexible(
    //               child: Text(
    //                 widget.service.subTitle,
    //                 style: MyFontStyle.s18,
    //                 textAlign: TextAlign.left,
    //               ),
    //             ),
    //             if (context.width > DeviceType.mobile.getMinWidth()) ...[
    //               const SizedBox(height: 16),
    //               Flexible(
    //                 child: AutoSizeText(
    //                   widget.service.description,
    //                   style: MyFontStyle.s16
    //                       .copyWith(color: AppColors.textColorLight),
    //                   minFontSize: 10,
    //                   textAlign: TextAlign.left,
    //                 ),
    //               ),
    //             ]
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }

// void _onExit(event) {
//   setState(() => itemColor = Colors.transparent);
// }
//
// void _onEnter(event) {
//   setState(() => itemColor = AppColors.primaryColor);
// }
}
