# 🧭 SwiftUI NavigationStack Coordinator  

A **generic Coordinator pattern** built on top of SwiftUI’s `NavigationStack`.  
This repo demonstrates how to manage **push / pop / sheets / fullScreen modals** in a clean, centralized, and type-safe way.  

📖 Medium Article: [Read here](https://medium.com/@ahmedgado95/generic-navigation-coordinator-with-navigationstack-in-swiftui-d8261a4d885d)  

---

## ✨ Features

- 📌 **Generic Coordinator** with type-safe routes (`Hashable & Identifiable`)  
- 🚀 Centralized **push / pop / popTo / popToRoot** navigation  
- 🪟 Built-in support for **Sheets** and **FullScreenCovers**  
- ♻️ Fully **reusable** across different projects  
- 🧩 Clean separation between **UI** and **Navigation Logic**  

---

## 🎥 Screenshot 

https://github.com/user-attachments/assets/a6132ae8-69ed-49a1-9155-d10271a2a0a5

---

## 🏗️ Project Structure

```plaintext
├── Coordinator.swift         # The generic Coordinator
├── CoordinatorView.swift     # Root container using NavigationStack
├── Screen.swift              # Enum with all app routes
├── HomeView.swift            # Example screen with navigation actions
├── HomeViewModel.swift       # ViewModel handling Coordinator calls
├── HomeViewModelTests.swift  # Unit tests for HomeViewModel
└── NavigationStackApp.swift  # App entry point
```
## 🛠 Setup

### Requirements
- Xcode **16+**
- Swift **5.9+**
  
### Installation

Clone the repository:
```plaintext
git clone https://github.com/ahmedgado95/NavigationStack.git
```
Open the project in Xcode 16+ and run it.

---

## 🎯 Why Use This?

✅ Keeps navigation centralized (no more scattered logic)

✅ Views remain focused on UI, not navigation

✅ Type-safe routes

✅ Makes large SwiftUI apps easier to scale and maintain

---

## 🤝 Contributing

Contributions are welcome!
Feel free to open an issue or submit a pull request.

---

## 🌟 Support

If you find this project helpful, give it a ⭐ on GitHub!

Made with ❤️ by [Ahmed Gado](https://github.com/ahmedgado95)

