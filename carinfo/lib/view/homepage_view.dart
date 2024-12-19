import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Image.asset('assets/images/logo.png', height: 60),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search vehicle',
                        prefixIcon: Icon(Icons.search),
                        filled: true,
                        fillColor: Color.fromARGB(255, 239, 239, 239),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(10)),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF390050),
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(10)),
                    ),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.filter_list, color: Colors.white),
                      label: const Text('Filter',
                          style: TextStyle(color: Colors.white)),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        minimumSize: Size.zero, // Removes extra padding
                        tapTargetSize: MaterialTapTargetSize
                            .shrinkWrap, // Tight button size
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              _buildVehicleCategory('Sports Cars', 'assets/images/sports.png'),
              const SizedBox(height: 22),
              _buildVehicleCategory('SUVs Cars', 'assets/images/suv.png'),
              const SizedBox(height: 22),
              _buildVehicleCategory(
                  'ELECTRIC Cars', 'assets/images/electric.png'),
              const SizedBox(height: 20),
              const Text(
                'Brands',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              _buildBrandsRow(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: const Color(0xFF390050),
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  Widget _buildVehicleCategory(String title, String imagePath) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 150,
      decoration: const BoxDecoration(
        color: Color(0xFF390050),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28, // Adjust font size as needed
              fontFamily: 'SFProDisplay',
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                imagePath,
                height: 90,
                width: 250,
                fit: BoxFit.contain,
              )),
        ],
      ),
    );
  }

  Widget _buildBrandsRow() {
    final brands = [
      {
        'name': 'Maserati',
        'count': '+5',
        'image': 'assets/images/maserati.png'
      },
      {
        'name': 'Mercedes',
        'count': '+32',
        'image': 'assets/images/mercedes.png'
      },
      {'name': 'BMW', 'count': '+8', 'image': 'assets/images/bmw.png'},
      {'name': 'Porsche', 'count': '+4', 'image': 'assets/images/porsche.png'},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: brands.map((brand) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(brand['image']!),
                  radius: 30,
                ),
                const SizedBox(height: 5),
                Text(brand['name']!),
                Text(brand['count']!),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
