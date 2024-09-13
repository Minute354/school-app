import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/payment_providers.dart';
import '../../providers/student_providers.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final studentProvider = Provider.of<StudentProvider>(context);
    // final paymentProvider = Provider.of<PaymentProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // studentProvider.fetchStudents();
            },
            child: Text('Fetch Students'),
          ),
          ElevatedButton(
            onPressed: () {
              // Example payment handling
              // paymentProvider.fetchDueAmount('student_id'); // replace with actual student ID
            },
            child: Text('Fetch Payment Details'),
          ),
          // Add widgets to display students and payment details
        ],
      ),
    );
  }
}
