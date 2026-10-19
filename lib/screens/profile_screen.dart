import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          
          Stack(
            clipBehavior: Clip.none,
            children: [
              
              Container(
                height: 200,
                width: double.infinity,
                
                child: Image.network(
                  'https://plus.unsplash.com/premium_photo-1666700698946-fbf7baa0134a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
                  fit: BoxFit.cover,
                ),
              ),
              // Top Action Icons
              Positioned(
                top: 40,
                right: 10,
                child: Row(
                  children: const [
                    Icon(Icons.menu, color: Colors.white),
                    SizedBox(width: 15),
                    Icon(Icons.edit, color: Colors.white),
                    SizedBox(width: 15),
                    Icon(Icons.search, color: Colors.white),
                    SizedBox(width: 15),
                    Icon(Icons.more_horiz, color: Colors.white),
                  ],
                ),
              ),
              
              Positioned(
                bottom: -50,
                left: 20,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 46,
                    backgroundColor: Colors.blue[200], // Placeholder
                    child: const Icon(Icons.person, size: 50, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 60), 

          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Althea Lorainne", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                const Text("100 Posts | Iloilo City", style: TextStyle(color: Colors.grey)),

                const SizedBox(height: 15),

                
                Row(
                  children: [
                    Expanded(child: ElevatedButton(onPressed: () {}, child: const Text("Add to story"))),
                    const SizedBox(width: 10),
                    Expanded(child: OutlinedButton(onPressed: () {}, child: const Text("Edit profile"))),
                  ],
                ),

                const SizedBox(height: 15),

                
                const Text("Your profile is private. Learn more.", style: TextStyle(color: Colors.blue)),

                const SizedBox(height: 20),

                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text("AI", style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Photos"),
                    Text("Reels"),
                  ],
                ),
                const Divider(),

                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Personal Details", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Icon(Icons.edit),
                  ],
                ),

                const SizedBox(height: 10),

                
                ListTile(leading: const Icon(Icons.location_on), title: const Text("Iloilo City")),
                ListTile(leading: const Icon(Icons.home), title: const Text("123 Street, Iloilo City")),
                ListTile(leading: const Icon(Icons.cake), title: const Text("August 28, 2005")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
