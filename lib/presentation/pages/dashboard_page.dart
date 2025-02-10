import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:binaryveda/presentation/cubit/dashboard_cubit.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:skeletonizer/skeletonizer.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/logo.svg';
    final Widget svg = SvgPicture.asset(
      color: Colors.black,
      assetName,
      semanticsLabel: 'Dart Logo',
    );
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: svg,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              radius: 18, // Adjust size to match the reference
              backgroundColor: Color(0xFFD90034), // Red background
              child: Icon(
                Icons.person_outline,
                color: Colors.white, // White icon
                size: 22, // Adjust size to match the reference
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.share,
                            size: 32,
                          )),
                      Text(
                        "Upload",
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 14, color: Colors.blue),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('assets/user_image.png'),
                      ),
                      Text(
                        "john.doe",
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontSize: 36,
                            ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.square_pencil,
                            size: 32,
                          )),
                      Text(
                        "Edit",
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 14, color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Dashboard',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  Center(
                    child: Container(
                      width: 60,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [Colors.green.shade700, Colors.green.shade400],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            left: 32, // Position exactly as in the image
                            child: Container(
                              width: 28,
                              height: 28,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 6.0,
                                    spreadRadius: 1.0,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Container(
                                  width: 5,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green.shade900,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildStatCard("2.3K", "Followers", context),
                  _buildStatCard("50", "Artworks", context),
                  _buildStatCard("21", "Exhibitions", context),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        LucideIcons.heart,
                        color: Colors.red,
                        size: 18,
                      ),
                      SizedBox(width: 6),
                      Text(
                        "120",
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        LucideIcons.mousePointer,
                        color: Colors.blue,
                        size: 18,
                      ),
                      SizedBox(width: 6),
                      Text(
                        "43K",
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        LucideIcons.share2,
                        color: Colors.black87,
                        size: 18,
                      ),
                      SizedBox(width: 6),
                      Text(
                        "2.3K",
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      _buildFeatureTile(CupertinoIcons.share, "Uploads", context, isActive: true),
                      Container(
                        height: 1,
                        width: 65,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                  _buildFeatureTile(CupertinoIcons.photo, "Exhibitions", context, isActive: false),
                  Column(
                    children: [
                      SvgPicture.asset(
                        'assets/icons.svg',
                        width: 28.970731735229492,
                        height: 34.3414421081543,

                        color: Colors.black,
                      ),
                      const SizedBox(height: 8),
                      Text('Revenue',
                        style: GoogleFonts.barlow(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.71,
                          letterSpacing: 0.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            ImageGrid(),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(String value, String label, BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w300,
              ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
        ),
      ],
    );
  }

  Widget _buildFeatureTile(IconData icon, String label, BuildContext context, {bool isActive = false}) {
    return Column(
      children: [
        Icon(
          icon,
          size: 32,
          color: isActive ? Colors.black : Colors.grey,
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: GoogleFonts.barlow(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 1.71, // Line height conversion
            letterSpacing: 0.0,
            color: isActive ? Colors.black : Colors.grey,
          ),
        )
      ],
    );
  }
}

class ImageGrid extends StatelessWidget {
  const ImageGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return Skeletonizer(
          enabled: state.status == DataStatus.loading,
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
            ),
            itemCount: state.photos.length,
            itemBuilder: (context, index) {
              final photo = state.photos[index];
              return ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CachedNetworkImage(
                  placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Image.asset('assets/Bitmap.png'),
                  imageUrl: photo.url,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
