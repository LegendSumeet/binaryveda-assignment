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
          IconButton.filled(
            disabledColor: Colors.red,
            highlightColor: Colors.red,
            focusColor: Colors.red,
            color: Colors.red,
            icon: const Icon(Icons.person_outline_outlined, color: Colors.white),
            onPressed: () {},
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
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
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
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SwitchListTile.adaptive(
                value: true,
                onChanged: (value) {},
                title: Text(
                  "My Dashboard",
                  style: const TextStyle(
                    fontSize: 16,
                    decorationThickness: 1.5,
                  ),
                ),
                activeColor: Colors.green,
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
                        size: 24,
                      ),
                      SizedBox(width: 6),
                      Text(
                        "120",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  // Paper Plane Icon with Count
                  Row(
                    children: [
                      Icon(
                        LucideIcons.mousePointer,
                        color: Colors.blue,
                        size: 24,
                      ),
                      SizedBox(width: 6),
                      Text(
                        "43K",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Icon(
                        LucideIcons.share2,
                        color: Colors.black87,
                        size: 24,
                      ),
                      SizedBox(width: 6),
                      Text(
                        "2.3K",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      _buildFeatureTile(CupertinoIcons.share, "Uploads", context, isActive: true),
                      Container(
                        height: 2,
                        width: 64,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                  _buildFeatureTile(CupertinoIcons.photo, "Exhibitions", context, isActive: false),
                  Column(
                    children: [
                      SvgPicture.asset(
                        'assets/icons.svg',
                        width: 32,
                        height: 32,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 8),
                      Text('Revenue'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
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
        ),
        const SizedBox(height: 4),
        Text(
          label,
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
        ),
        const SizedBox(height: 8),
        Text(label),
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
