# 🎓 Student Management System

## 📌 Project Description

The Student Management System is a Java-based web application developed using **JSP, Servlets, JDBC, PostgreSQL, Maven, and Apache Tomcat**. It enables administrators to manage student records efficiently by performing CRUD (Create, Read, Update, Delete) operations through a user-friendly web interface.

The project follows the **MVC (Model-View-Controller)** architecture to separate presentation, business logic, and data access.

---

## 🚀 Features

- 🔐 Admin Login
- 🏠 Dashboard
- ➕ Register New Student
- 📋 Display Student Records
- ✏️ Update Student Details
- ❌ Delete Student
- 🔍 Search Student
- 🚪 Logout
- 🗄️ PostgreSQL Database Integration

---

## 🛠️ Technologies Used

- Java
- JSP
- Servlets
- JDBC
- PostgreSQL
- Maven
- Apache Tomcat 9
- HTML5
- CSS3
- Bootstrap

---

## 🏗️ Project Architecture

```
User
   │
   ▼
JSP Pages (View)
   │
   ▼
Servlets (Controller)
   │
   ▼
StudentService (Business Logic)
   │
   ▼
DBConnection (JDBC)
   │
   ▼
PostgreSQL Database
```

---

## 📂 Project Structure

```
StudentManagementSystem
│
├── src/main/java
│   ├── controller
│   │     └── Home.java
│   │
│   ├── controller.dbconnection
│   │     └── DBConnection.java
│   │
│   ├── controller.entity
│   │     └── Student.java
│   │
│   ├── controller.service
│   │     └── StudentService.java
│   │
│   └── controller.servlet
│         ├── LoginServlet.java
│         ├── LogoutServlet.java
│         ├── RegisterServlet.java
│         ├── DisplayServlet.java
│         ├── EditServlet.java
│         ├── UpdateServlet.java
│         ├── DeleteServlet.java
│         └── SearchServlet.java
│
├── src/main/webapp
│   ├── login.jsp
│   ├── dashboard.jsp
│   ├── register.jsp
│   ├── display.jsp
│   ├── edit.jsp
│   ├── search.jsp
│   ├── searchResult.jsp
│   └── WEB-INF
│
├── pom.xml
└── README.md
```

---

## 📋 Modules

### 🔐 Login Module

- Admin Login
- Session Management
- Logout

### 👨‍🎓 Student Module

- Register Student
- Display Students
- Update Student
- Delete Student
- Search Student

---

## 🗄️ Database

**Database:** PostgreSQL

### Student Table

| Column | Description |
|---------|-------------|
| id | Student ID |
| name | Student Name |
| email | Email Address |
| course | Course |
| phone | Phone Number |

---

## ▶️ How to Run the Project

1. Clone this repository.
2. Open the project in Eclipse IDE.
3. Configure Apache Tomcat 9.
4. Create the PostgreSQL database.
5. Update the database credentials in `DBConnection.java`.
6. Build the project using Maven.
7. Run the project on Tomcat.
8. Open the application in your browser.

---

## 📸 Screenshots

Add screenshots of:

- Login Page
- Dashboard
- Student Registration
- Student List
- Search Student
- Edit Student

---

## 🎯 Future Enhancements

- Role-Based Authentication
- Pagination
- Email Notifications
- Export Student Data (PDF/Excel)
- Spring Boot Migration
- REST API Development
- React Frontend Integration

---

## 👩‍💻 Author

**Vaishnavi Alam**

Aspiring Java Developer

---

## ⭐ If you found this project useful, please give it a Star on GitHub!
