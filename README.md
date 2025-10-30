# Flutter Dio JSON App

This project demonstrates how to fetch data from a public API using **Dio**, handle **loading and error states**, and convert JSON data into **Dart models** with the help of **json_serializable**. It’s a practical example to understand API integration and data modeling in Flutter.

---

## 📘 Project Overview

This Flutter app:
- Fetches data from an online REST API using **Dio**
- Parses JSON response into Dart model classes
- Shows a **loading indicator** while fetching data
- Displays an **error message** if something goes wrong
- Renders data in a **ListView** once loaded successfully

---

## 🧠 What I Learned

- How to set up and use **Dio** for API calls  
- How to create and generate **data models** with `json_serializable`  
- How to use **FutureBuilder** for handling async states  
- Managing **loading** and **error** states effectively in Flutter  
- Structuring a clean Flutter project with `models` and `services` folders  
- Writing cleaner and more maintainable Flutter code  
- Using `build_runner` to auto-generate serialization code  
- Improving UI/UX with responsive loading/error feedback  
- How to connect and push a Flutter project to **GitHub**  
- Strengthening understanding of **networking and state handling** in Flutter

---

## 🏃‍♂️ How to Run the Project

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/your-username/flutter_dio_json_app.git
```
### 2️⃣ Navigate to the Project Folder
```bash
cd flutter_dio_json_app
```
### 3️⃣ Get Dependencies
```bash
flutter pub get
```
### 4️⃣ Generate Model Files
```bash
flutter pub run build_runner build
```
5️⃣ Run the App
```bash
flutter run



