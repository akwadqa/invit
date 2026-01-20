import 'package:flutter/material.dart';
import 'event_date_badge.dart';

class EventCard extends StatelessWidget {
  final String date;
  final String title;
  final String category;
  final String location;
  final String imageUrl;

  const EventCard({
    super.key,
    required this.date,
    required this.title,
    required this.category,
    required this.location,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6),
        ],
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.asset(
                  imageUrl,
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                top: 12,
                left: 12,
                child: EventDateBadge(date: date),
              ),

              // Positioned(
              //   top: 12,
              //   right: 12,
              //   child: Icon(Icons.bookmark, color: Colors.orange),
              // ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.pink.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(category),
                    ),
                  ],
                ),
                const SizedBox(height: 8),

                Row(
                  children: const [
                    Icon(Icons.location_on, size: 18, color: Colors.red),
                    SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        "Riffa Halls Hall No. 15",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
