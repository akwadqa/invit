// // import 'package:easy_localization/easy_localization.dart';
// // import 'package:flutter/material.dart';
// // import 'package:invit/gen/assets.gen.dart';
// // import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
// // import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
// // import 'package:invit/src/resourses/color_manager/app_colors.dart';
// // import 'package:invit/src/resourses/font_manager/app_text_style.dart';

// // class HomeScreenBookingList extends StatelessWidget {
// //   const HomeScreenBookingList({
// //     super.key,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return SizedBox(
// //       height: 155,
// //       child: 
      
// //       ListView.separated(
// //         scrollDirection: Axis.horizontal,
// //         separatorBuilder: (context, index) => 12.horizontalSpace,
// //         itemCount: 5,
// //         itemBuilder: (context, index) => Container(
// //           width: 331,
// //           height: 155,
// //           decoration: BoxDecoration(
// //               borderRadius: BorderRadius.circular(10),
// //               image: DecorationImage(
// //                 image: AssetImage(Assets.images.bookImage.path),
// //                 fit: BoxFit.cover,
// //               )),
// //           child: Container(
// //             width: double.infinity,
// //             height: double.infinity,
// //             decoration: BoxDecoration(
// //                 borderRadius: BorderRadius.circular(10),
// //                 color: AppColors.black.withValues(alpha: .5)),
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               spacing: 18,
// //               children: [
// //                 Text(
// //                   'book_a_hall_discount'.tr(),
// //                   style: AppTextStyle.rubikSemiBold18
// //                       .copyWith(color: AppColors.background),
// //                 ),
// //                 CustomButtonWidget(
// //                   text: 'booking_now',
// //                   onTap: () {},
// //                   style: AppTextStyle.rubikSemiBold18
// //                       .copyWith(color: AppColors.primary),
// //                   radius: 5,
// //                   isFiled: false,
// //                   backgroundColor: AppColors.background,
// //                   height: 31,
// //                   width: 120,
// //                 )
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:invit/features/home/domain/model/banners/banner_model.dart';
// import 'package:invit/features/home/presentation/controller/home_controller.dart';
// import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
// import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
// import 'package:invit/src/infrastructure/api/endpoint/services_urls.dart';
// import 'package:invit/src/resourses/color_manager/app_colors.dart';
// import 'package:invit/src/resourses/font_manager/app_text_style.dart';
// import 'package:skeletonizer/skeletonizer.dart';
// class HomeScreenBookingList extends ConsumerStatefulWidget {
//   const HomeScreenBookingList({super.key});

//   @override
//   ConsumerState<HomeScreenBookingList> createState() =>
//       _HomeScreenBookingListState();
// }

// class _HomeScreenBookingListState
//     extends ConsumerState<HomeScreenBookingList> {
//   int _currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     final homeAsync = ref.watch(homeControllerProvider);

//     return SizedBox(
//       height: 190,
//       child: homeAsync.when(
//         loading: () => _buildSkeleton(),
//         error: (e, _) => const SizedBox(),
//         data: (data) {
//           final banners = data.banners;

//           if (banners.isEmpty) {
//             return const SizedBox();
//           }

//           return Column(
//             children: [
//               CarouselSlider.builder(
//                 itemCount: banners.length,
//                 itemBuilder: (context, index, realIndex) {
//                   return _buildCard(banners[index]);
//                 },
//                 options: CarouselOptions(
//                   height: 160,
//                   viewportFraction: 0.8,
//                   enlargeCenterPage: true,
//               autoPlay: false,
//                   onPageChanged: (index, reason) {
//                     setState(() => _currentIndex = index);
//                   },
//                 ),
//               ),
//               10.verticalSpace,
//             ],
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildSkeleton() {
//     return Skeletonizer(
//       enabled: true,
//       child: Column(
//         children: [
//           CarouselSlider.builder(
//             itemCount: 3,
//             itemBuilder: (_, __, ___) => _buildCard(null),
//             options: CarouselOptions(
//               height: 160,
//               viewportFraction: 0.8,
//               enlargeCenterPage: true,
//               autoPlay: false
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildCard(BannerModel? banner) {
//     return Container(
//       width: 331,
//       height: 155,
//       decoration: BoxDecoration(
//         color: Colors.grey.shade300,
//         borderRadius: BorderRadius.circular(10),
//         image: banner?.bannerImage != null
//             ? DecorationImage(
//                 image: NetworkImage(
//                   ServicesUrls.imageUrl + banner!.bannerImage,
//                 ),
//                 fit: BoxFit.cover,
//               )
//             : null,
//       ),
//       child: Skeleton.ignore(
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: AppColors.black.withValues(alpha: .5),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             spacing: 18,
//             children: [
//               Text(
//                 banner?.bannerTitle ?? '',
//                 style: AppTextStyle.rubikSemiBold18
//                     .copyWith(color: AppColors.background),
//               ),
//               CustomButtonWidget(
//                 text: 'booking_now',
//                 onTap: () {},
//                 style: AppTextStyle.rubikSemiBold18
//                     .copyWith(color: AppColors.primary),
//                 radius: 5,
//                 isFiled: false,
//                 backgroundColor: AppColors.background,
//                 height: 31,
//                 width: 120,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
