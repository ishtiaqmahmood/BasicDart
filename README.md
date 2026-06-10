# Dart Mastery: A Comprehensive Hands-on Guide

This repository is a structured learning path for mastering the Dart programming language, from basic syntax to advanced concurrency and Object-Oriented Programming (OOP). Each script is designed to be self-contained, providing clear examples and practical insights.

## 🚀 Getting Started

### Prerequisites

To run these scripts, ensure you have the [Dart SDK](https://dart.dev/get-dart) installed.

Check your installation:
```bash
dart --version
```

### Running the Scripts

Execute any script using the Dart CLI:
```bash
dart <filename>.dart
```

Example:
```bash
dart 1_DataTypes.dart
```

For scripts in the `OOP/` directory:
```bash
dart OOP/<filename>.dart
```

---

## 📚 Table of Contents

### Core Dart Concepts
1. [Data Types](#1_datatypesdart)
2. [Operators](#2_operatorsdart)
3. [Conditional Statements](#3_conditionalstatementdart)
4. [String Concatenation & Interpolation](#4_strconcatandinterpolationdart)
5. [Compile-time vs Runtime Errors](#5_compiletimevsruntimeerrordart)
6. [Final vs Const](#6_finalvsconstdart)
7. [Collections: Lists](#7_playingwithlistsdart)
8. [Collections: Maps](#8_playingwithmapsdart)
9. [Collections: Sets](#9_playingwithsetsdart)
10. [Enumerated Types (Enums)](#10_enumdart)
11. [Functions & Closures](#11_functionsdart)
12. [User Input (stdin/stdout)](#12_userinputtakingdart)
13. [Error & Exception Handling](#13_exceptionsdart)
14. [Generics](#14_genericsdart)
15. [Extension Methods](#15_extensionsdart)
16. [Concurrency: Isolates](#16_isolatesdart)
17. [Records & Patterns](#17_recordsandpatternsdart)
18. [Asynchronous Programming: Async & Await](#18_asyncawaitdart)
19. [Future vs Stream](#19_futurevsstreamdart)
20. [Metadata & Annotations](#20_metadatadart)

### Object-Oriented Programming (OOP)
1. [Classes & Objects](#oop1_classesobjectsdart)
2. [Constructors](#oop2_constructordart)
3. [Fields & Methods](#oop3_fieldsmethodsdart)
4. [Getters & Setters](#oop4_gettersetterdart)
5. [Access Modifiers](#oop5_accessmodifierdart)
6. [Encapsulation](#oop6_encapsulationdart)
7. [Inheritance](#oop7_inheritancedart)
8. [Polymorphism](#oop8_polymorphismdart)
9. [Abstract Classes](#oop9_abstractclassesdart)
10. [Interfaces](#oop10_interfacesdart)
11. [Mixins](#oop11_mixinsdart)
12. [Static Members](#oop12_staticmemberdart)
13. [Factory Constructors](#oop13_factoryconstructordart)
14. [Object Relationships](#oop14_objectrelationshipdart)
15. [Generics in OOP](#oop15_genericsdart)
16. [Callable Classes](#oop16_callableclassesdart)

---

## 🔍 Core Script Breakdown

### [1_DataTypes.dart](./1_DataTypes.dart)
Fundamental data types: Numbers (`int`, `double`), Strings, Booleans, `Runes`, and `Symbols`.

### [2_Operators.dart](./2_Operators.dart)
Arithmetic, bitwise, assignment, comparison, logical, type test, and the cascade operator (`..`).

### [3_ConditionalStatement.dart](./3_ConditionalStatement.dart)
Control flow using `if-else` and `switch-case`.

### [4_StrConcatAndInterpolation.dart](./4_StrConcatAndInterpolation.dart)
String manipulation, interpolation, multiline strings, and raw strings.

### [5_CompileTimeVsRuntimeError.dart](./5_CompileTimeVsRuntimeError.dart)
Understanding the difference between syntax/type errors and execution-time failures.

### [6_FinalVsConst.dart](./6_FinalVsConst.dart)
Immutability in Dart: `final` (runtime) vs `const` (compile-time).

### [7_PlayingWithLists.dart](./7_PlayingWithLists.dart)
Working with ordered collections: CRUD operations, filtering, and transformation.

### [8_PlayingWithMaps.dart](./8_PlayingWithMaps.dart)
Key-value pairs: management, iteration, and nested structures.

### [9_PlayingWithSets.dart](./9_PlayingWithSets.dart)
Unique collections: mathematical operations like union, intersection, and difference.

### [10_enum.dart](./10_enum.dart)
Defining fixed sets of named constants for better type safety and readability.

### [11_Functions.dart](./11_Functions.dart)
Arrow functions, optional/named parameters, higher-order functions, closures, and generators.

### [12_UserInputTaking.dart](./12_UserInputTaking.dart)
Interactive console applications using `stdin` and `stdout`.

### [13_Exceptions.dart](./13_Exceptions.dart)
Robust error handling using `try`, `catch`, `on`, `finally`, and custom exceptions.

### [14_Generics.dart](./14_Generics.dart)
Type-safe code that works with multiple types using `<T>`.

### [15_Extensions.dart](./15_Extensions.dart)
Adding new functionality to existing libraries and built-in types.

### [16_Isolates.dart](./16_Isolates.dart)
True parallelism in Dart: running heavy tasks on separate threads.

### [17_RecordsAndPatterns.dart](./17_RecordsAndPatterns.dart)
Lightweight tuples (Records) and powerful data destructuring (Patterns).

### [18_Async&Await.dart](./18_Async&Await.dart)
Handling asynchronous operations gracefully without blocking the main thread.

### [19_FuturevsStream.dart](./19_FuturevsStream.dart)
Single values (`Future`) vs continuous data sequences (`Stream`).

### [20_Metadata.dart](./20_Metadata.dart)
Using annotations like `@override`, `@deprecated`, and creating custom metadata.

---

## 🏛 Object-Oriented Programming (OOP)

### [OOP/1_Classes&Objects.dart](./OOP/1_Classes&Objects.dart)
The basics: blueprints and instances.

### [OOP/2_Constructor.dart](./OOP/2_Constructor.dart)
Default, parameterized, named, redirecting, and `const` constructors.

### [OOP/3_Fields&Methods.dart](./OOP/3_Fields&Methods.dart)
Defining state and behavior within classes.

### [OOP/4_Getter&setter.dart](./OOP/4_Getter&setter.dart)
Controlled access to private fields with validation.

### [OOP/5_AccessModifier.dart](./OOP/5_AccessModifier.dart)
Library-level privacy using the underscore (`_`) prefix.

### [OOP/6_Encapsulation.dart](./OOP/6_Encapsulation.dart)
Bundling data and methods while restricting direct access.

### [OOP/7_Inheritance.dart](./OOP/7_Inheritance.dart)
Code reuse through single and multilevel inheritance.

### [OOP/8_Polymorphism.dart](./OOP/8_Polymorphism.dart)
Achieving different behaviors through method overriding and generic interfaces.

### [OOP/9_AbstractClasses.dart](./OOP/9_AbstractClasses.dart)
Defining blueprints that cannot be instantiated.

### [OOP/10_Interfaces.dart](./OOP/10_Interfaces.dart)
Implementing contracts; every class in Dart is an implicit interface.

### [OOP/11_Mixins.dart](./OOP/11_Mixins.dart)
Reusing code across multiple class hierarchies without inheritance.

### [OOP/12_StaticMember.dart](./OOP/12_StaticMember.dart)
Class-level variables and methods that belong to the class itself.

### [OOP/13_FactoryConstructor.dart](./OOP/13_FactoryConstructor.dart)
Advanced object creation: singletons, caching, and returning subtypes.

### [OOP/14_ObjectRelationship.dart](./OOP/14_ObjectRelationship.dart)
Association, Aggregation, and Composition (Has-A vs Is-A).

### [OOP/15_Generics.dart](./OOP/15_Generics.dart)
Implementing type-safe generic classes and services.

### [OOP/16_CallableClasses.dart](./OOP/16_CallableClasses.dart)
Making class instances behave like functions using the `call()` method.

---

## 🛠 Contributing
Contributions are welcome! Feel free to open issues or PRs to add more advanced topics.

## 📄 License
This project is open-source and available under the MIT License.
