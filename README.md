# Laravel Passport and Basic API Integrations

## Description

This project is a basic API integration built with **Laravel 9** and **Passport** for authentication. It includes models, relationships, and a flexible dynamic attribute system (EAV - Entity Attribute Value) for projects, allowing for easy management of additional attributes like department, start date, and end date.

The project covers the following key parts:
- Core models and relationships between **User**, **Project**, and **Timesheet**.
- Dynamic attribute system using **EAV** (Entity-Attribute-Value) for **Projects**.
- Basic **RESTful API endpoints** for authentication and CRUD operations.
- Flexible filtering system to filter projects by both regular and dynamic attributes.

## Setup Instructions

### Prerequisites
- PHP version 8.1 or higher
- Laravel 9.x
- MySQL or MariaDB
- Composer

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/deeshma1995/interview-laravel9.git


1.Install project dependencies:

composer install

2.Open .env and set the correct database settings,
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=your_database_name
DB_USERNAME=your_database_username
DB_PASSWORD=your_database_password

3.php artisan key:generate
4.php artisan migrate
5.php artisan db:seed
6.php artisan passport:install
7.php artisan serve

API Documentation

Authentication

Register: /api/register (POST)

Login: /api/login (POST)

Request Body:
{
    "email": "john1@example.com",
    "password": "password1234"
}
Response:
{
    "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMGQ4NDRkZDQwZWUxMTUyYTM2MWY2NDIwOGMxZDk0ZmUzNzg3YzA5NmRmZTdiMzJiYmFlZDlmNTFmNjRlYTM1OTY0MDI4Mjc2ZTVkYjU3MGUiLCJpYXQiOjE3Mzk0NDgwMTQuNjExMDY0LCJuYmYiOjE3Mzk0NDgwMTQuNjExMDY5LCJleHAiOjE3NzA5ODQwMTQuNTg3MjM2LCJzdWIiOiIzIiwic2NvcGVzIjpbXX0.wNUZeA6podAPcQzzOljGOTEARC7bURFDzjtJzP1-1AS0M5rkSKPfYbZoPkFVcG5dCpaKtAVdA3xvsIFXzFXwCR-i_q9wzHhUtFeDWaiIh0sypwWJrjn_dir1H08XIUVW_jJJWxzsf34a3xDwLeSBSQo1HZ2jFKRg-A9y_ABgAnMd8J_1cKn1IL3YRgZDkv-k7BMApvmFdG0j2b6lI2UULzQD0L-Wjs7u9FkOzYg2VckuVEepwuMNuOO5lwcLT4UAEfVMKamfdJnlB4ePeIQ76zQDKET49PEWZrj6I-aHSGaFUHDVT22ySGEWM1i8hQKObMg5P5eNhotxG5X92UlTxPA0jsZh0A_356kZKosJ3-fmYM_cfMsNnAyO--vnFLkkyrBHd0nfNEybDqTy6OipdSkJBO7-fWJAWLK5FLFeqnxo7hVq1at9qr2dRztqhIslbAZJ1_FesJhgA0sEFcC3vPaClvHWYgrfjX0y12hKyCD1uAH3PKKYLvJq6TRenKw14hkFR6-XhZZ_VvrkFeP-CHen7XctvWB9Ul2FycZ2OG_qLrpjhjemNfelKS23oSrAt05xQPsNFEUCnj9PQzRzec_ljjmoZqYmINfGzdL8D9ugQBs1nbCkui0rdDO7Rdg-iBdDaxjGq4WDnKBKwvpSBLLoTYYJc-ibSBruZmJ0XrY"
}
Logout: /api/logout (POST)

Requires Bearer token in headers.

Projects

GET /api/projects – Fetch all projects

GET /api/projects/{id} – Fetch a specific project by ID

POST /api/projects – Create a new project

{
  "name": "Project A",
  "status": "active",
  "attributes": [
    { "attribute_id": 1, "value": "Sales" },
    { "attribute_id": 2, "value": "2025-12-31" }
  ]
}
PUT /api/projects/{id} – Update a project by ID
{
  "name": "Updated Project",
  "status": "completed",
  "attributes": [
    { "attribute_id": 1, "value": "Marketing" }
  ]
}
DELETE /api/projects/{id} – Delete a project by ID

Users

GET /api/users – Fetch all users
GET /api/users/{id} – Fetch a user by ID
POST /api/users – Create a new user
PUT /api/users/{id} – Update a user by ID
DELETE /api/users/{id} – Delete a user by ID

Timesheets

GET /api/timesheets – Fetch all timesheets
GET /api/timesheets/{id} – Fetch a specific timesheet by ID
POST /api/timesheets – Create a new timesheet
PUT /api/timesheets/{id} – Update a timesheet by ID
DELETE /api/timesheets/{id} – Delete a timesheet by ID

Filtering Projects by Dynamic Attributes

You can filter projects based on both regular and dynamic attributes (EAV).

Example:

GET /api/projects?filters[name]=ProjectA&filters[department]=IT
Response:

[
  {
    "id": 1,
    "name": "Project A",
    "status": "active",
    "created_at": "2025-02-13T12:35:00",
    "updated_at": "2025-02-13T12:35:00",
    "attributes": [
      {
        "attribute_id": 1,
        "value": "Sales"
      },
      {
        "attribute_id": 2,
        "value": "2025-12-31"
      }
    ]
  }
]

Example Requests and Responses

Create Project Request:

URL: /api/projects
Method: POST
Request Body:
{
    "name": "Project A",
    "status": "active",
    "attributes": [
        {
            "attribute_id": 1,
            "value": "Sales"
        },
        {
            "attribute_id": 2,
            "value": "2025-12-31"
        }
    ]
}

response
{
    "name": "Project A",
    "status": "active",
    "updated_at": "2025-02-13T12:39:29.000000Z",
    "created_at": "2025-02-13T12:39:29.000000Z",
    "id": 11,
    "attributes": [
        {
            "id": 31,
            "attribute_id": 1,
            "entity_id": 11,
            "value": "Sales",
            "created_at": "2025-02-13T12:39:29.000000Z",
            "updated_at": "2025-02-13T12:39:29.000000Z"
        },
        {
            "id": 32,
            "attribute_id": 2,
            "entity_id": 11,
            "value": "2025-12-31",
            "created_at": "2025-02-13T12:39:29.000000Z",
            "updated_at": "2025-02-13T12:39:29.000000Z"
        }
    ]
}


update projects
URL: /api/projects/{id}
Method: PUT
request
{
    "name": "Project A 2",
    "status": "active",
    "attributes": [
        {
            "attribute_id": 1,
            "value": "Sales"
        },
        {
            "attribute_id": 2,
            "value": "2025-12-31"
        }
    ]
}
response
{
    "id": 2,
    "name": "Project A 2",
    "status": "active",
    "created_at": "2025-02-13T11:51:49.000000Z",
    "updated_at": "2025-02-13T12:44:11.000000Z",
    "attributes": [
        {
            "id": 4,
            "attribute_id": 1,
            "entity_id": 2,
            "value": "Sales",
            "created_at": "2025-02-13T11:51:49.000000Z",
            "updated_at": "2025-02-13T12:44:11.000000Z"
        },
        {
            "id": 5,
            "attribute_id": 2,
            "entity_id": 2,
            "value": "2025-12-31",
            "created_at": "2025-02-13T11:51:49.000000Z",
            "updated_at": "2025-02-13T12:44:11.000000Z"
        },
        {
            "id": 6,
            "attribute_id": 3,
            "entity_id": 2,
            "value": "2014-04-18",
            "created_at": "2025-02-13T11:51:49.000000Z",
            "updated_at": "2025-02-13T11:51:49.000000Z"
        }
    ]
}

Test credentials 
{
    "email": "john1@example.com",
    "password": "password1234"
}


Included sql dump an postman collection files in this folder