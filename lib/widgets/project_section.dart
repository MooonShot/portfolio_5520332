import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectSection extends StatelessWidget {
  final List<Project> projects = [
    Project(
      title: 'CampusHelper Chatbot',
      description: 'AI powered chatbot for students, built using Azure Language Studio and Azure SWA.',
      tech: 'Azure · Supabase · Vercel',
      link: 'https://github.com/MooonShot/campushelper-chatbot',
    ),
    Project(
      title: 'Jattus AIO v2 Bot',
      description: 'Advanced retail automation bot with multi-tasking and proxy rotation.',
      tech: 'Node.js · Puppeteer · Redis',
      link: 'https://github.com/MooonShot/jattus_aio_v2',
    ),
    Project(
      title: 'Personal Portfolio Website',
      description: 'Fully responsive portfolio site with animations and clean UI.',
      tech: 'Flutter Web',
      link: 'https://github.com/MooonShot/portfolio_5520332', //
    ),
  ];

  ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Projects',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: projects
                .map((project) => ProjectCard(project: project))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class Project {
  final String title;
  final String description;
  final String tech;
  final String? link;

  Project({
    required this.title,
    required this.description,
    required this.tech,
    this.link,
  });
}

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  void _launchURL(BuildContext context, String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Could not launch $url")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: project.link != null
            ? () => _launchURL(context, project.link!)
            : null,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: 300,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.deepPurpleAccent),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                project.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                project.description,
                style: const TextStyle(color: Colors.white70),
              ),
              const SizedBox(height: 12),
              Text(
                project.tech,
                style: const TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
