import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  QuizApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartQuiz(),
    );
  }
}

class StartQuiz extends StatelessWidget {
  StartQuiz();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1435),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100),
            const Text("Good morning,", style: TextStyle(color: Colors.white70, fontSize: 18)),
            const SizedBox(height: 10),
            const Text("New topic is waiting", 
              style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
            const Spacer(),          
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => QuistionOne()));
                },
                child: const Text("Start Quiz", 
                  style: TextStyle(color: Color(0xFF1E1435), fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class QuistionOne extends StatelessWidget {
  QuistionOne();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1435),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFF6A5AE0),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text("Question 1", style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 30),
            const Text(
              "How would you describe your level of satisfaction with the healthcare system?",
              style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 30),
            const OptionWidget(text: "Strongly satisfied", isSelected: true),
            const OptionWidget(text: "Satisfied", isSelected: false),
            const OptionWidget(text: "Neutral", isSelected: false),
            const OptionWidget(text: "Not satisfied", isSelected: false),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BackBtn(),
                NextBtn(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => QuistionThree()));
                }),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class QuistionThree extends StatelessWidget {
  QuistionThree();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1435),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFF6A5AE0),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text("Question 3", style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 30),
            const Text(
              "What vitamins do you take?",
              style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 30),
            const OptionWidget(text: "Vitamin D3", isSelected: true),
            const OptionWidget(text: "Vitamin B", isSelected: false),
            const OptionWidget(text: "Zinc", isSelected: true),
            const OptionWidget(text: "Magnesium", isSelected: false),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BackBtn(),
                NextBtn(onTap: () {
                }),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class OptionWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  const OptionWidget({super.key, required this.text, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFFC0B3FF) : Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Icon(
            isSelected ? Icons.check_circle : Icons.circle_outlined,
            color: const Color(0xFF1E1435),
          ),
          const SizedBox(width: 15),
          Text(text, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class BackBtn extends StatelessWidget {
  const BackBtn({super.key});
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => Navigator.pop(context),
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        side: const BorderSide(color: Colors.white38),
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: const Text("<  Back"),
    );
  }
}

class NextBtn extends StatelessWidget {
  final VoidCallback onTap;
  const NextBtn({super.key, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF6A5AE0),
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: const Text("Next  >", style: TextStyle(color: Colors.white)),
    );
  }
}