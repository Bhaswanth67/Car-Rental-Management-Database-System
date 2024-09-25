# Vehicle Rental System

## Overview
The Vehicle Rental System is a SQL-based project designed to facilitate the management of vehicle rentals. This project includes features for user registration, admin management, vendor integration, and functionalities for handling rental transactions. It employs a relational database structure to efficiently manage vehicle availability, rental requests, and payment processing.

## Features
- **User Management**: Users can register and manage their profiles.
- **Admin Functions**: Admins can manage user accounts and rental requests.
- **Vendor Management**: Vendors can add vehicles and monitor their rentals.
- **Car Availability Tracking**: Automated updates of car availability based on rental status.
- **Rental and Payment Processing**: Procedures to handle rental calculations and payment tracking.

## Technologies Used
- **Database**: MySQL
- **SQL Scripts**: Used for creating tables, stored procedures, triggers, and data manipulation.

## Database Schema
The database consists of the following tables:

1. **Users**: Stores user information, including registration details.
2. **Admins**: Contains admin credentials for system management.
3. **Vendors**: Holds vendor-specific information and car listings.
4. **Cars**: Manages vehicle data, including availability status and rental prices.
5. **Locations**: Stores information about rental locations.
6. **Rentals**: Records details of rental transactions.
7. **Payments**: Manages payment data associated with rentals.

## How It Works
1. **User Registration and Management**:
   - Users can register and log in to the system.
   - User information is securely stored in the database.

2. **Rental Process**:
   - Users can view available cars and submit rental requests.
   - Rental requests are processed by the admin.

3. **Admin and Vendor Management**:
   - Admins can approve or reject rental requests and manage users and vendors.
   - Vendors can add their cars to the system and track their rentals.

4. **Automated Procedures and Triggers**:
   - Triggers update car availability status automatically when rentals are created or completed.
   - Stored procedures calculate the total rental amounts based on duration.

## Getting Started
### Prerequisites
- MySQL Server installed and running.
- A MySQL client (like MySQL Workbench) for executing SQL scripts.

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/vehicle-rental-system.git
   cd vehicle-rental-system
