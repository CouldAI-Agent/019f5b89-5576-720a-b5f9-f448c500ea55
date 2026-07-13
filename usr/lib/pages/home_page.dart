import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = MediaQuery.of(context).size.width > 800;

    return Scaffold(
      appBar: AppBar(
        title: const Text('ProBox Packaging', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Products'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Services'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Contact'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/quote');
              },
              child: const Text('Get a Quote'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Premium Custom Packaging Boxes',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Elevate your brand with high-quality, eco-friendly custom printed boxes.\nFree Design Support & Fast Shipping.',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.8),
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/quote');
                    },
                    child: const Text('Request Custom Quote'),
                  ),
                ],
              ),
            ),
            
            // Features Section
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
              child: Wrap(
                spacing: 32,
                runSpacing: 32,
                alignment: WrapAlignment.center,
                children: [
                  _buildFeatureCard(context, Icons.design_services, 'Free Design Support', 'Our experts help you create the perfect design.'),
                  _buildFeatureCard(context, Icons.local_shipping, 'Fast Turnaround', 'Get your boxes delivered in record time.'),
                  _buildFeatureCard(context, Icons.eco, 'Eco-Friendly', 'Sustainable materials for a greener planet.'),
                  _buildFeatureCard(context, Icons.price_check, 'Competitive Pricing', 'Wholesale rates without compromising quality.'),
                ],
              ),
            ),

            // Popular Categories
            Container(
              color: Colors.grey[50],
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
              child: Column(
                children: [
                  Text(
                    'Popular Packaging Solutions',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 40),
                  Wrap(
                    spacing: 24,
                    runSpacing: 24,
                    alignment: WrapAlignment.center,
                    children: [
                      _buildCategoryCard(context, 'Cosmetic Boxes', 'assets/cosmetic.jpg'),
                      _buildCategoryCard(context, 'Food & Beverage', 'assets/food.jpg'),
                      _buildCategoryCard(context, 'Retail Packaging', 'assets/retail.jpg'),
                      _buildCategoryCard(context, 'Mailer Boxes', 'assets/mailer.jpg'),
                    ],
                  ),
                ],
              ),
            ),
            
            // Footer
            Container(
              color: Colors.black87,
              width: double.infinity,
              padding: const EdgeInsets.all(40),
              child: const Text(
                '© 2026 ProBox Packaging. All rights reserved.',
                style: TextStyle(color: Colors.white70),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard(BuildContext context, IconData icon, String title, String description) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, size: 48, color: Theme.of(context).colorScheme.primary),
          const SizedBox(height: 16),
          Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
          const SizedBox(height: 8),
          Text(description, style: TextStyle(color: Colors.grey[600]), textAlign: TextAlign.center),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(BuildContext context, String title, String imagePath) {
    return Container(
      width: 280,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
      ),
    );
  }
}
