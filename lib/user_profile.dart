import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final double coverHeight = 280;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[buildTop(), buildContext()]),
    );
  }

  Widget buildTop() {
    final top = coverHeight - profileHeight / 2;
    final bottom = profileHeight / 2;
    return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(bottom: bottom),
              child: buildCoverImage()),
          Positioned(top: top, child: buildProfileImage())
        ]);
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset(
          "assets/userprofile.png",
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: const AssetImage("assets/man.jpeg"),
      );

  Widget buildContext() {
    return Column(
      children: [
        const SizedBox(
          height: 8,
        ),
        const Text(
          "Kasodiya Prajesh",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "Flutter Software Devloper",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSocialIcon(FontAwesomeIcons.slack),
            const SizedBox(width: 12),
            buildSocialIcon(FontAwesomeIcons.github),
            const SizedBox(width: 12),
            buildSocialIcon(FontAwesomeIcons.twitter),
            const SizedBox(width: 12),
            buildSocialIcon(FontAwesomeIcons.linkedin),
          ],
        ),
        const SizedBox(height: 16),
        const Divider(),
        aboutData()
      ],
    );
  }

  Widget buildSocialIcon(IconData icon) => CircleAvatar(
      radius: 25,
      child: Material(
        clipBehavior: Clip.hardEdge,
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Center(
            child: Icon(
              icon,
              size: 32,
            ),
          ),
        ),
      ));

  Widget aboutData() {
    return SizedBox(
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "About",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "I am passionate about building excellent software, Mobile Application or Website that improves the lives of those around me. I specialize in creating software, Mobile Application or Website for clients ranging from individuals and small-businesses all the way to large enterprise corporations. What would you do if you had a software expert available at your fingertips ?",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 17, color: Colors.black54),
            ),
            const SizedBox(height: 20),
            const Text(
              "Mobile & Web Develop",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            const SizedBox(height: 10),
            const Text(
              "Fundamentals of Mobile Web Development·The Build Process · Boilerplate for Multi-Device HTML · Styleguide · Device Mode · Paint Profiler...",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 17, color: Colors.black54),
            ),
            const SizedBox(height: 20),
            const Text(
              "Services",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            const SizedBox(height: 10),
            const Text(
              "This website works for the following special services.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 17, color: Colors.black54),
            ),
            const SizedBox(height: 20),
            Card(
              color: Colors.white,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: const [
                    Padding(padding: EdgeInsets.only(top: 20)),
                    CircleAvatar(
                      radius: 40,
                      child: Icon(
                        Icons.developer_mode,
                        size: 50,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Center(
                        child: Text("Web Development",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold))),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        "We offer end-to-end web development solutions by strategically combining latest web technologies with mature project development methodologies & robust project management tools.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 17, color: Colors.black54),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              color: Colors.white,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: const [
                    Padding(padding: EdgeInsets.only(top: 20)),
                    CircleAvatar(
                      radius: 40,
                      child: Icon(
                        Icons.settings_applications_outlined,
                        size: 50,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Center(
                        child: Text("Mobile Application",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold))),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        "extensively researched mobile app development for Android, iOS and wearable technology.I develop mobile apps that help businesses for better operational efficiency and engagement.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 17, color: Colors.black54),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              color: Colors.white,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: const [
                    Padding(padding: EdgeInsets.only(top: 20)),
                    CircleAvatar(
                      radius: 40,
                      child: Icon(
                        Icons.palette,
                        size: 50,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Center(
                        child: Text("Cross Platform",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold))),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        "I specialize in building high-performance, interactive, and scalable cross-platform mobile apps that not only work seamlessly across all platforms, but also help you dominate any market.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 17, color: Colors.black54),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
