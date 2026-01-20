import 'package:flutter/material.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/core/shared_widgets/custom_back_arrow_widget%20copy.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';

class EventsHeader extends StatelessWidget {
  const EventsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentGeometry.bottomCenter,
          children: [
            Assets.images.backgroundEventIm.image(width: double.infinity,fit: BoxFit.fitWidth).onlyPadding(bottom: 70),
            PositionedDirectional(
                top: 40, start: 16, child: CustomBackArrowWidget()),
            Positioned(
              bottom: 0,
              child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.flutter_dash_outlined,
                    size: 100,
                  )),
            ),
          ],
        ),
      ],
    );

    // Container(
    //   height: 250,
    //   width: double.infinity,
    //   decoration: BoxDecoration(
    //     image: DecorationImage(
    //         image: AssetImage(Assets.images.backgroundEventIm.path),
    //         fit: BoxFit.contain),
    //     // gradient: LinearGradient(
    //     //   colors: [
    //     //     Color(0xFF6EC1E4),
    //     //     Color(0xFF5A9BD5),
    //     //   ],
    //     // ),
    //   ),
    //   child: Stack(
    //     children: [
    //       // Background pattern
    //       // Positioned(
    //       //   right: -20,
    //       //   top: 20,
    //       //   child: Opacity(
    //       //     opacity: 0.3,
    //       //     child: Assets.images.allEventImage.image()
    //       //   ),
    //       // ),

    //       // Back Button
    // Positioned(
    //   top: 40,
    //   left: 16,
    //   child: CircleAvatar(
    //     backgroundColor: Colors.white,
    //     child: IconButton(
    //       icon: const Icon(
    //         Icons.arrow_back,
    //         color: Colors.black,
    //       ),
    //       onPressed: () => Navigator.pop(context),
    //     ),
    //   ),
    // ),
    //     Positioned(
    //       bottom: -20,
    //       child: Container(
    //           padding: const EdgeInsets.all(12),
    //           decoration: const BoxDecoration(
    //             color: Colors.white,
    //             shape: BoxShape.circle,
    //             boxShadow: [
    //               BoxShadow(
    //                 color: Colors.black12,
    //                 blurRadius: 8,
    //               ),
    //             ],
    //           ),
    //           child: Icon(
    //             Icons.flutter_dash_outlined,
    //             size: 100,
    //           )),
    //     ),
    //   ],
    // ),

    // );
  }
}

class EventHeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, size.height - 50);
    //  path.quadraticBezierTo(
    //     size.width * 0.25,
    //     size.height - 20,
    //     size.width * 0.5,
    //     size.height - 30,
    //   );

    // Left slope
    path.quadraticBezierTo(
      size.width * 0.35,
      size.height,
      size.width,
      size.height - 30,
    );
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height - 100,
      size.width,
      size.height,
    );
    // path.addArc(
    //  Rect.largest,
    //  pi,
    //  -3*pi/4
    // );
    // Center dip
    // path.quadraticBezierTo(
    //   size.width * 0.5,
    //   size.height - 150,
    //   size.width ,
    //   size.height - 60,
    // );

    // Right slope
    //  path.quadraticBezierTo(
    //   size.width * 0.25,
    //   size.height - 100,
    //   size.width * 0.2,
    //   size.height - 30,

    // );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class SmoothHeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Start from top-left
    path.lineTo(0, size.height - 60);

    // Left gentle rise
    path.quadraticBezierTo(
      size.width * 0.15,
      size.height * 0.65,
      size.width * 0.3,
      size.height * 0.6,
    );

    // Left-mid rise
    path.quadraticBezierTo(
      size.width * 0.4,
      size.height * 0.55,
      size.width * 0.45,
      size.height * 0.5,
    );

    // Rounded top (no sharp point)
    path.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.45,
      size.width * 0.55,
      size.height * 0.5,
    );

    // Right-mid fall
    path.quadraticBezierTo(
      size.width * 0.6,
      size.height * 0.55,
      size.width * 0.7,
      size.height * 0.6,
    );

    // Right gentle fall
    path.quadraticBezierTo(
      size.width * 0.85,
      size.height * 0.65,
      size.width,
      size.height * 0.75,
    );

    // Close shape
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
