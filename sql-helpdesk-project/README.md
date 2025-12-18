# Helpdesk Ticket Analysis Project

## 📌 Overview

**ES**  
Este proyecto analiza un sistema de tickets de helpdesk con el objetivo de identificar patrones, cuellos de botella y oportunidades de mejora en la gestión de soporte técnico.

El análisis se realizó utilizando **SQL**, enfocándose en métricas clave como distribución de tickets, prioridades, estados, tiempos de resolución y carga de trabajo por empleado.

**EN**  
This project analyzes a helpdesk ticketing system to identify patterns, bottlenecks, and improvement opportunities in technical support operations.

The analysis was performed using **SQL**, focusing on key metrics such as ticket distribution, priorities, statuses, resolution times, and employee workload.

---

## 🗂️ Dataset Description

**ES**  
La base de datos simula un entorno corporativo de helpdesk e incluye:
- **Employees**: información del personal de soporte
- **Customers**: usuarios que generan tickets
- **Tickets**: incidencias reportadas, con categoría, prioridad, estado y fechas

**EN**  
The database simulates a corporate helpdesk environment and includes:
- **Employees**: support staff information
- **Customers**: users who create tickets
- **Tickets**: reported incidents with category, priority, status, and dates

---

## 🧱 Database Schema

- Employees(EmployeeID, FullName, Role, HireDate)
- Customers(CustomerID, FullName, Email, Department)
- Tickets(TicketID, Title, Category, Status, Priority, CreatedDate, ResolvedDate, AssignedTo, CustomerID)

Relaciones:
- Tickets → Employees (AssignedTo)
- Tickets → Customers (CustomerID)

---

## 🔍 Key Questions Answered

**ES**
- ¿Qué categorías generan más tickets?
- ¿Qué prioridades presentan mayor riesgo operativo?
- ¿Cómo se distribuye la carga de trabajo entre empleados?
- ¿Qué tipos de tickets se resuelven más rápido?
- ¿Dónde se concentran los tickets abiertos?

**EN**
- Which categories generate the most tickets?
- Which priorities represent the highest operational risk?
- How is workload distributed among employees?
- Which types of tickets are resolved faster?
- Where are open tickets concentrated?

---

## 📊 Key Insights

**ES**  
Los principales hallazgos del análisis se documentan en el archivo `insights.md`, donde se interpretan los resultados y se proponen recomendaciones accionables para el negocio.

**EN**  
The main findings of the analysis are documented in the `insights.md` file, where results are interpreted and actionable business recommendations are provided.

---

## 🛠️ Tools & Technologies

- SQL Server / T-SQL
- Relational Database Design
- Data Analysis

---

## 📁 Project Structure

```
helpdesk-analysis/
│
├── README.md
├── schema.sql
├── inserts.sql
├── queries.sql
├── insights.md
```

---

## 🚀 Conclusion

**ES**  
Este proyecto demuestra la capacidad de analizar datos operativos reales utilizando SQL, transformando datos en insights útiles para la toma de decisiones.

**EN**  
This project demonstrates the ability to analyze real-world operational data using SQL, turning raw data into meaningful insights for decision-making.

