# Dart Basics: A Hands-on Learning Guide

This repository contains a series of Dart scripts designed to help beginners and intermediate developers master the core concepts of the Dart programming language. Each file focuses on a specific topic, providing clear examples and practical usage.

## 🚀 Getting Started

### Prerequisites

To run these scripts, you need to have the [Dart SDK](https://dart.dev/get-dart) installed on your machine.

You can check your installation by running:
```bash
dart --version
```

### Running the Scripts

Navigate to the repository directory and run any script using the Dart CLI:
```bash
dart <filename>.dart
```
Example:
```bash
dart 1_DataTypes.dart
```

---

## 📚 Table of Contents

1. [Data Types](#1-data-types)
2. [Operators](#2-operators)
3. [Conditional Statements](#3-conditional-statements)
4. [String Concatenation & Interpolation](#4-string-concatenation--interpolation)
5. [Errors: Compile-time vs Runtime](#5-errors-compile-time-vs-runtime)
6. [Final vs Const](#6-final-vs-const)
7. [Working with Lists](#7-working-with-lists)
8. [Working with Maps](#8-working-with-maps)
9. [Working with Sets](#9-working-with-sets)

---

## 🔍 Script Breakdown

### [1_DataTypes.dart](./1_DataTypes.dart)
Introduces the fundamental data types in Dart, including:
- Numbers (`int`, `double`)
- Strings, Booleans
- Collections (`List`, `Map`, `Set`)
- Advanced types: `Runes` (Unicode characters) and `Symbols`
- Type inference with `var` and immutability with `final`

### [2_Operators.dart](./2_Operators.dart)
A comprehensive guide to Dart's rich set of operators:
- **Arithmetic**: `+`, `-`, `*`, `/`, `%`, `~/`, `++`, `--`
- **Bitwise**: `&`, `|`, `^`, `~`, `<<`, `>>`
- **Assignment**: `+=`, `-=`, `??=` (null-aware)
- **Comparison & Logical**: `==`, `!=`, `>`, `<`, `&&`, `||`, `!`
- **Type Test**: `is`, `is!`
- **Conditional (Ternary)** and **Cascade Notation** (`..`)

### [3_ConditionalStatement.dart](./3_ConditionalStatement.dart)
Demonstrates control flow using:
- `if`, `else if`, and `else` blocks.
- `switch` statements for multi-way branching.

### [4_StrConcatAndInterpolation.dart](./4_StrConcatAndInterpolation.dart)
Explores string manipulation techniques:
- Concatenation using `+` and string literals.
- **Interpolation**: Using `$variable` or `${expression}`.
- Multiline strings (`'''`) and Raw strings (`r''`).
- Useful string properties and methods.

### [5_CompileTimeVsRuntimeError.dart](./5_CompileTimeVsRuntimeError.dart)
Explains the crucial difference between errors:
- **Compile-time**: Syntax or type errors caught before the code runs.
- **Runtime**: Errors that occur during execution (e.g., division by zero).

### [6_FinalVsConst.dart](./6_FinalVsConst.dart)
Deep dive into immutability:
- **final**: Value set once, can be determined at runtime.
- **const**: Compile-time constants.
- Usage in classes and static contexts.

### [7_PlayingWithLists.dart](./7_PlayingWithLists.dart)
Master Dart `List` (ordered collections):
- Adding, inserting, and updating elements.
- Replacing ranges and removing items.
- Accessing elements and checking properties.

### [8_PlayingWithMaps.dart](./8_PlayingWithMaps.dart)
Deep dive into `Map` (key-value pairs):
- CRUD operations (Create, Read, Update, Delete).
- Iterating using `forEach` and `for-in`.
- Transforming, filtering, and merging maps.
- Null-aware access and nested maps.

### [9_PlayingWithSets.dart](./9_PlayingWithSets.dart)
Learn about `Set` (unordered unique collections):
- Core operations: `union`, `intersection`, `difference`.
- Set methods: `add`, `remove`, `contains`.
- Converting between Sets, Lists, and Maps.

---

## 🛠 Contributing

Contributions are welcome! If you have suggestions for new topics or improvements to existing ones, feel free to open an issue or submit a pull request.

## 📄 License

This project is open-source and available under the MIT License.
