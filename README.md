# 🚖 Ola Ride Booking Analysis using SQL & Power BI

An end-to-end Data Analytics project that analyzes Ola ride booking data using **SQL** for data extraction and analysis, and **Power BI** for interactive data visualization. This project demonstrates how raw booking data can be transformed into actionable business insights.

---

## 📌 Table of Contents

- Project Overview
- Objectives
- Tech Stack
- Project Structure
- Dataset Description
- SQL Analysis
- Power BI Dashboard
- Key Insights
- How to Run the Project
- Future Improvements
- Author

---

# 📖 Project Overview

The objective of this project is to analyze Ola ride booking data to identify booking trends, customer behavior, ride cancellations, payment preferences, revenue generation, and overall business performance.

The project consists of two major parts:

- SQL for querying and data analysis
- Power BI for dashboard creation and visualization

---

# 🎯 Objectives

- Analyze successful and cancelled bookings.
- Calculate ride statistics and revenue.
- Understand customer and driver ratings.
- Analyze payment methods.
- Identify top customers.
- Visualize KPIs using Power BI.

---

# 🛠️ Tech Stack

| Tool | Purpose |
|------|----------|
| SQL (MySQL) | Data Analysis |
| Power BI | Dashboard & Visualization |
| CSV | Dataset |
| GitHub | Version Control |

---

# 📂 Project Structure

```text
OLA-DATA-ANALYTICS-PROJECT/
│
├── Dashboard/
├── Database_Creation/
├── dataset/
├── Images/
├── Queries/
├── README.md
└── LICENSE
```

---

# 📊 Dataset Description

The dataset contains booking information such as:

- Booking ID
- Customer ID
- Vehicle Type
- Booking Status
- Ride Distance
- Booking Value
- Driver Ratings
- Customer Ratings
- Payment Method
- Cancellation Reason
- Incomplete Ride Details

---

# 📈 SQL Analysis

The following SQL queries were executed to answer various business questions.

---

## 1️⃣ Retrieve All Bookings

```sql
SELECT * FROM bookings;
```

### Purpose

Displays all booking records available in the dataset.

### Output

![Query 1](images/<img width="3087" height="1500" alt="image" src="https://github.com/user-attachments/assets/d14f1d36-d7fb-44ac-8f4e-e0e77282a01e" />
)

---

## 2️⃣ Retrieve Successful Bookings

```sql
SELECT *
FROM bookings
WHERE booking_status='Success';
```

### Purpose

Filters only successful rides.

### Output

![Query 2](images/<img width="3092" height="1159" alt="image" src="https://github.com/user-attachments/assets/61455c43-e5fc-45e7-9613-2a4c512a0273" />
)

---

## 3️⃣ Average Ride Distance by Vehicle Type

```sql
SELECT
vehicle_type,
AVG(ride_distance) AS avg_distance
FROM bookings
GROUP BY vehicle_type;
```

### Purpose

Calculates average ride distance for every vehicle category.

### Output

![Query 3](images/<img width="1383" height="822" alt="image" src="https://github.com/user-attachments/assets/7356c5ae-83e9-462d-8e30-c0e10b278cd8" />
)

---

## 4️⃣ Number of Customer Cancelled Rides

```sql
SELECT COUNT(*)
FROM bookings
WHERE booking_status='Canceled by Customer';
```

### Purpose

Counts total customer cancellations.

### Output

![Query 4](images/<img width="1646" height="515" alt="image" src="https://github.com/user-attachments/assets/440dc2e0-5a0d-43bd-9a7d-3dadb13d070d" />
)

---

## 5️⃣ Top 5 Customers

```sql
CREATE VIEW Top_5_Customers AS

SELECT
customer_id,
COUNT(booking_id) AS total_rides

FROM bookings

GROUP BY customer_id

ORDER BY total_rides DESC

LIMIT 5;

SELECT * FROM Top_5_Customers;
```

### Purpose

Identifies customers who booked the highest number of rides.

### Output

![Query 5](images/<img width="1630" height="703" alt="image" src="https://github.com/user-attachments/assets/d7b9f89d-316a-41e9-adb0-421bb527f10a" />
)

---

## 6️⃣ Driver Cancellations

```sql
SELECT COUNT(*)

FROM bookings

WHERE canceled_rides_by_driver='Personal & Car related issue';
```

### Purpose

Counts rides cancelled by drivers due to personal or vehicle-related issues.

### Output

![Query 6](images/<img width="1658" height="419" alt="image" src="https://github.com/user-attachments/assets/7a6f15f9-e985-4450-afdc-d117f9d3159b" />
)

---

## 7️⃣ Maximum and Minimum Driver Ratings

```sql
SELECT
MAX(driver_ratings),
MIN(driver_ratings)

FROM bookings

WHERE vehicle_type='Prime Sedan';
```

### Purpose

Finds the highest and lowest driver ratings for Prime Sedan rides.

### Output

![Query 7](images/<img width="2143" height="355" alt="image" src="https://github.com/user-attachments/assets/8b14138d-d0af-4369-9417-427914227272" />
)

---

## 8️⃣ UPI Payments

```sql
SELECT *
FROM bookings
WHERE payment_method='UPI';
```

### Purpose

Retrieves bookings paid through UPI.

### Output

![Query 8](images/<img width="2636" height="1152" alt="image" src="https://github.com/user-attachments/assets/423477de-a066-4171-93dd-d077698fa620" />
)

---

## 9️⃣ Average Customer Rating

```sql
SELECT
vehicle_type,
AVG(customer_rating)

FROM bookings

GROUP BY vehicle_type;
```

### Purpose

Calculates average customer rating for each vehicle type.

### Output

![Query 9](images/<img width="1791" height="656" alt="image" src="https://github.com/user-attachments/assets/b5181c95-e167-4984-ac60-d4cd43c3e864" />
)

---

## 🔟 Total Revenue

```sql
SELECT
SUM(booking_value)
FROM bookings

WHERE booking_status='Success';
```

### Purpose

Calculates total revenue generated from successful bookings.

### Output

![Query 10](images/<img width="1254" height="376" alt="image" src="https://github.com/user-attachments/assets/e6072c46-71d1-422f-baf4-5f251ea6918d" />
)

---

## 1️⃣1️⃣ Incomplete Rides

```sql
SELECT
booking_id,
incomplete_rides_reason

FROM bookings

WHERE incomplete_rides='Yes';
```

### Purpose

Displays incomplete rides along with their reasons.

### Output

![Query 11](images/<img width="1235" height="1182" alt="image" src="https://github.com/user-attachments/assets/7c52db4f-d388-4fe3-bb69-f1e2456d75ee" />
)

---

# 📊 Power BI Dashboard

The SQL-analyzed data was visualized in Power BI to create an interactive dashboard.

## Dashboard Features

- Total Bookings
- Successful Bookings
- Cancelled Bookings
- Revenue Analysis
- Ride Distance Analysis
- Vehicle-wise Bookings
- Customer Ratings
- Driver Ratings
- Payment Method Distribution
- Booking Status Analysis

---

## Dashboard Preview

![Dashboard](dashboard/<img width="2020" height="1146" alt="image" src="https://github.com/user-attachments/assets/cedac5ce-6d36-407b-af58-2bb50c1ded0b" />
)

---

# 📌 Key Business Insights

- Successful rides contribute the majority of overall revenue.
- UPI is one of the most preferred payment methods.
- Prime Sedan maintains consistently high driver ratings.
- Customer cancellations are higher than driver cancellations.
- Certain vehicle types are used for longer-distance rides.
- Customer ratings remain above average across most vehicle categories.

---

# ▶️ How to Run This Project

### Step 1

Clone the repository.

```bash
git clone https://github.com/yourusername/Ola-Ride-Booking-Analysis.git
```

### Step 2

Import **Bookings.csv** into your MySQL database.

### Step 3

Execute all SQL queries from **query.sql**.

### Step 4

Open **Ola Dashboard.pbix** using Power BI Desktop.

### Step 5

Refresh the dataset.

### Step 6

Explore the interactive dashboard.

---

# 🚀 Future Improvements

- Add Date-wise trend analysis
- Add Customer Segmentation
- Build Predictive Analytics using Python
- Deploy Dashboard on Power BI Service
- Create Automated SQL Reports

---

# 👨‍💻 Author

**Pranjal Rai**

LinkedIn: www.linkedin.com/in/pranjal-rai-998b6329b

GitHub: https://github.com/pranjalr004

---

## ⭐ If you found this project useful, don't forget to Star ⭐ the repository
