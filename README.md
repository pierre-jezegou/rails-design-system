# Rails Design System

A Rails project with **ViewComponents** to build modular and maintainable user interfaces.
This repository provides a foundation for creating web applications with reusable design patterns.

---

## ✨ Features
- **ViewComponents**: Build reusable UI components with encapsulated logic and templates.
- **Modular System**: Add and customize components easily to suit your application's needs.

---

## 🚀 Getting Started

### Installation Steps

1. Clone this repository:
   ```bash
   git clone https://github.com/pierre-jezegou/rails-design-system.git
   cd rails-design-system
   ```

2. Install Ruby dependencies:
   ```bash
   bundle install
   ```

4. Start the development server:
   ```bash
   bin/rails server
   ```

Visit your application at [http://localhost:3000](http://localhost:3000). The Lookbook web interface is at [http://localhost:3000/lookbook](http://localhost:3000/lookbook)

---

## 🛠 Using ViewComponents

Add new components in the `app/components` directory. Example:

1. Generate a component:
   ```bash
   bin/rails generate component Navigation
   ```

2. Define the component's behavior in `app/components/navigation_component.rb` and its template in `app/components/navigation_component.html.erb` or directly in component definition with `erb_template`

3. Use the component in views:
   ```erb
   <%= render(NavigationComponent.new(title: "My Navigation")) %>
   ```

---

## 🛡 License

This project is licensed under the ???.
