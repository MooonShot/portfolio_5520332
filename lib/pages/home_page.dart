import 'package:flutter/material.dart';
import '../widgets/navigation_drawer.dart';
import '../widgets/project_section.dart';
import '../widgets/contact_section.dart';
import '../widgets/about_section.dart';
import 'more_page.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePage extends StatelessWidget {
  final ScrollController scrollController = ScrollController();

  HomePage({Key? key}) : super(key: key);

  void scrollTo(double offset) {
    scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: AppDrawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Container(
          color: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Hamburger menu on the left
              Builder(
                builder: (context) => IconButton(
                  icon: const Icon(Icons.menu, color: Colors.white),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),

              // Navigation buttons on the right
              Row(
                children: [
                  _NavButton(title: 'Home', onTap: () => scrollTo(0)),
                  _NavButton(title: 'Projects', onTap: () => scrollTo(600)),
                  _NavButton(title: 'About', onTap: () => scrollTo(1200)),
                  _NavButton(title: 'Contact', onTap: () => scrollTo(1800)),
                  _NavButton(
                    title: 'More',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const MorePage()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            Container(
              height: 600,
              alignment: Alignment.center,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 32.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    TypewriterAnimatedText("Hi, I’m Aayush 👨‍💻"),
                    TypewriterAnimatedText("I design elegant Flutter interfaces."),
                    TypewriterAnimatedText("Clean code. Smooth UX. Bold ideas."),
                  ],
                ),
              ),
            ),
            ProjectSection(),
            AboutSection(),
            ContactSection(),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Made with ❤️ by Aayush  2025",
                style: TextStyle(color: Colors.white70),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _NavButton({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Text(title, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
