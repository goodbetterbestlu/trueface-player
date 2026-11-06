import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;

  final List<Widget> _pages = const [
    HomeTab(),
    PlaceholderTab(title: '图片去美颜'),
    PlaceholderTab(title: '本地视频'),
    PlaceholderTab(title: '网络链接'),
    PlaceholderTab(title: '我的'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_current],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF0D0F14),
        selectedItemColor: const Color(0xFF5B8CFF),
        unselectedItemColor: const Color(0xFF8B90A0),
        currentIndex: _current,
        type: BottomNavigationBarType.fixed,
        onTap: (i) => setState(() => _current = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: '图片'),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: '视频'),
          BottomNavigationBarItem(icon: Icon(Icons.link), label: '网络'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '我的'),
        ],
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            Row(
              children: [
                Container(
                  width: 8, height: 8,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(colors: [Color(0xFF5B8CFF), Color(0xFF9B6BFF)]),
                  ),
                ),
                const SizedBox(width: 8),
                const Text('TRUE FACE', style: TextStyle(fontWeight: FontWeight.w800, letterSpacing: 0.5)),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(border: Border.all(color: Color(0xFF1E222C)), borderRadius: BorderRadius.circular(20)),
                  child: const Text('原型 v0.1', style: TextStyle(fontSize: 11, color: Color(0xFF8B90A0))),
                ),
              ],
            ),
            const SizedBox(height: 28),
            const Text('不是让你更美\n是让被过度修饰的脸\n回到自然。',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800, height: 1.25)),
            const SizedBox(height: 10),
            const Text('导入图片、本地视频，AI 尝试降低磨皮、美白与滤镜，重建真实皮肤纹理。',
                style: TextStyle(color: Color(0xFF8B90A0), fontSize: 14, height: 1.6)),
            const SizedBox(height: 24),
            _Entry(icon: Icons.image, title: '图片去美颜', desc: '相册或图片链接，原图 / 还原对比', onTap: () {}),
            const SizedBox(height: 12),
            _Entry(icon: Icons.movie, title: '本地视频去美颜', desc: 'MP4 / MOV，逐帧一致性处理', onTap: () {}),
            const SizedBox(height: 12),
            _Entry(icon: Icons.link, title: '网络链接去美颜', desc: '粘贴公开视频链接（合规解析）', onTap: () {}),
            const Spacer(),
            const Text('AI 还原模式：自然 / 真实 / 五官还原 / 深度还原（开发中）',
                style: TextStyle(fontSize: 12, color: Color(0xFF8B90A0))),
          ],
        ),
      ),
    );
  }
}

class _Entry extends StatelessWidget {
  final IconData icon;
  final String title;
  final String desc;
  final VoidCallback onTap;
  const _Entry({required this.icon, required this.title, required this.desc, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          gradient: const LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xFF14171F), Color(0xFF0D0F14)]),
          border: Border.all(color: const Color(0xFF1E222C)),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Icon(icon, size: 26, color: const Color(0xFF5B8CFF)),
            const SizedBox(width: 14),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                const SizedBox(height: 4),
                Text(desc, style: const TextStyle(fontSize: 12.5, color: Color(0xFF8B90A0))),
              ],
            )),
            const Icon(Icons.arrow_forward_ios, size: 14, color: Color(0xFF8B90A0)),
          ],
        ),
      ),
    );
  }
}

class PlaceholderTab extends St
