# Smart Job Intelligence Platform

## Overview

Smart Job Intelligence Platform is an ETL-based job aggregation system that automatically collects job postings from multiple Applicant Tracking Systems (ATS), stores them in PostgreSQL, removes duplicate records, and prepares the data for intelligent job recommendations.

The project is designed with a scalable architecture where each ATS (Greenhouse, Lever, Workday, etc.) can be integrated independently while producing a common job format for downstream processing.

---

## Problem Statement

Searching for software engineering jobs across multiple company career portals is repetitive and time-consuming.

This project aims to automate that process by:

* Collecting jobs from multiple ATS platforms
* Maintaining a centralized job database
* Eliminating duplicate job postings
* Tracking workflow executions
* Building a foundation for personalized job recommendations

---

## Current Features

### Data Collection

* Greenhouse Job Board API integration
* Multi-company processing
* Configurable company list stored in PostgreSQL
* Scheduled workflow execution

### Database

* PostgreSQL integration
* Job storage
* Company configuration
* User skills configuration
* Execution history
* Error logging

### Workflow

* Scheduler trigger
* Read enabled companies
* HTTP API integration
* Job normalization
* Duplicate prevention
* Execution tracking

---

## Technology Stack

| Technology     | Purpose                 |
| -------------- | ----------------------- |
| n8n            | Workflow orchestration  |
| PostgreSQL     | Database                |
| REST APIs      | Job data collection     |
| Greenhouse API | Current ATS integration |
| Git & GitHub   | Version control         |

---

## Architecture

```
Scheduler
    │
    ▼
Execution History (RUNNING)
    │
    ▼
Read Companies
    │
    ▼
HTTP Request
    │
    ▼
Normalize Job Data
    │
    ▼
Duplicate Check
    │
    ▼
Store Jobs
    │
    ▼
Execution History (SUCCESS)
```

---

## Database Design

### companies

Stores company configuration and API information.

Fields include:

* Company Name
* API URL
* Enabled Status
* Priority
* Last Run
* Last Status

### jobs

Stores all collected job postings.

### user_skills

Stores configurable user skills for future recommendation logic.

### execution_history

Tracks every workflow execution.

### error_logs

Stores workflow and API failures for troubleshooting.

---

## Current Workflow

1. Scheduler starts the workflow.
2. Insert a RUNNING record into execution history.
3. Read enabled companies from PostgreSQL.
4. Fetch jobs using the company's ATS API.
5. Process and normalize the response.
6. Store new jobs while preventing duplicates.
7. Update execution history with SUCCESS.

---

## Current Project Status

### Completed

* PostgreSQL schema design
* Greenhouse integration
* Multi-company support
* Duplicate handling
* Execution history
* GitHub version control

### In Progress

* Additional ATS integrations
* Title-based job filtering

### Planned

* Lever integration
* Workday integration
* SAP SuccessFactors integration
* Job recommendation engine
* Match score calculation
* Daily job summary
* Dashboard
* Skill gap analysis

---

## Project Goals

Build a scalable platform capable of aggregating job postings from multiple ATS providers into a unified database and providing personalized recommendations based on user skills.

---

## Future Roadmap

* Greenhouse Connector
* Lever Connector
* Ashby Connector
* Workday Connector
* SAP SuccessFactors Connector
* Oracle Taleo Connector
* Match Score Engine
* Skill Recommendation Engine
* Daily Email Report
* Analytics Dashboard

---

## Repository Structure

```
database/
    companies.sql
    jobs.sql
    user_skills.sql
    execution_history.sql
    error_logs.sql

workflows/
    greenhouse_workflow.json

docs/

README.md
```

---

## Learning Outcomes

This project demonstrates practical experience with:

* ETL workflow design
* API integration
* Database design
* PostgreSQL
* Workflow automation
* Error handling
* Duplicate detection
* Backend architecture
* System design fundamentals

---

## License

This project is intended for learning, experimentation, and portfolio purposes.
