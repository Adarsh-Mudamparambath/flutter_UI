import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

class CustomerShareCard extends StatelessWidget {
  const CustomerShareCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: const Icon(Icons.ios_share),
        title: const Text(
          "Customer share",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(Icons.keyboard_arrow_right),
        onTap: () => _showShareOptions(context),
      ),
    );
  }

  void _showShareOptions(BuildContext context) {
    const shareText = "Check this out: https://example.com/customer";

    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (ctx) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.link),
                title: const Text("Copy link"),
                onTap: () async {
                  await Clipboard.setData(const ClipboardData(text: shareText));
                  Navigator.pop(ctx);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Link copied")),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.share),
                title: const Text("Share…"),
                onTap: () async {
                  final box = ctx.findRenderObject() as RenderBox?;
                  final origin = box != null
                      ? (box.localToGlobal(Offset.zero) & box.size)
                      : const Rect.fromLTWH(0, 0, 0, 0);

                  await SharePlus.instance.share(
                    ShareParams(
                      text: shareText,
                      subject: "Customer share",
                      sharePositionOrigin: origin,
                    ),
                  );
                  Navigator.pop(ctx);
                },
              ),
              const SizedBox(height: 8),
            ],
          ),
        );
      },
    );
  }
}
