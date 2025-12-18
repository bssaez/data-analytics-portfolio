# SalesDB – Sales Analysis Project

## 📌 Overview

**ES**  
Este proyecto analiza una base de datos de ventas (*SalesDB*) con el objetivo de identificar patrones de compra, desempeño del equipo de ventas, comportamiento de clientes y oportunidades de optimización de inventario.

El análisis se desarrolló utilizando **SQL**, enfocándose en métricas clave como ingresos por categoría, volumen de ventas en el tiempo, productos más vendidos, clientes recurrentes y desempeño por empleado.

**EN**  
This project analyzes a sales database (*SalesDB*) to identify purchasing patterns, sales team performance, customer behavior, and inventory optimization opportunities.

The analysis was conducted using **SQL**, focusing on key metrics such as revenue by category, sales volume over time, top-selling products, repeat customers, and employee performance.

---

## 🗂️ Dataset Description

**ES**  
La base de datos simula un entorno de ventas minoristas e incluye:
- **Customers**: información demográfica y de contacto de los clientes
- **Employees**: personal de ventas, caja, inventario y atención al cliente
- **Products**: catálogo de productos con precios y niveles de inventario
- **Sales**: transacciones de venta con fecha, cantidad y responsables

**EN**  
The database simulates a retail sales environment and includes:
- **Customers**: customer demographic and contact information
- **Employees**: sales, cashier, inventory, and customer service staff
- **Products**: product catalog with prices and stock levels
- **Sales**: sales transactions with dates, quantities, and responsible employees

---

## 🧱 Database Schema

- Customers(CustomerID, FullName, ID, Age, BirthDate, Address, Phone, Email)
- Employees(EmployeeID, FullName, Position, HireDate)
- Products(ProductID, ProductName, Category, Price, StockQuantity)
- Sales(SaleID, ProductID, CustomerID, EmployeeID, Quantity, SaleDate)

Relaciones:
- Sales → Customers (CustomerID)
- Sales → Employees (EmployeeID)
- Sales → Products (ProductID)

---

## 🔍 Key Questions Answered

**ES**
- ¿Qué categorías y productos generan más ingresos?
- ¿Cómo evolucionan las ventas a lo largo del año?
- ¿Qué empleados tienen mejor desempeño en ventas?
- ¿Qué productos presentan riesgo por quiebre de inventario?
- ¿Qué clientes realizan compras recurrentes?

**EN**
- Which categories and products generate the most revenue?
- How do sales evolve throughout the year?
- Which employees show the strongest sales performance?
- Which products are at risk due to stockouts?
- Which customers make repeat purchases?

---

## 📊 Key Insights

**ES**  
Los principales hallazgos del análisis se documentan en el archivo `insights_salesDB.md`, donde se interpretan los resultados y se presentan recomendaciones accionables orientadas al negocio.

**EN**  
The main findings of the analysis are documented in the `insights_salesDB.md` file, where results are interpreted and actionable business recommendations are provided.

---

## 🛠️ Tools & Technologies

- SQL Server / T-SQL
- Relational Database Design
- Data Analysis

---

## 📁 Project Structure

```
SalesDB-analysis/
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
Este proyecto demuestra la capacidad de analizar datos de ventas utilizando SQL, transformando datos transaccionales en insights estratégicos para la toma de decisiones comerciales.

**EN**  
This project demonstrates the ability to analyze sales data using SQL, transforming transactional data into strategic insights for business decisio
