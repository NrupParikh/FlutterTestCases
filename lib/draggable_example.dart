import 'package:flutter/material.dart';

void main() => runApp(const DragAndDropExampleApp());

class DragAndDropExampleApp extends StatelessWidget {
  const DragAndDropExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DragAndDropExample(),
    );
  }
}

class DragAndDropExample extends StatefulWidget {
  const DragAndDropExample({super.key});

  @override
   State<DragAndDropExample> createState() => _DragAndDropExampleState();
}

class _DragAndDropExampleState extends State<DragAndDropExample> {
  Color targetColor = Colors.grey.shade300; // Default target color
  bool isDropped = false; // Track if item is dropped

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Draggable & DragTarget Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Draggable Widget (Blue Box)
            Draggable<Color>(
              data: Colors.blue,
              feedback: Container(
                width: 80,
                height: 80,
                color: Colors.blue.withOpacity(0.7),
                child: const Icon(Icons.drag_indicator, color: Colors.white),
              ),
              childWhenDragging: Container(
                width: 80,
                height: 80,
                color: Colors.blue.shade100, // Show faded box while dragging
              ),
              child: Container(
                width: 80,
                height: 80,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    "Drag Me",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),

            // Drag Target (Drop Area)
            DragTarget<Color>(
              onAccept: (color) {
                setState(() {
                  targetColor = color; // Change target color on successful drop
                  isDropped = true;
                });
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: targetColor,
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: Center(
                    child: isDropped
                        ? const Text(
                            "Dropped!",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        : const Text("Drop Here"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
