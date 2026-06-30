# PieceFacile Reference Database Architecture

Version: 1.0

Status: Draft

Document Type: Official Architecture Specification

Owner: PieceFacile Project

---

# Chapter 1 — Introduction

## 1.1 Purpose

The PieceFacile Reference Database is the official knowledge base that defines every reference entity used throughout the platform.

Its purpose is to provide a single, consistent and expandable structure for storing and organizing vehicle-related reference data.

Unlike business data (users, requests, offers, orders or messages), the Reference Database contains structured information that rarely changes and serves as the foundation for all intelligent features inside PieceFacile.

This document defines the official architecture of that reference database.

It does not describe the implementation details of PostgreSQL or Supabase.

Instead, it defines how the reference data must be organized regardless of the underlying technology.

---

## 1.2 Scope

This architecture covers every reference dataset used by PieceFacile.

Including:

- Passenger Cars
- Light Commercial Vehicles (LCV)
- Heavy Trucks
- Motorcycles
- Buses & Coaches
- Agricultural Machinery
- Construction Equipment

The architecture also defines how these datasets interact with:

- Smart Search
- Buyer Requests
- Seller Specializations
- AI Matching
- Autocomplete
- Analytics
- Future Recommendation Systems

---

## 1.3 Objectives

The Reference Database has six primary objectives.

### Objective 1 — Standardization

Provide a unified structure for every vehicle category.

Every dataset must follow the same hierarchy and the same architectural rules.

---

### Objective 2 — Consistency

Ensure that the same vehicle, brand, model or engine is never represented in multiple different ways.

One entity must have one official record.

---

### Objective 3 — Scalability

Allow the database to grow continuously without requiring structural redesign.

The architecture must support:

- New vehicle categories
- New manufacturers
- New vehicle generations
- New engine technologies
- Electric vehicles
- Hydrogen vehicles
- Future transportation categories

---

### Objective 4 — Search Optimization

Provide a structure optimized for intelligent searching rather than simple storage.

The database should make it possible to identify a vehicle even when the user enters:

- Partial names
- Local Algerian names
- Arabic names
- French names
- English names
- Common abbreviations
- Misspellings

---

### Objective 5 — AI Readiness

Provide structured information that enables AI-powered matching and recommendations.

Whenever structured data exists, AI features should rely on that data instead of free-text analysis.

---

### Objective 6 — Long-Term Maintainability

Keep the architecture stable over many years.

New data should be added by extending the existing structure rather than modifying it.

---

# 1.4 Core Design Principles

The entire architecture is governed by the following principles.

## Single Source of Truth

Every reference entity must exist only once inside the database.

Duplicate records are not permitted.

---

## Normalization First

Reference data must be organized into logical entities connected through explicit relationships.

Information should never be duplicated across multiple tables.

---

## Hierarchical Organization

All vehicle information follows a clearly defined hierarchy.

Each level depends only on its direct parent.

This creates a predictable navigation path throughout the entire database.

---

## Category Independence

Each vehicle category remains independent while sharing the same architectural principles.

Passenger Cars and Heavy Trucks, for example, may contain different data but follow the same structural philosophy.

---

## Technology Independence

This architecture is independent of any programming language, database engine or framework.

It must remain valid whether implemented using:

- PostgreSQL
- Supabase
- Flutter
- REST APIs
- GraphQL
- AI Services

---

## Extensibility

Every architectural decision must allow future expansion without breaking existing data.

The preferred solution is always the one that minimizes future structural changes.

---

# 1.5 What This Document Defines

This document defines:

- Reference database architecture
- Reference hierarchy
- Table responsibilities
- Entity relationships
- Naming standards
- Search architecture
- AI matching architecture
- Dataset integration rules
- Expansion strategy
- Governance rules

---

# 1.6 What This Document Does Not Define

This document does not contain:

- SQL scripts
- Flutter code
- Supabase configuration
- UI design
- Business workflows
- Authentication logic
- Application screens

Those topics are documented separately in their respective project documents.

---

# End of Chapter 1

---


# Chapter 2 — Global Reference Hierarchy

## 2.1 Overview

The PieceFacile Reference Database is built around a single hierarchical structure.

Every reference entity belongs to a parent entity.

This hierarchy provides a predictable and scalable organization for all vehicle categories supported by the platform.

Regardless of the vehicle type, the same navigation logic must always be respected.

---

## 2.2 Official Reference Hierarchy

The official hierarchy of the PieceFacile Reference Database is:

```
Vehicle Category
        │
        ▼
Vehicle Brand
        │
        ▼
Vehicle Family
        │
        ▼
Vehicle Model
        │
        ▼
Vehicle Generation
        │
        ▼
Engine
        │
        ▼
Part Category
        │
        ▼
Part
        │
        ▼
Part Variant
```

Every level depends on its direct parent.

No level may bypass another level unless explicitly defined by the architecture.

---

## 2.3 Hierarchy Levels

### Level 1 — Vehicle Category

The highest level of the hierarchy.

Vehicle Categories divide the marketplace into independent domains.

Examples:

- Passenger Cars
- Light Commercial Vehicles
- Heavy Trucks
- Motorcycles
- Buses & Coaches
- Agricultural Machinery
- Construction Equipment

Every vehicle belongs to exactly one category.

---

### Level 2 — Vehicle Brand

Each category contains multiple manufacturers.

Examples:

Passenger Cars

- Renault
- Toyota
- Peugeot

Heavy Trucks

- Volvo Trucks
- Scania
- Mercedes-Benz Trucks

Agricultural Machinery

- Massey Ferguson
- New Holland
- John Deere

A brand belongs to only one vehicle category.

---

### Level 3 — Vehicle Family

A family groups related vehicles produced by the same manufacturer.

Examples:

Toyota

- Corolla
- Hilux
- Land Cruiser

Renault

- Clio
- Megane
- Kangoo

Families simplify navigation and future expansion.

---

### Level 4 — Vehicle Model

Models represent the commercial version of a vehicle family.

Examples:

Toyota Hilux

- Single Cab
- Double Cab

Mercedes-Benz Actros

- 1845
- 2048
- 2644

Some families contain one model.

Others may contain dozens.

---

### Level 5 — Vehicle Generation

Generations distinguish different production periods.

Example:

Toyota Corolla

Generation E90

↓

Generation E100

↓

Generation E110

↓

Generation E120

↓

Generation E140

↓

Generation E170

↓

Generation E210

Each generation may contain different engines and different spare parts.

---

### Level 6 — Engine

Each generation may support multiple engines.

Examples:

1.4 HDI

1.5 dCi

2KD-FTV

1ZR-FE

K9K

Engine information becomes essential when identifying compatible spare parts.

---

### Level 7 — Part Category

Parts are grouped into logical maintenance categories.

Examples:

Engine

Transmission

Suspension

Steering

Cooling

Electrical

Braking

Body

Lighting

Interior

Air Conditioning

Fuel System

Exhaust

---

### Level 8 — Part

Each category contains individual spare parts.

Example:

Suspension

↓

Shock Absorber

↓

Coil Spring

↓

Control Arm

↓

Ball Joint

---

### Level 9 — Part Variant

The lowest level identifies the exact variation of a spare part.

Examples:

Left

Right

Front

Rear

Upper

Lower

OEM Version

Aftermarket Version

Original Equipment

Heavy Duty

This level allows precise compatibility matching.

---

# 2.4 Hierarchy Rules

The hierarchy follows strict rules.

Rule 1

Every child entity has exactly one parent.

---

Rule 2

Navigation always starts from the highest possible level.

---

Rule 3

Relationships are always hierarchical.

Circular relationships are not allowed.

---

Rule 4

Reference entities never store business information.

Only reference information belongs inside this hierarchy.

---

Rule 5

The hierarchy must remain stable over time.

New entities should extend existing branches rather than changing the structure.

---

# 2.5 Why This Hierarchy

This hierarchy was designed to satisfy several requirements simultaneously.

It allows:

- Fast navigation
- Accurate filtering
- Intelligent autocomplete
- AI matching
- Seller specialization
- Buyer request validation
- Analytics
- Future VIN decoding
- Future OCR recognition
- Future OEM cross-reference support

Instead of serving only as a database, the hierarchy acts as the knowledge structure that powers the entire PieceFacile platform.

---

# End of Chapter 2

---

# Chapter 3 — Official Reference Database Structure

## 3.1 Overview

The PieceFacile Reference Database is organized into independent logical modules.

Each module has a well-defined responsibility.

This separation improves maintainability, scalability and future expansion while keeping the database fully normalized.

The complete Reference Database is divided into six major groups:

- Vehicle Reference
- Engine Reference
- Parts Reference
- Search Reference
- Seller Reference
- Metadata Reference

---

# 3.2 Vehicle Reference Module

The Vehicle Reference Module defines every vehicle supported by PieceFacile.

This module is the foundation of the entire Reference Database.

Official tables:

| Table | Purpose |
|---------|---------|
| vehicle_categories | Stores the main vehicle categories |
| vehicle_brands | Stores manufacturers |
| vehicle_families | Groups related vehicles from the same manufacturer |
| vehicle_models | Stores commercial vehicle models |
| vehicle_generations | Stores production generations |
| vehicle_engines | Stores engine specifications |

Hierarchy:

Vehicle Category

↓

Vehicle Brand

↓

Vehicle Family

↓

Vehicle Model

↓

Vehicle Generation

↓

Vehicle Engine

---

# 3.3 Parts Reference Module

The Parts Reference Module defines every spare part available in the marketplace.

Official tables:

| Table | Purpose |
|---------|---------|
| part_categories | Main spare-part categories |
| part_subcategories | Detailed categories |
| parts | Individual spare parts |
| part_variants | Physical variations of a part |

Hierarchy:

Part Category

↓

Part Subcategory

↓

Part

↓

Part Variant

---

# 3.4 Search Reference Module

The Search Reference Module exists exclusively to improve search quality.

It stores alternative names rather than official records.

Official tables:

| Table | Purpose |
|---------|---------|
| brand_aliases | Alternative manufacturer names |
| family_aliases | Alternative family names |
| model_aliases | Alternative model names |
| engine_aliases | Alternative engine names |
| part_aliases | Alternative spare-part names |

Examples include:

Arabic names

French names

English names

Abbreviations

Misspellings

Local Algerian terminology

Historical names

Search keywords

---

# 3.5 Seller Reference Module

This module connects sellers with the reference database.

It does not store business information.

Instead, it stores the seller's technical specialization.

Official tables:

| Table | Purpose |
|---------|---------|
| seller_specializations | Seller expertise |
| seller_supported_brands | Supported manufacturers |
| seller_supported_models | Supported models |
| seller_supported_parts | Supported part categories |

This module allows the Matching Engine to determine which sellers should receive a buyer request.

---

# 3.6 Metadata Reference Module

Metadata provides additional information without changing the core hierarchy.

Official tables:

| Table | Purpose |
|---------|---------|
| countries | Manufacturer origin |
| fuels | Fuel types |
| transmissions | Transmission types |
| drivetrains | Drivetrain types |
| body_types | Vehicle body styles |
| vehicle_segments | Market segments |

Keeping these values in dedicated tables improves consistency and reduces duplicated data.

---

# 3.7 Reference Module Relationships

The modules interact through well-defined relationships.

```
Vehicle Reference
        │
        ├──────────────┐
        │              │
        ▼              ▼
Engine Reference   Parts Reference
        │              │
        └──────┬───────┘
               ▼
      Search Reference
               │
               ▼
      Seller Reference
```

The Search Reference Module enhances discoverability.

The Seller Reference Module powers request matching.

Neither module replaces the official reference hierarchy.

---

# 3.8 Architectural Rules

Every official reference table must follow the same principles.

- One clear responsibility per table.
- No duplicated information.
- Stable identifiers.
- Explicit relationships.
- Expandable structure.
- Technology-independent design.

These rules apply to every future reference table added to the project.

---

# End of Chapter 3

---

# Chapter 4 — Official Reference Tables (Part 2)

## 4.7 vehicle_generations

### Purpose

Stores the official production generations of each vehicle model.

Generations distinguish vehicles that share the same commercial identity but differ in production period, design or technical specifications.

---

### Responsibilities

- Organize production history.
- Separate incompatible vehicle generations.
- Improve search accuracy.
- Improve parts compatibility.

---

### Parent

vehicle_models

---

### Children

vehicle_engines

---

### Used By

- Smart Search
- Buyer Requests
- Parts Matching
- AI Matching

---

## 4.8 vehicle_engines

### Purpose

Stores the engines officially available for each vehicle generation.

Each engine represents a technical configuration used to improve compatibility between vehicles and spare parts.

---

### Responsibilities

- Identify engine variants.
- Improve compatibility accuracy.
- Support advanced search.
- Support future VIN decoding.

---

### Parent

vehicle_generations

---

### Children

None

---

### Used By

- Smart Search
- Parts Matching
- AI Matching
- Vehicle Identification

---

## 4.9 Table Hierarchy

The official vehicle hierarchy is:

```
Vehicle Category
        │
        ▼
Vehicle Brand
        │
        ▼
Vehicle Family
        │
        ▼
Vehicle Model
        │
        ▼
Vehicle Generation
        │
        ▼
Vehicle Engine
```

Every vehicle stored in the Reference Database must follow this hierarchy.

---

## 4.10 General Rules

The following rules apply to every reference table.

### Rule 1

Each table has one clear responsibility.

---

### Rule 2

Each table has exactly one direct parent, except the root table.

---

### Rule 3

Reference tables store technical reference information only.

They never store business or transactional data.

---

### Rule 4

Relationships must always follow the official hierarchy.

---

### Rule 5

Reference tables are designed for long-term stability.

Future expansion should be achieved by adding new records, not by redesigning the structure.

---

# End of Chapter 4

---

# Chapter 5 — Reference Relationships

## 5.1 Purpose

The Reference Database is built around logical relationships between independent reference entities.

These relationships create a consistent navigation path across the entire platform while ensuring that every entity can be uniquely identified.

---

## 5.2 Relationship Philosophy

Every reference entity belongs to another reference entity.

The hierarchy always flows from general information to more specific information.

```
Vehicle Category
        │
        ▼
Vehicle Brand
        │
        ▼
Vehicle Family
        │
        ▼
Vehicle Model
        │
        ▼
Vehicle Generation
        │
        ▼
Vehicle Engine
```

Each level provides additional information without replacing the previous level.

---

## 5.3 Parent–Child Principle

The architecture follows a strict parent–child relationship.

Every child entity belongs to a single parent.

Examples:

- A brand belongs to one vehicle category.
- A family belongs to one brand.
- A model belongs to one family.
- A generation belongs to one model.
- An engine belongs to one generation.

This structure keeps the hierarchy simple, predictable and easy to maintain.

---

## 5.4 Independence of Reference Data

Reference entities are independent from business entities.

Business data such as users, requests, offers and orders reference the hierarchy but never become part of it.

This separation keeps the Reference Database stable while allowing business data to grow continuously.

---

## 5.5 Consistency

Relationships must always follow the official hierarchy.

Applications, APIs and future services should navigate the database using these relationships instead of relying on free-text values.

---

## 5.6 Future Expansion

Additional reference entities may be introduced in future versions.

Examples include:

- Vehicle Platforms
- OEM References
- Part Compatibility
- VIN Information

New entities should extend the hierarchy without changing its existing structure.

---

# End of Chapter 5

---

# Chapter 6 — Reference Data Usage

## 6.1 Purpose

The Reference Database serves as the central source of structured information used across the entire PieceFacile platform.

All application features that require vehicle identification must rely on the Reference Database.

---

## 6.2 Primary Consumers

The Reference Database is used by multiple application modules.

These include:

- Vehicle Selection
- Buyer Requests
- Seller Specializations
- Smart Search
- AI Matching
- Analytics
- Administration

Each module reads reference data according to its own business rules.

---

## 6.3 Vehicle Selection

Vehicle selection must always use the official reference hierarchy.

Users navigate from broader information to more specific information until the desired vehicle is identified.

This approach reduces errors and ensures consistent data across the platform.

---

## 6.4 Buyer Requests

Buyer requests should reference official vehicle records rather than relying on manually entered vehicle names whenever possible.

Using structured reference data improves request quality and matching accuracy.

---

## 6.5 Seller Specializations

Seller profiles should be built using the same reference entities.

This enables sellers to define exactly which vehicle categories, brands and models they support.

Using the official hierarchy ensures consistent specialization data across the marketplace.

---

## 6.6 Smart Search

Search features should prioritize structured reference data over free-text matching.

When a user searches for a vehicle, the system should identify the corresponding reference entity before applying business logic.

This improves accuracy and reduces duplicate search results.

---

## 6.7 AI Matching

The AI Matching Engine uses reference data to compare buyer requests with seller specializations.

Structured reference entities provide significantly more reliable matching than free-text comparisons.

---

## 6.8 Analytics

Reference data provides a consistent foundation for analytics.

Because all users reference the same standardized entities, reports can accurately measure activity across:

- Vehicle Categories
- Brands
- Families
- Models
- Generations

---

## 6.9 Administration

Administrative tools use the Reference Database to manage approved reference information.

Changes to reference data should be controlled to preserve consistency throughout the platform.

---

# End of Chapter 6

---

# Chapter 7 — Reference Integration

## 7.1 Purpose

The Reference Database is a shared foundation used by every major module of the PieceFacile platform.

Rather than storing duplicated information, application modules reference the official entities defined by the Reference Database.

This approach ensures consistency across the entire system.

---

## 7.2 Integration Principles

Every application module should consume reference data instead of creating its own vehicle definitions.

Reference information must remain centralized.

Business modules should only store references to official entities.

---

## 7.3 Platform Integration

The Reference Database integrates with the following platform modules.

| Module | Purpose |
|----------|---------|
| Authentication | Identifies the current user |
| Buyer Requests | References official vehicles |
| Seller Profiles | References supported vehicles |
| Offers | References buyer requests |
| Smart Search | Searches official reference data |
| AI Matching | Matches buyers and sellers |
| Notifications | Uses matching results |
| Analytics | Generates standardized reports |
| Administration | Maintains reference data |

---

## 7.4 Data Flow

The Reference Database acts as the foundation of the platform.

```
Reference Database
        │
        ├───────────────┐
        │               │
        ▼               ▼
Buyer Module     Seller Module
        │               │
        └──────┬────────┘
               ▼
        Matching Engine
               │
               ▼
            Offers
               │
               ▼
         Notifications
```

Every module depends on the same standardized reference entities.

---

## 7.5 Benefits

Using a centralized Reference Database provides several advantages.

- Consistent vehicle identification.
- Reduced duplicate data.
- Better search accuracy.
- Improved AI matching.
- Reliable analytics.
- Easier long-term maintenance.
- Simpler future expansion.

---

## 7.6 Future Modules

Future platform features should integrate with the existing Reference Database whenever possible.

Examples include:

- VIN Decoder
- OCR Recognition
- OEM Part Lookup
- Cross-Reference Engine
- Recommendation Engine
- Predictive Analytics

These features extend the platform without requiring changes to the core architecture.

---

# End of Chapter 7

---

# Chapter 8 — Maintenance & Governance

## 8.1 Purpose

The long-term quality of the PieceFacile Reference Database depends on consistent governance.

This chapter defines the principles that ensure the reference architecture remains stable, reliable and maintainable as the platform evolves.

---

## 8.2 Official Source of Truth

The Reference Database is the official source of truth for all vehicle reference information used throughout the platform.

Application modules must rely on the official reference entities instead of maintaining independent vehicle definitions.

---

## 8.3 Controlled Evolution

The architecture is designed to evolve through extension rather than modification.

Future development should prioritize:

- Adding new reference records.
- Expanding existing datasets.
- Introducing new compatible modules.

Structural changes should remain exceptional.

---

## 8.4 Consistency

All reference data must follow the official hierarchy and architectural principles defined in this document.

Consistency takes priority over convenience.

Whenever multiple representations exist, one official reference should be selected and maintained.

---

## 8.5 Dataset Independence

Each approved dataset remains independently maintained.

Examples include:

- Passenger Cars
- Light Commercial Vehicles
- Heavy Trucks
- Motorcycles
- Buses & Coaches
- Agricultural Machinery
- Construction Equipment

Updates to one dataset must not require structural changes to the others.

---

## 8.6 Future Compatibility

The architecture is intended to support future growth without redesign.

Examples include:

- Additional vehicle categories.
- New manufacturers.
- Emerging vehicle technologies.
- Expanded search capabilities.
- Advanced AI services.

The existing hierarchy should remain valid as the platform expands.

---

## 8.7 Documentation

All architectural decisions affecting the Reference Database should be documented before implementation.

This document remains the primary architectural reference for future development.

---

# End of Chapter 8

---

# Chapter 9 — Architecture Summary

## 9.1 Overview

The PieceFacile Reference Database provides a unified and scalable architecture for managing all vehicle reference information across the platform.

Rather than acting as a simple catalog of vehicles, it serves as the foundation for every feature that depends on structured vehicle data.

The architecture has been designed to remain stable while allowing continuous expansion as the platform grows.

---

## 9.2 Core Architecture

The Reference Database is organized around a single hierarchical structure.

```
Vehicle Category
        │
        ▼
Vehicle Brand
        │
        ▼
Vehicle Family
        │
        ▼
Vehicle Model
        │
        ▼
Vehicle Generation
        │
        ▼
Vehicle Engine
```

This hierarchy is shared by every supported vehicle category.

---

## 9.3 Main Components

The architecture is composed of the following reference modules.

- Vehicle Reference
- Parts Reference
- Search Reference
- Seller Reference
- Metadata Reference

Each module has a clearly defined responsibility while remaining fully integrated with the others.

---

## 9.4 Design Principles

The architecture follows these principles.

- Single Source of Truth
- Normalized Structure
- Hierarchical Organization
- Consistent Relationships
- Technology Independence
- Long-Term Maintainability
- Future Scalability

These principles guide every future architectural decision.

---

## 9.5 Supported Vehicle Categories

The architecture currently supports:

- Passenger Cars
- Light Commercial Vehicles
- Heavy Trucks
- Motorcycles
- Buses & Coaches
- Agricultural Machinery
- Construction Equipment

Additional categories may be introduced without changing the overall architecture.

---

## 9.6 Future Vision

The architecture has been designed to support future platform capabilities, including:

- Smart Search
- AI Matching
- Recommendation Engine
- VIN Decoding
- OCR Recognition
- OEM Cross-References
- Advanced Analytics

These capabilities build upon the same reference foundation defined by this document.

---

## 9.7 Final Statement

This document defines the official architecture of the PieceFacile Reference Database.

All future implementations, including database schemas, APIs, application modules and intelligent services, should follow the principles and structure established in this architecture.

Any future evolution of the platform should extend this architecture while preserving its core design principles.

---

# End of Document
