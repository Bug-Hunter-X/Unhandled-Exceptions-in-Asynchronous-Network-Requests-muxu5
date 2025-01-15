# Unhandled Exceptions in Asynchronous Network Requests (Dart)

This repository demonstrates a common error in Dart:  insufficient exception handling in asynchronous network requests. The `bug.dart` file contains code that makes a network request but doesn't thoroughly handle potential errors.  The `bugSolution.dart` file provides improved error handling.

## Problem

The original code lacks robust error handling, making it difficult to diagnose issues during network operations or JSON processing.  The `catch` block simply prints the error, which is not always helpful for debugging.

## Solution

The solution includes more specific error handling. The `bugSolution.dart` shows how to handle different types of exceptions appropriately. Specific error messages give insights into the nature of the issue.