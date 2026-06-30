# 06_BUSINESS_RULES.md

# PieceFacile Business Rules

This document defines the official business rules of PieceFacile.

These rules are independent from Flutter and must always be respected.

---

# Marketplace Model

PieceFacile is a Marketplace.

The platform never buys or sells spare parts.

It only connects Buyers and Verified Sellers.

---

# User Roles

There are three roles.

Buyer

Seller

Administrator

---

# Seller Verification

Only verified shops can publish offers.

Every seller must complete:

* Profile
* Shop information
* Location
* Contact information

---

# Buyer Requests

A buyer creates a request.

A request may contain:

* Vehicle
* Brand
* Model
* Engine
* Part list
* Photos
* Description

---

# Offers

Only sellers can create offers.

Each offer belongs to exactly one request.

Multiple sellers may answer the same request.

---

# Offer Status

Possible values:

Pending

Accepted

Rejected

Expired

Cancelled

---

# Request Status

Draft

Published

Receiving Offers

Negotiation

Completed

Cancelled

Expired

---

# Negotiation

Buyer and Seller may negotiate before the offer is accepted.

Negotiation is performed through the integrated chat.

---

# Deal Creation

A Deal is created only after the buyer accepts one offer.

---

# Ratings

Ratings become available only after a completed deal.

Only the buyer can rate the seller.

One rating per completed deal.

---

# Notifications

The system sends notifications when:

* New offer received
* Offer accepted
* New message
* Deal completed
* Seller verification approved

---

# AI Assistance

AI helps users:

* Identify parts.
* Suggest categories.
* Improve search.
* Match compatible vehicles.
* Detect incomplete requests.

AI never modifies database records automatically.

---

# Images

Images are stored in Supabase Storage.

The database stores only image URLs.

---

# Security

Users can access only their own private information.

Sellers cannot edit buyer requests.

Buyers cannot edit seller offers.

Administrators have full access.

---

# Future Features

Reserved for future versions:

* VIN Decoder
* OCR
* Voice Search
* Image Recognition
* Price Prediction
* Recommendation Engine

---

This document defines the official business behavior of PieceFacile.
