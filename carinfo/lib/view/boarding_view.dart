import 'package:flutter/material.dart';
import 'login_view.dart';

class BoardingView extends StatefulWidget {
  const BoardingView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BoardingViewState createState() => _BoardingViewState();
}

class _BoardingViewState extends State<BoardingView> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _boardingData = [
    {
      'image': 'assets/images/logo.png',
      'text': 'Discover Every Detail, Drive Every Dream',
    },
    {
      'image': 'assets/images/logo.png',
      'text': 'Find Your Perfect Car with Ease',
    },
    {
      'image': 'assets/images/logo.png',
      'text': 'Compare and Choose the Best',
    },
    {
      'image': 'assets/images/logo.png',
      'text': 'Drive Your Dreams Today!',
    },
  ];

  void _onNext() {
    if (_currentPage < _boardingData.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginView()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemCount: _boardingData.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      _boardingData[index]['image']!,
                      height: 190.0,
                      width: 190.0,
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'Carinfo',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF390050),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      _boardingData[index]['text']!,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 130, 129, 129),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _boardingData.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                height: 8.0,
                width: _currentPage == index ? 16.0 : 8.0,
                decoration: BoxDecoration(
                  color: _currentPage == index
                      ? const Color(0xFF390050)
                      : const Color(0xFFD8D8D8),
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginView(),
                      ),
                    );
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFF390050),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: _onNext,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    backgroundColor: const Color(0xFF390050),
                  ),
                  child: Text(
                    _currentPage == _boardingData.length - 1
                        ? 'Finish'
                        : 'Next',
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
