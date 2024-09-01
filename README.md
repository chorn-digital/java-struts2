# Java-Struts Project

## Overview

Java-Struts is a web application built using the Apache Struts 2 framework. The project is designed to demonstrate the use of Struts for building Java web applications with a focus on MVC (Model-View-Controller) architecture. This application incorporates a modern tech stack including PostgreSQL for database management, Hibernate for ORM (Object-Relational Mapping), and Bulma for responsive CSS styling.

## Tech Stack

- **Java 8**
- **Apache Struts 2**
- **Hibernate ORM**
- **PostgreSQL**
- **Bulma CSS**
- **Apache Tomcat 9**
- **Maven**

## Project Structure

The project follows the standard Maven directory structure:

```
Java-Struts/
│
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── org/chorn/struts/
│   │   │       ├── action/          # Action classes (Controller)
│   │   │       ├── model/           # Entity classes (Model)
│   │   │       ├── service/         # Service classes
│   │   │       └── repository/      # Repository classes for database interaction
│   │   ├── resources/
│   │   │   └── struts.xml           # Struts configuration file
│   │   └── webapp/
│   │       ├── WEB-INF/
│   │       │   └── web.xml          # Web application deployment descriptor
│   │       ├── index.jsp            # Home page (View)
│   │       └── success.jsp          # Success page (View)
│   └── test/
│       └── java/                    # Unit tests
│
└── pom.xml                           # Maven configuration file
```

## Setup Guide

### Prerequisites

- **Java Development Kit (JDK) 8+**
- **Apache Maven**
- **Apache Tomcat 9**
- **PostgreSQL**

### Database Configuration

1. Install PostgreSQL and create a database:

   ```bash
   createdb struts_db
   ```

2. Update the PostgreSQL connection details in the `hibernate.cfg.xml` file located in `src/main/resources`:

   ```xml
   <property name="hibernate.connection.url">jdbc:postgresql://localhost:5432/struts_db</property>
   <property name="hibernate.connection.username">your_username</property>
   <property name="hibernate.connection.password">your_password</property>
   ```

### Building the Project

1. Clone the repository:

   ```bash
   git clone https://github.com/chorn-hub/java-struts2.git
   cd Java-Struts
   ```

2. Build the project using Maven:

   ```bash
   mvn clean package
   ```

3. The build will generate a WAR file located in the `target/` directory.

### Deployment

1. Copy the generated WAR file to the Tomcat `webapps` directory:

   ```bash
   cp target/Java-Struts.war $CATALINA_HOME/webapps/
   ```

2. Start Tomcat:

   ```bash
   $CATALINA_HOME/bin/startup.sh
   ```

3. Access the application in your browser:

   ```
   http://localhost:8080/Java-Struts/
   ```

## Features

- **MVC Architecture**: Utilizes Apache Struts 2 to separate the application logic, user interface, and data.
- **Database Interaction**: Uses Hibernate ORM to map Java objects to PostgreSQL database tables.
- **Modern Styling**: Integrates Bulma CSS framework for a clean and responsive user interface.

## Contributions

Contributions are welcome! Please fork this repository and submit a pull request for any improvements.