# Unhandled Exceptions in Asynchronous Dart Operations

This repository demonstrates a common error in Dart: failing to properly handle exceptions during asynchronous operations. The `bug.dart` file shows the problematic code, while `bugSolution.dart` presents the corrected version.

## Problem
The original code makes a network request. If the request fails or the JSON response cannot be parsed, the error isn't gracefully handled, leading to potential crashes or unexpected behavior.  Specifically, the `jsonDecode` function can throw a `FormatException` if the response isn't valid JSON. Network issues can also cause exceptions.

## Solution
The solution uses `try-catch` blocks to handle potential exceptions during both the network request and JSON decoding.  Specific error handling allows for more informative error messages and improved application robustness. 