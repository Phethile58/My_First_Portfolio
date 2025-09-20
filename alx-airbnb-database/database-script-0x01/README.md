alx-airbnb-database/
├── ERD/
│ ├── ER_Diagram_with_Message_Index.drawio
│ └── schema.sql
├── normalization.md
└── README.md
---

## Instructions
1. Open the ERD diagram in Draw.io (`.drawio` file) to view entities and relationships.  
2. Review `normalization.md` for explanations of the normalization process.  
3. Execute `schema.sql` in your SQL database to create all tables with constraints and indexes.  
4. Optionally, use the PNG preview for quick reference of the ER diagram.

---

## Technologies
- MySQL / MariaDB (for SQL schema execution)  
- Draw.io (for ER diagram visualization)  
- Git/GitHub (for version control)
# ALX Airbnb Database Project

## Project Overview
This project defines a relational database schema for an Airbnb-like platform.  
It includes the following entities:  

- **User** – stores user information (hosts and guests)  
- **Property** – details of listed properties  
- **Booking** – records reservations made by users  
- **Payment** – stores payment information linked to bookings  
- **Review** – stores reviews and ratings for bookings  
- **Message** – enables messaging between users  
- **PropertyIndex** – optional index for property metadata  

The database schema has been designed according to **3rd Normal Form (3NF)** to eliminate redundancy and maintain data integrity.

---

## Features
- Full ER diagram with entities and relationships  
- Normalized schema in 3NF  
- SQL `CREATE TABLE` statements with constraints and indexes  
- Relationships enforced through primary keys and foreign keys  

---

## Directory Structure
alx-airbnb-database/
├── ERD/
│ ├── ER_Diagram_with_Message_Index.drawio
│ ├── ER_Diagram_Preview.png
│ ├── requirements.md
├── SQL/
│ └── schema.sql
├── normalization.md
└── README.md


---

## Instructions
1. Open the ERD diagram in Draw.io (`.drawio` file) to view entities and relationships.  
2. Review `normalization.md` for explanations of the normalization process.  
3. Execute `schema.sql` in your SQL database to create all tables with constraints and indexes.  
4. Optionally, use the PNG preview for quick reference of the ER diagram.

---

## Technologies
- MySQL / MariaDB (for SQL schema execution)  
- Draw.io (for ER diagram visualization)  
- Git/GitHub (for version control)
