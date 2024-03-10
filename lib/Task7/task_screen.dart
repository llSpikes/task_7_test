import 'package:customizable_counter/customizable_counter.dart';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:task7/Profile%20Screen/colors.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffebd2),
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        backgroundColor: const Color(0xfffbd6a9),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 240,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.black),
                child: Image.network(
                  'https://media.wired.com/photos/6500ad57fe61eb702d721b58/4:3/w_1913,h_1435,c_limit/Apple-iPhone-15-Pro-Hero-Gear.jpg',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'IPhone 14 Pro',
                style: TextStyle(
                    color: Color(0xffac4f43),
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xffac4f43),
                    size: 30,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '4(3)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Spacer(),
                  CustomizableCounter(
                    showButtonText: false,
                    borderColor: Color(0xffffebd2),
                    borderWidth: 5,
                    borderRadius: 100,
                    backgroundColor: Color(0xffff9165),
                    textColor: Colors.white,
                    textSize: 22,
                    count: 0,
                    step: 1,
                    minCount: 0,
                    maxCount: 10,
                    incrementIcon: CircleAvatar(
                      backgroundColor: Color(0xffac4f43),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    decrementIcon: CircleAvatar(
                      backgroundColor: Color(0xffffebd2),
                      child: Icon(
                        Icons.remove,
                        color: Color(0xffac4f43),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(0xffac4f43)),
                  ),
                  Text(
                    'Buy IPhone 14 Pro Max Get Airpods Free !',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
              Row(
                children: [
                  const Text(
                    'EGP',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    '420',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffff9165),
                        foregroundColor: AppColors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {},
                    child: const Text('Add to cart'),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                color: Color(0xffff9165),
                thickness: 2,
                indent: 15,
                endIndent: 15,
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Review',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xffac4f43)),
                        ),
                        Text('Send Your Feedback Now'),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.keyboard_arrow_up)),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.white,
                height: 100,
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  textAlignVertical: TextAlignVertical.top,
                  expands: true,
                  maxLines: null,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(),
                    hintText: 'Add a comment...',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Color(0xffac4f43),
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffac4f43),
                        foregroundColor: AppColors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: const Text('Send'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
