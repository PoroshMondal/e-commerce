import 'package:flutter/material.dart';
import 'curved_edges.dart';

class TCurvedEdgeWidget extends StatelessWidget {
  const TCurvedEdgeWidget({
    super.key, this.child
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      // ClipPath to draw a shape of it's child widget
        clipper: TCustomCurvedEdges(),
        child: child
    );
  }
}
