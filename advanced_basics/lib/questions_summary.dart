import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Text(((data['question_index'] as int) + 1).toString(), style: TextStyle(color: Colors.white, fontSize: 20)),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question'] as String, style: TextStyle(color: Colors.white)),
                      SizedBox(height: 5),
                      Text(data['user_answer'] as String, style: TextStyle(color: Colors.white)),
                      SizedBox(height: 5),
                      Text(data['correct_answer'] as String, style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
