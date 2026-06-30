# PieceFacile

# UI & UX Decisions

Status: Approved
Version: 1.0
Last Updated: 2026-06-13

## Section A — Design Philosophy

### Principle 001

User Efficiency First

Description:

The platform should help users find and trade spare parts with the fewest possible steps.

Every screen should prioritize speed and clarity over visual complexity.

---

### Principle 002

Marketplace Before Social Network

Description:

PieceFacile is a marketplace, not a social platform.

Interface decisions should prioritize requests, offers, negotiations, and deals rather than user profiles or social interactions.

---

### Principle 003

Information Density With Clarity

Description:

Important information should be visible without excessive scrolling.

Interfaces should maximize useful information while remaining easy to read.

---

### Principle 004

Horizontal Layout Preference

Description:

Whenever practical, information should be displayed horizontally rather than vertically.

The objective is to reduce scrolling and improve information visibility.

---

### Principle 005

Invoice Style Organization

Description:

Offers, deal summaries, and transaction-related information should follow invoice-style layouts.

Prices, quantities, conditions, and totals should remain aligned and easy to compare.

---

### Principle 006

Progressive Disclosure

Description:

Secondary information should remain hidden until requested.

Users should see essential information first and access details only when needed.

Examples:

- Expandable request details
- Expandable image galleries
- Expandable deal information

---

### Principle 007

Consistency Across Buyer And Seller Interfaces

Description:

Similar actions should follow similar layouts and interaction patterns.

The buyer and seller experiences should feel like parts of the same system.

---

### Principle 008

Mobile First Design

Description:

All interfaces should be designed primarily for mobile devices.

Desktop layouts may expand functionality but should follow the same core structure.

---

### Principle 009

Local Asset Preference

Description:

The application should prioritize local assets whenever possible.

Examples:

- Built-in icons
- Local SVG assets
- Local illustrations

The objective is to improve reliability and reduce dependency on external resources.

---

### Principle 010

Trust Through Marketplace Activity

Description:

Trust should be established through marketplace behavior.

Examples:

- Completed deals
- Ratings
- Expert badges
- Shop activity

Trust should not depend on personal profile photos or social metrics.

---

### Principle 011

Minimize User Friction

Description:

Users should never be required to provide unnecessary information.

Every input field should have a clear business purpose.

---

### Principle 012

Future Scalability Without UI Redesign

Description:

Interface structures should support future marketplace growth without requiring major redesigns.

Future features should integrate naturally into existing navigation and workflows.

---

## Section B — Global UI Principles

### Principle 001

Compact Information Display

Description:

Interfaces should display the maximum amount of useful information using the minimum amount of screen space.

The objective is to reduce scrolling and improve decision-making speed.

---

### Principle 002

Summary Before Details

Description:

Users should first see a concise summary.

Detailed information should remain accessible through expansion or navigation.

Examples:

- Request summary
- Offer summary
- Deal summary

---

### Principle 003

Expandable Information Blocks

Description:

Large information sections should remain collapsed by default when possible.

Users may expand them when additional details are needed.

Examples:

- Request details
- Vehicle details
- Deal details
- Image galleries

---

### Principle 004

Image Gallery Preference

Description:

Images should not consume excessive screen space.

When multiple images exist, they should be represented by an image gallery indicator.

Examples:

- Gallery icon
- Image counter
- Expand on demand

---

### Principle 005

Persistent Context Visibility

Description:

Users should always understand what object they are currently viewing.

Important context should remain visible throughout navigation.

Examples:

- Request reference
- Vehicle information
- Deal identifier
- Shop name

---

### Principle 006

Single Primary Action

Description:

Each screen should emphasize one primary action.

Secondary actions should remain visually less prominent.

Examples:

- Submit Offer
- Accept Offer
- Publish Request
- Confirm Deal

---

### Principle 007

Status Visibility

Description:

Important statuses should always remain visible.

Users should never need to search for the current state of an object.

Examples:

- Request Status
- Offer Status
- Deal Status
- Verification Status

---

### Principle 008

Visual Consistency

Description:

The same information should always be presented using the same visual structure.

Examples:

- Price placement
- Status placement
- Date placement
- Action buttons

---

### Principle 009

Minimize Navigation Depth

Description:

Users should reach important information with as few navigation steps as possible.

Nested screens should be avoided whenever practical.

---

### Principle 010

In-Context Information Access

Description:

Whenever possible, information should be expanded inside the current screen rather than opening a separate page.

Examples:

- Request details
- Image previews
- Deal summaries
- Vehicle information

---

### Principle 011

Invoice Layout Standard

Description:

Offers and deals should follow invoice-style organization.

Information should remain aligned and easy to compare.

Preferred Order:

Part Name

Condition

Unit Price

Quantity

Total

---

### Principle 012

Readability Over Decoration

Description:

Visual decoration should never reduce readability.

The interface should prioritize clarity and functionality over visual effects.

---

### Principle 013

Icon Assisted Navigation

Description:

Icons should assist recognition and navigation.

Icons should complement text rather than replace it completely.

---

### Principle 014

Predictable Interaction Patterns

Description:

Similar actions should behave consistently throughout the application.

Users should not need to relearn interactions across different screens.

---

### Principle 015

Performance Friendly UI

Description:

Interface decisions should prioritize speed and responsiveness.

Heavy visual elements should be minimized whenever possible.

Examples:

- Local icons
- Optimized images
- Limited animations

---

## Section C — Global Navigation

### Principle 001

Role-Based Navigation

Description:

Navigation should adapt to the current user role.

The system should present only relevant actions and destinations.

Examples:

- Buyer Navigation
- Seller Navigation
- Administrator Navigation

---

### Principle 002

Single Account Navigation

Description:

A user should access both buyer and seller functionality through a single account.

Separate accounts are not required.

---

### Principle 003

Buyer Mode By Default

Description:

All users begin as buyers.

Seller functionality becomes available only after shop approval.

---

### Principle 004

Mode Switching

Description:

Approved sellers may switch between Buyer Mode and Seller Mode.

Mode switching should be available from the main navigation menu.

The current mode should always remain visible.

---

### Principle 005

Persistent Navigation Structure

Description:

Primary navigation should remain predictable throughout the application.

Users should always know where they are and how to return.

---

### Principle 006

Marketplace Priority

Description:

The most frequently used marketplace actions should remain easily accessible.

Examples:

- Create Request
- View Offers
- View Deals
- Browse Requests

---

### Principle 007

Notification Accessibility

Description:

Notifications should remain accessible from any major section of the application.

Unread notifications should be clearly indicated.

---

### Principle 008

Context Preservation

Description:

Navigation should preserve user context whenever possible.

Users should not lose their current request, offer, deal, or conversation when navigating.

---

### Principle 009

Minimal Navigation Layers

Description:

Navigation hierarchy should remain shallow.

Important destinations should require as few steps as possible.

---

### Principle 010

Back Navigation Consistency

Description:

Back navigation should behave predictably throughout the application.

Users should return to the previous logical screen rather than restarting workflows.

---

### Principle 011

Quick Access To Active Work

Description:

Users should have immediate access to ongoing activity.

Examples:

- Active Requests
- Active Offers
- Active Deals
- Unread Conversations

---

### Principle 012

Shop Access Visibility

Description:

Approved sellers should always have visible access to seller tools.

Pending sellers should have visible access to onboarding progress.

Rejected sellers should have visible access to re-submission options.

---

### Principle 013

Search Accessibility

Description:

Search functionality should remain easily accessible from major marketplace sections.

Search should never require deep navigation.

---

### Principle 014

Profile Accessibility

Description:

Users should be able to access account settings and profile management from any major application area.

---

### Principle 015

Future Navigation Scalability

Description:

Navigation architecture should support future marketplace features without major restructuring.

New sections should integrate naturally into the existing navigation structure.

---

## Section D — Authentication & Account Access

### Principle 001

Phone Number Authentication

Description:

Users authenticate using their phone number.

The phone number serves as the primary account identifier.

---

### Principle 002

Single Account System

Description:

Each person uses a single account for all marketplace activities.

Separate buyer and seller accounts are not required.

---

### Principle 003

Buyer Access By Default

Description:

Every newly registered user immediately receives buyer capabilities.

Users may create requests without additional approval.

---

### Principle 004

Seller Access Through Shop Approval

Description:

Seller functionality becomes available only after shop approval.

Creating a user account does not automatically grant seller privileges.

---

### Principle 005

Clear Registration Paths

Description:

The authentication screens should prioritize standard user registration.

Seller registration should remain available through a secondary pathway.

Example:

Create Account

Sign In

Are You A Shop Owner?

Create Your Seller Profile

---

### Principle 006

Seller Registration Without Account Duplication

Description:

Existing users should not create a second account to become sellers.

Seller onboarding should begin from the existing account.

---

### Principle 007

Approval Status Visibility

Description:

Seller applicants should always see their verification status.

Status Examples:

- Pending Review
- Approved
- Rejected
- Suspended

---

### Principle 008

Seller Access During Review

Description:

Applicants may access seller onboarding screens while verification is pending.

Marketplace selling actions remain restricted until approval.

---

### Principle 009

Seller Mode Activation

Description:

Seller Mode becomes available immediately after shop approval.

No additional registration process should be required.

---

### Principle 010

Mode Switching

Description:

Approved sellers may switch between Buyer Mode and Seller Mode.

Mode switching should remain simple and accessible.

---

### Principle 011

Buyer Functionality For Sellers

Description:

Approved sellers retain full buyer functionality.

Seller accounts may create requests, receive offers, and complete deals as buyers.

---

### Principle 012

Account Identity Consistency

Description:

The same user identity should be maintained across buyer and seller activities.

Users should not manage multiple profiles for different roles.

---

### Principle 013

Verification Transparency

Description:

The platform should clearly explain why shop verification is required.

Example:

Verification helps protect buyers from fake sellers and improves marketplace trust.

---

### Principle 014

Minimal Registration Friction

Description:

Registration should require only essential information.

Users should be able to access the marketplace as quickly as possible.

---

### Principle 015

Future Authentication Scalability

Description:

The authentication system should support future security enhancements without requiring account migration.

Examples:

- Multi-device sessions
- Additional verification methods
- Enhanced account protection

---

## Section E — User Account & Profile

### Principle 001

Single Identity System

Description:

Each user should maintain a single identity throughout the platform.

The same account should be used for buyer and seller activities.

---

### Principle 002

Profile Simplicity

Description:

User profiles should remain simple and focused on marketplace activity.

Personal information should be limited to information that provides marketplace value.

---

### Principle 003

Avatar-Based Identity

Description:

Users may select an avatar from a predefined collection.

Custom profile photos are not required.

The objective is to maintain visual identity without increasing moderation requirements.

---

### Principle 004

Account Information Management

Description:

Users should be able to update their account information when permitted.

Examples:

- Full Name
- Language
- Contact Information

---

### Principle 005

Language Accessibility

Description:

Language preferences should remain accessible from profile settings.

Users should be able to switch languages without affecting account functionality.

---

### Principle 006

Seller Profile Integration

Description:

Approved sellers should access shop management through their account area.

Seller tools should remain connected to the same user identity.

---

### Principle 007

Account Status Visibility

Description:

Users should always be able to view important account statuses.

Examples:

- Account Active
- Shop Pending
- Shop Approved
- Shop Suspended

---

### Principle 008

Marketplace Activity Overview

Description:

Users should have access to a summary of their marketplace activity.

Examples:

- Active Requests
- Active Deals
- Notifications
- Recent Activity

---

### Principle 009

Trust Information Visibility

Description:

Relevant trust indicators should remain visible when applicable.

Examples:

- Shop Verification
- Expert Badges
- Seller Statistics

---

### Principle 010

Role Awareness

Description:

Users should always know whether they are currently operating in Buyer Mode or Seller Mode.

The current mode should remain visible.

---

### Principle 011

Profile Consistency

Description:

Profile layouts should remain consistent across buyer and seller experiences.

Users should not feel that they are managing separate systems.

---

### Principle 012

Minimal Profile Complexity

Description:

Profile screens should avoid unnecessary settings and options.

Only useful marketplace-related controls should be displayed.

---

### Principle 013

Account Security Accessibility

Description:

Security-related actions should remain accessible from profile settings.

Examples:

- Session Management
- Account Verification
- Future Security Features

---

### Principle 014

Marketplace First Profile Design

Description:

Profile screens should support marketplace activity rather than social networking.

The focus should remain on transactions and participation.

---

### Principle 015

Future Profile Scalability

Description:

Profile structures should support future marketplace features without major redesign.

---

## Section F — Buyer Journey

### F1 — Buyer Home

#### Principle 001

Marketplace Entry Point

Description:

The Buyer Home screen serves as the primary entry point for buyers.

Important actions should be immediately visible.

---

#### Principle 002

Request Creation Priority

Description:

Creating a request is the primary buyer action.

The request creation entry point should remain highly visible.

---

#### Principle 003

Active Activity Visibility

Description:

Buyers should immediately see ongoing marketplace activity.

Examples:

- Active Requests
- New Offers
- Active Deals
- Unread Messages

---

#### Principle 004

Action-Oriented Layout

Description:

The home screen should prioritize actions rather than information overload.

Users should quickly understand what requires attention.

---

#### Principle 005

Notification Awareness

Description:

New marketplace events should remain visible from the home screen.

Examples:

- New Offers
- New Messages
- Deal Updates

---

#### Principle 006

Quick Navigation

Description:

Buyers should access their most important destinations with minimal interaction.

Examples:

- Create Request
- My Requests
- My Offers
- My Deals

---

#### Principle 007

Marketplace Status Awareness

Description:

The home screen should communicate current marketplace activity clearly.

Users should understand whether they have pending actions.

---

#### Principle 008

Progress Visibility

Description:

Buyers should understand the progress of their requests.

Examples:

- Waiting For Offers
- Offers Received
- Negotiation
- Deal Created

---

#### Principle 009

Minimal Clutter

Description:

Only information that helps marketplace decisions should be displayed.

Unnecessary content should be avoided.

---

#### Principle 010

Mobile Efficiency

Description:

Important actions should remain reachable without excessive scrolling.

The screen should remain optimized for mobile usage.

---

### F2 — Request Creation

#### Principle 001

Single Category Rule

Description:

A request belongs to one vehicle category only.

The category defines the matching scope for the request.

---

#### Principle 002

Multi-Part Requests

Description:

A request may contain multiple parts.

Buyers should not be required to create separate requests for related parts.

---

#### Principle 003

Multi-Brand Support

Description:

A request may contain parts associated with multiple brands.

Provided that all items belong to the same vehicle category.

---

#### Principle 004

Multi-Model Support

Description:

A request may contain multiple vehicle models.

Provided that all items belong to the same vehicle category.

---

#### Principle 005

Multi-Year Support

Description:

A request may contain multiple vehicle years.

Provided that all items belong to the same vehicle category.

---

#### Principle 006

Single Active Editor

Description:

Only one part editor should remain open at a time.

This prevents visual clutter and improves usability on mobile devices.

---

#### Principle 007

Collapsible Part Summaries

Description:

Previously added parts should automatically collapse into summary rows.

The objective is to keep the creation screen organized.

---

#### Principle 008

Summary Row Format

Description:

Part summaries should follow a standardized format.

Format:

Part Name | Brand Model Year | Quantity

---

#### Principle 009

Progressive Request Building

Description:

Buyers should build requests incrementally.

Each new part should be added without overwhelming the screen.

---

#### Principle 010

Optional Image Support

Description:

Images may be attached to request items.

Images help sellers identify parts more accurately.

---

#### Principle 011

Image Limits

Description:

Each request item may contain up to three images.

Additional images should not be allowed.

---

#### Principle 012

Unknown Part Support

Description:

Buyers should be able to create requests even when the exact part name is unknown.

Custom part names should remain supported.

---

#### Principle 013

Minimal Required Inputs

Description:

Only information that improves matching quality should be required.

Unnecessary fields should be avoided.

---

#### Principle 014

Request Review Before Publication

Description:

Buyers should be able to review the complete request before publishing.

The final summary should clearly display all requested items.

---

#### Principle 015

Fast Request Publishing

Description:

Publishing a request should require as few steps as possible.

The process should remain optimized for mobile users.

---

#### Principle 016

Visibility Selection

Description:

Buyers should select the visibility scope of the request before publication.

Visibility Options:

- Local
- Regional
- National

---

#### Principle 017

Buyer Control Over Visibility

Description:

Visibility expansion suggestions are recommendations only.

The buyer remains free to keep the original visibility scope.

---

#### Principle 018

Request Quality Over Complexity

Description:

The request creation experience should prioritize clarity and speed.

The objective is to help buyers publish accurate requests without unnecessary complexity.

### F3 — Active Requests

#### Principle 001

Lifecycle Visibility

Description:

Buyers should always understand the current status of each request.

The request status should remain clearly visible.

---

#### Principle 002

Request-Centric Management

Description:

Active requests should serve as the primary management area for buyers.

Buyers should be able to monitor marketplace activity from a single location.

---

#### Principle 003

Status-Based Organization

Description:

Requests should be organized according to their current status.

Examples:

- Waiting For Offers
- Offers Received
- Negotiation
- Converted To Deal
- Expired

---

#### Principle 004

Request Summary First

Description:

Request lists should display concise summaries before detailed information.

The objective is to improve scanning speed.

---

#### Principle 005

Expandable Request Details

Description:

Detailed request information should remain collapsible.

Buyers should access details without leaving the current screen whenever possible.

---

#### Principle 006

Offer Awareness

Description:

Buyers should immediately see whether a request has received offers.

Offer counts should remain visible.

---

#### Principle 007

Unread Activity Indicators

Description:

New marketplace activity should be clearly indicated.

Examples:

- New Offers
- New Messages
- New Negotiation Activity

---

#### Principle 008

Fast Access To Offers

Description:

Buyers should access received offers directly from the request.

Navigation should require minimal steps.

---

#### Principle 009

Fast Access To Conversations

Description:

Buyers should access active conversations directly from the request.

The relationship between requests and conversations should remain clear.

---

#### Principle 010

Fast Access To Deals

Description:

When a deal exists, buyers should access it directly from the request.

The transition from request to deal should remain visible.

---

#### Principle 011

Request History Preservation

Description:

Requests should remain visible after completion or expiration.

Historical marketplace activity should remain accessible.

---

#### Principle 012

Request Expiration Visibility

Description:

Expiration information should remain visible.

Buyers should understand when a request will expire or has expired.

---

#### Principle 013

Republish Support

Description:

Expired requests may be republished.

Republishing should require minimal effort.

---

#### Principle 014

Read-Only Deal Requests

Description:

Requests that have been converted into deals should become read-only.

The original request should remain available for reference.

---

#### Principle 015

Mobile-Friendly Management

Description:

Request management screens should remain optimized for frequent daily use.

Important actions should remain reachable without excessive scrolling.

---

#### Principle 016

Clear Marketplace Progress

Description:

The buyer should always understand where the request currently sits within the marketplace lifecycle.

Examples:

Request Created

↓

Offers Received

↓

Negotiation

↓

Deal Created

↓

Completed

### F4 — Received Offers

#### Principle 001

Offer Comparison First

Description:

The primary purpose of the offers screen is comparison.

Buyers should quickly identify the most suitable offer.

---

#### Principle 002

Invoice Style Layout

Description:

Offers should follow an invoice-style structure.

Information should remain aligned and easy to compare.

---

#### Principle 003

Compact Information Display

Description:

Important information should remain visible without excessive scrolling.

The objective is to compare offers efficiently.

---

#### Principle 004

Request Context Preservation

Description:

The request summary should remain accessible while viewing offers.

Buyers should always know which request the offers belong to.

---

#### Principle 005

Expandable Request Header

Description:

The request summary should appear as a compact header.

Additional request details should expand within the same screen.

---

#### Principle 006

Image Gallery Indicators

Description:

Part images should be represented through gallery indicators.

Images should not consume excessive space inside offer layouts.

---

#### Principle 007

Availability Transparency

Description:

Available and unavailable parts should remain clearly distinguishable.

Buyers should immediately understand offer coverage.

---

#### Principle 008

Partial Offer Support

Description:

Offers may contain unavailable parts.

Unavailable items should remain visible rather than hidden.

---

#### Principle 009

Offer Acceptance Flexibility

Description:

Buyers may accept offers even when some parts are unavailable.

Acceptance should remain a buyer decision.

---

#### Principle 010

Offer Comparison Consistency

Description:

All offers should follow the same visual structure.

Comparisons should remain straightforward.

---

#### Principle 011

Negotiation Accessibility

Description:

Conversation access should remain available from every offer.

Negotiation should require minimal navigation.

---

#### Principle 012

Seller Visibility

Description:

Buyers should clearly identify the shop behind each offer.

Relevant trust indicators should remain visible.

Examples:

- Verification Status
- Expert Badges
- Ratings

---

#### Principle 013

Deal Creation Accessibility

Description:

Offer acceptance should remain easily accessible.

The path from offer to deal should be clear.

---

#### Principle 014

Accepted Offer Locking

Description:

Accepted offers become locked.

Offer information should remain visible for reference purposes.

---

#### Principle 015

Buyer Decision Support

Description:

The interface should help buyers make informed decisions.

Information should be presented clearly without influencing buyer choice.

---

#### Principle 016

Marketplace Neutrality

Description:

The platform should not favor specific sellers.

Offer presentation should remain fair and transparent.

---

### F5 — Negotiation & Chat

#### Principle 001

Negotiation Linked To Marketplace Activity

Description:

Conversations should always remain connected to a marketplace context.

Examples:

- Request
- Offer
- Deal

Standalone conversations should be avoided.

---

#### Principle 002

Offer-Centric Communication

Description:

Negotiation should occur around a specific offer whenever possible.

Participants should always understand which offer is being discussed.

---

#### Principle 003

Persistent Request Context

Description:

Request information should remain accessible during conversations.

Users should never lose context while negotiating.

---

#### Principle 004

Compact Request Header

Description:

A compact request summary should appear at the top of the conversation.

The summary should be expandable within the same screen.

---

#### Principle 005

In-Context Detail Expansion

Description:

Request details should expand inside the conversation screen.

Users should not be forced to leave the chat to view request information.

---

#### Principle 006

Offer Visibility

Description:

Participants should be able to view the associated offer while negotiating.

Offer information should remain easily accessible.

---

#### Principle 007

Conversation Continuity

Description:

All messages related to the same negotiation should remain in a single conversation.

Conversation fragmentation should be avoided.

---

#### Principle 008

Marketplace Focus

Description:

The conversation interface should prioritize transaction-related communication.

The objective is efficient negotiation rather than social interaction.

---

#### Principle 009

Attachment Support

Description:

Participants may share files and images when necessary.

Attachments should remain associated with the conversation history.

---

#### Principle 010

Unread Message Visibility

Description:

Unread messages should remain clearly visible.

Users should immediately recognize new activity.

---

#### Principle 011

Participant Transparency

Description:

Users should clearly identify who is participating in the conversation.

Relevant marketplace information should remain visible.

Examples:

- Shop Name
- Verification Status
- Ratings
- Expert Badges

---

#### Principle 012

Direct Transition To Deal

Description:

When both parties reach an agreement, the path toward deal creation should be clear and accessible.

---

#### Principle 013

Conversation Preservation

Description:

Conversation history should remain available after offer acceptance.

Past negotiations may be useful for future reference.

---

#### Principle 014

Deal Context Preservation

Description:

When a deal is created, users should still be able to access the related conversation.

The relationship between negotiation and deal should remain visible.

---

#### Principle 015

Mobile-Friendly Communication

Description:

The conversation experience should remain optimized for mobile usage.

Important actions should remain easily accessible.

---

#### Principle 016

Internal Communication Preference

Description:

The platform should encourage communication through the internal messaging system.

Internal communication improves transparency and traceability.

---

### F6 — Deals

#### Principle 001

Deal Creation Through Offer Acceptance

Description:

Deals are created immediately after offer acceptance.

A deal always originates from an accepted offer.

---

#### Principle 002

Transaction Summary Visibility

Description:

The deal screen should provide a clear summary of the transaction.

Important information should remain immediately visible.

---

#### Principle 003

Invoice Style Presentation

Description:

Deal information should follow invoice-style organization.

The objective is to improve readability and transaction clarity.

---

#### Principle 004

Compact Deal Header

Description:

A concise deal summary should remain visible.

Examples:

- Deal Number
- Request Number
- Vehicle Information
- Shop Information

---

#### Principle 005

Successful Deal Summary

Description:

The platform should generate a compact transaction summary after deal creation.

The summary should include all essential information.

---

#### Principle 006

Marketplace Traceability

Description:

Users should always be able to trace a deal back to its originating request and offer.

---

#### Principle 007

Deal Completion Visibility

Description:

Users should clearly understand whether a deal is active or completed.

---

#### Principle 008

Deal Status Visibility

Description:

The current deal status should remain clearly visible.

Examples:

- Active
- Completed
- Cancelled

---

#### Principle 009

Completion Confirmation

Description:

Buyers may mark a deal as completed after successfully receiving the agreed parts.

---

#### Principle 010

Platform Neutrality

Description:

The platform facilitates communication between buyers and sellers.

The platform does not guarantee payment, delivery, product quality, or transaction completion.

---

#### Principle 011

Rating Accessibility

Description:

The rating action should remain accessible from the deal screen.

---

#### Principle 012

Rating Recommendation

Description:

The platform should encourage buyers to wait until receiving their parts before submitting a rating.

---

#### Principle 013

Locked Ratings Awareness

Description:

Before submitting a rating, users should be informed that ratings become permanent after submission.

---

#### Principle 014

Historical Visibility

Description:

Completed and cancelled deals should remain accessible for future reference.

---

#### Principle 015

Trust Building

Description:

Deal screens should reinforce transparency and trust through clear transaction records.

---

### F7 — Ratings

#### Principle 001

One Rating Per Deal

Description:

Each completed deal may receive only one buyer rating.

Multiple ratings for the same deal are not allowed.

---

#### Principle 002

Deal-Based Ratings

Description:

Ratings should always be linked to a completed marketplace deal.

Ratings cannot exist independently from transactions.

---

#### Principle 003

Buyer-Only Ratings

Description:

Only buyers may submit ratings in Version 1.

Seller ratings are not supported.

---

#### Principle 004

Permanent Submission

Description:

Ratings become permanently locked immediately after submission.

Users cannot modify ratings afterward.

---

#### Principle 005

No Rating Deletion

Description:

Ratings cannot be deleted by users.

Rating history should remain preserved.

---

#### Principle 006

Pre-Submission Warning

Description:

Before submitting a rating, users should receive a clear warning.

Example:

Ratings cannot be changed after submission.

---

#### Principle 007

Delivery Recommendation

Description:

The platform should encourage buyers to wait until receiving their parts before submitting a rating.

---

#### Principle 008

Trust Through Experience

Description:

Ratings should reflect the buyer's actual transaction experience.

The objective is to provide useful marketplace feedback.

---

#### Principle 009

Rating Visibility

Description:

Shop ratings should remain visible throughout the marketplace.

Examples:

- Shop Profile
- Offer Screens
- Marketplace Discovery

---

#### Principle 010

Fair Representation

Description:

Individual ratings and aggregate ratings should remain transparent.

The platform should not manipulate rating results.

---

#### Principle 011

Marketplace Trust Support

Description:

Ratings contribute to trust evaluation.

Ratings remain independent from:

- Verification Status
- Expert Badges

---

#### Principle 012

Historical Preservation

Description:

Ratings should remain attached to their original deals.

Historical rating data should remain accessible.

---

#### Principle 013

Simple Rating Experience

Description:

The rating process should remain fast and straightforward.

Users should complete ratings with minimal effort.

---

#### Principle 014

Post-Deal Integration

Description:

Ratings should appear as the final stage of the marketplace lifecycle.

Request

↓

Offer

↓

Negotiation

↓

Deal

↓

Rating

---

#### Principle 015

Version 1 Simplicity

Description:

The rating system should remain intentionally simple during Version 1.

Additional rating features may be considered in future versions.

---

Principle 016

Marketplace Integrity

Description:

Ratings help identify reliable sellers and discourage harmful marketplace behavior.

The objective is improving marketplace quality and discouraging harmful behavior.

---

## Section G — Seller Onboarding

### G1 — Seller Registration

#### Principle 001

Seller Registration Through Existing Accounts

Description:

Seller registration should begin from an existing user account.

Creating a separate seller account is not required.

---

#### Principle 002

Single Account Architecture

Description:

Users should maintain a single account for all marketplace activities.

The same account supports both buyer and seller functionality.

---

#### Principle 003

Buyer Functionality Preservation

Description:

Users retain full buyer functionality throughout the seller registration process.

Seller registration should not restrict buyer activities.

---

#### Principle 004

Dedicated Seller Entry Point

Description:

Seller registration should be accessible through a dedicated entry point.

Example:

Are You A Shop Owner?

Create Your Seller Profile

---

#### Principle 005

Simple Registration Process

Description:

The registration process should collect only information required for marketplace participation and verification.

---

#### Principle 006

Marketplace Transparency

Description:

The platform should explain the purpose of seller verification.

Example:

Verification protects buyers and reduces fake seller accounts.

---

#### Principle 007

Guided Registration Experience

Description:

Seller registration should follow a clear step-by-step process.

Users should always understand what remains to be completed.

---

#### Principle 008

Mobile-Friendly Registration

Description:

Seller onboarding should remain optimized for mobile devices.

The process should minimize complexity and scrolling.

---

#### Principle 009

Trust-Oriented Registration

Description:

Seller registration should emphasize marketplace trust and legitimacy.

Verification should be presented as a trust-building measure rather than an obstacle.

---

#### Principle 010

Future Scalability

Description:

The onboarding process should support future seller types without requiring major redesign.

---

#### Principle 011

Marketplace Neutrality

Description:

PieceFacile connects buyers and sellers.

The platform does not act as a payment processor, delivery provider, guarantor, or commercial intermediary.

Transaction responsibility remains with participating users.

---

### G2 — Shop Verification

#### Principle 001

Verified Shops Marketplace

Description:

Only verified shops may participate as sellers.

Marketplace trust should be based on verified business identities.

---

#### Principle 002

Commercial Register Requirement

Description:

Seller verification requires submission of a commercial register document.

The document is used only to verify business identity.

The platform is not responsible for commercial register administration or renewal.

---

#### Principle 003

Storefront Verification Requirement

Description:

Seller verification requires submission of a storefront photo.

The objective is to confirm the existence of a real business location.

---

#### Principle 004

Minimal Verification Scope

Description:

The platform verifies the existence of the business.

The platform does not assume responsibility for ongoing commercial register validity.

---

#### Principle 005

Administrative Review

Description:

Verification requests require administrative review before approval.

---

#### Principle 006

Verification Transparency

Description:

Applicants should clearly understand which documents are required and why.

---

#### Principle 007

Document Privacy

Description:

Verification documents should remain accessible only to authorized administrators.

---

#### Principle 008

Trust Before Selling

Description:

Seller activity remains restricted until verification approval is completed.

---

#### Principle 009

Re-Submission Support

Description:

Rejected applicants should be allowed to submit a new verification request.

---

#### Principle 010

Marketplace Protection

Description:

Verification exists primarily to reduce fake sellers and improve marketplace trust.

---

### G3 — Approval Status

#### Principle 001

Status Visibility

Description:

Seller applicants should always know their current approval status.

---

#### Principle 002

Pending Status Experience

Description:

Applicants under review should clearly see that verification is still in progress.

---

#### Principle 003

Approved Status Experience

Description:

Approved applicants immediately gain access to Seller Mode.

No additional registration steps are required.

---

#### Principle 004

Rejected Status Experience

Description:

Rejected applicants should receive clear guidance explaining how to correct issues and reapply.

---

#### Principle 005

Suspended Status Experience

Description:

Suspended sellers should receive clear information regarding marketplace restrictions.

---

#### Principle 006

Buyer Access Continuity

Description:

Approval status changes should never affect buyer functionality.

Users retain buyer access regardless of seller approval status.

---

#### Principle 007

Seller Mode Availability

Description:

Seller Mode becomes available only after approval.

Mode switching should remain easily accessible.

---

#### Principle 008

Progress Transparency

Description:

The platform should communicate approval progress clearly and consistently.

---

#### Principle 009

Trust-Oriented Communication

Description:

Approval messages should reinforce the trust and safety objectives of the verification process.

---

#### Principle 010

Marketplace Readiness

Description:

Approval status screens should clearly communicate what actions are currently available to the user.

---

## Section H — Seller Journey

### H1 — Seller Dashboard

#### Principle 001

Seller Command Center

Description:

The Seller Dashboard serves as the primary operational screen for sellers.

All important marketplace activity should be accessible from this screen.

---

#### Principle 002

Action-Oriented Design

Description:

The dashboard should prioritize actions rather than statistics.

The objective is to help sellers respond quickly to marketplace opportunities.

---

#### Principle 003

Statistics Priority Order

Description:

Seller statistics should follow a standardized order.

Order:

1. Active Offers
2. Pending Offers
3. Deals

---

#### Principle 004

Horizontal Statistics Layout

Description:

Primary statistics should be displayed horizontally in a single row.

The objective is to maximize visibility while minimizing screen usage.

---

#### Principle 005

New Opportunity Visibility

Description:

New marketplace opportunities should remain highly visible.

Examples:

- New Matching Requests
- New Messages
- Deal Updates

---

#### Principle 006

Fast Access To Requests

Description:

Sellers should reach relevant requests with minimal interaction.

---

#### Principle 007

Fast Access To Offers

Description:

Sellers should quickly access active and historical offers.

---

#### Principle 008

Fast Access To Deals

Description:

Deal management should remain directly accessible from the dashboard.

---

#### Principle 009

Marketplace Awareness

Description:

The dashboard should provide a clear overview of current seller activity.

---

#### Principle 010

Mobile Efficiency

Description:

The dashboard should remain optimized for frequent daily use on mobile devices.

---

### H2 — Request Discovery

#### Principle 001

Relevant Requests First

Description:

The platform should prioritize displaying requests that match seller specializations.

---

#### Principle 002

Specialization-Based Visibility

Description:

Request visibility should consider:

- Vehicle Category
- Brand
- Model
- Part Category

---

#### Principle 003

Matching Transparency

Description:

Sellers should understand why a request appears in their request feed when appropriate.

---

#### Principle 004

Efficient Request Review

Description:

Request information should remain easy to scan and evaluate.

---

#### Principle 005

Summary Before Details

Description:

Request lists should prioritize concise summaries.

Detailed information should remain expandable.

---

#### Principle 006

Request Context Clarity

Description:

Important request information should remain immediately visible.

Examples:

- Vehicle Information
- Requested Parts
- State
- Publication Date

---

#### Principle 007

Image Accessibility

Description:

Attached images should remain easily accessible without overwhelming the interface.

---

#### Principle 008

Fast Offer Creation

Description:

Sellers should be able to begin offer creation directly from the request.

---

#### Principle 009

Visibility Expansion Awareness

Description:

Requests displayed through expanded visibility should remain clearly identified when necessary.

---

#### Principle 010

Marketplace Efficiency

Description:

The request discovery experience should minimize the time required to find relevant opportunities.

---

### H3 — Offer Creation

#### Principle 001

Invoice-Based Offer Design

Description:

Offer creation should follow invoice-style organization.

The objective is clarity, consistency, and rapid comparison.

---

#### Principle 002

Part-Oriented Workflow

Description:

Sellers should build offers item by item.

Each requested part should be evaluated individually.

---

#### Principle 003

Availability Transparency

Description:

Every requested part should clearly indicate whether it is available or unavailable.

---

#### Principle 004

Unavailable Parts Visibility

Description:

Unavailable parts should remain visible inside the offer.

The platform should not hide unavailable items.

---

#### Principle 005

Partial Offer Support

Description:

Sellers may submit partial offers.

Providing some parts is preferable to providing no offer.

---

#### Principle 006

Standardized Item Layout

Description:

Offer items should follow a consistent structure.

Preferred Order:

Part Name | Condition | Price

---

#### Principle 007

Condition Visibility

Description:

Part condition should remain clearly visible.

Examples:

- New
- Used

---

#### Principle 008

Image Gallery Representation

Description:

Part images should appear through a gallery indicator rather than occupying excessive space.

Examples:

- Gallery Icon
- Image Counter

---

#### Principle 009

Delivery Visibility

Description:

Delivery availability should remain visible and easy to understand.

Preferred Format:

Available

Not Available

---

#### Principle 010

Offer Summary Visibility

Description:

The total offer summary should remain easy to review before submission.

---

#### Principle 011

Offer Editing Support

Description:

Active offers may be edited before acceptance.

Examples:

- Prices
- Availability
- Notes

---

#### Principle 012

Accepted Offer Locking

Description:

Accepted offers become permanently locked.

Further modifications are not allowed.

---

#### Principle 013

Negotiation Accessibility

Description:

Sellers should be able to access conversations directly from offers.

---

#### Principle 014

Fast Submission

Description:

Submitting an offer should require minimal effort.

The objective is to encourage participation.

---

#### Principle 015

Mobile-First Workflow

Description:

Offer creation should remain optimized for mobile usage.

### H4 — Negotiation & Chat

#### Principle 001

Transaction-Oriented Communication

Description:

Seller conversations should focus on completing marketplace transactions.

Communication should remain linked to requests, offers, and deals.

---

#### Principle 002

Persistent Request Context

Description:

Request information should remain accessible throughout the conversation.

Sellers should not lose context while negotiating.

---

#### Principle 003

Compact Request Header

Description:

A compact request summary should remain visible at the top of the conversation.

The summary should be expandable within the same screen.

---

#### Principle 004

Offer Context Visibility

Description:

The related offer should remain accessible from the conversation.

Sellers should easily review offer details while negotiating.

---

#### Principle 005

Conversation Continuity

Description:

All negotiation activity related to the same transaction should remain inside a single conversation.

---

#### Principle 006

Unread Message Visibility

Description:

Unread messages should remain clearly distinguishable.

---

#### Principle 007

Attachment Support

Description:

Sellers may exchange images and files when necessary.

Attachments remain part of the conversation history.

---

#### Principle 008

Fast Transition To Deal

Description:

The path from negotiation to deal creation should remain simple and obvious.

---

#### Principle 009

Conversation Preservation

Description:

Conversation history remains accessible after offer acceptance.

---

#### Principle 010

Marketplace Traceability

Description:

Negotiation history should remain available for future reference and dispute review if necessary.

### H5 — Deals

#### Principle 001

Accepted Offer Foundation

Description:

Every seller deal originates from an accepted offer.

The relationship between the offer and deal should remain visible.

---

#### Principle 002

Deal Summary Visibility

Description:

Important deal information should remain immediately accessible.

Examples:

- Deal Number
- Request Number
- Buyer Information
- Vehicle Information

---

#### Principle 003

Compact Invoice Summary

Description:

The deal screen should display a compact invoice summary.

The objective is clarity and fast review.

---

#### Principle 004

Transaction Transparency

Description:

Sellers should clearly understand which parts are included in the transaction.

---

#### Principle 005

Status Visibility

Description:

The current deal status should remain clearly visible.

Examples:

- Active
- Completed
- Cancelled

---

#### Principle 006

Deal Completion Visibility

Description:

Sellers should clearly understand whether a deal is active or completed.

---

#### Principle 007

Platform Neutrality

Description:

The platform facilitates communication between buyers and sellers.

The platform does not guarantee payment, delivery, product quality, or transaction completion.

---

#### Principle 008

Conversation Access

Description:

Deal-related conversations should remain accessible from the deal screen.

---

#### Principle 009

Historical Preservation

Description:

Completed and cancelled deals should remain accessible for future reference.

---

#### Principle 010

Trust-Oriented Presentation

Description:

Deal information should reinforce transparency and marketplace trust.

---

### H6 — Seller Profile

#### Principle 001

Business Identity First

Description:

Seller profiles should represent businesses rather than individuals.

The shop is the primary marketplace identity.

---

#### Principle 002

Trust Information Visibility

Description:

Important trust indicators should remain visible.

Examples:

- Verification Status
- Expert Badges
- Ratings
- Completed Deals

---

#### Principle 003

Marketplace Performance Visibility

Description:

Relevant marketplace performance information should be accessible to buyers.

---

#### Principle 004

Specialization Visibility

Description:

Shop specializations should remain visible.

Examples:

- Vehicle Categories
- Brands
- Models
- Part Categories

---

#### Principle 005

Business Information Clarity

Description:

Important business information should remain easy to access and understand.

---

#### Principle 006

Verification Transparency

Description:

Verified shops should be clearly identified.

---

#### Principle 007

Consistency Across Marketplace

Description:

Seller profile layouts should remain consistent throughout the platform.

---

#### Principle 008

Marketplace-Oriented Design

Description:

Seller profiles should support purchasing decisions rather than social interaction.

---

#### Principle 009

Activity Awareness

Description:

Buyers should understand whether a shop is actively participating in the marketplace.

---

#### Principle 010

Trust Before Promotion

Description:

Trust indicators should always take priority over promotional content.

---

### H7 — Seller Statistics & Performance

#### Principle 001

Marketplace Activity Measurement

Description:

Statistics should reflect actual marketplace activity.

---

#### Principle 002

Operational Statistics First

Description:

The most useful operational metrics should receive priority.

Examples:

- Active Offers
- Pending Offers
- Deals

---

#### Principle 003

Trust Metrics Visibility

Description:

Trust-related metrics should remain visible when appropriate.

Examples:

- Rating Average
- Total Ratings
- Completed Deals

---

#### Principle 004

Expert Badge Independence

Description:

Expert badges should remain independent from ratings.

Badge eligibility should be based on specialization activity.

---

#### Principle 005

Specialization Recognition

Description:

The platform should recognize sellers that consistently serve specific brands, models, or categories.

---

#### Principle 006

Activity-Based Evaluation

Description:

Marketplace activity should contribute to seller performance evaluation.

---

#### Principle 007

Inactivity Awareness

Description:

Long periods of inactivity may affect seller visibility and badge eligibility.

---

#### Principle 008

Fair Representation

Description:

Statistics should reflect actual marketplace performance without artificial adjustments.

---

#### Principle 009

Transparency

Description:

Performance indicators should remain understandable and easy to interpret.

---

#### Principle 010

Marketplace Improvement

Description:

Statistics should help sellers improve participation and service quality.

---

Principle 011

Seller Activity Monitoring

Description:

Long-term seller inactivity may trigger administrative review.

Inactive shops may be classified as inactive and reviewed by administrators.

The objective is maintaining marketplace quality.

---

Principle 012

Expert Badge Eligibility

Description:

Expert badges are awarded based on sustained specialization activity.

Eligibility may consider:

- Specialization consistency
- Marketplace activity
- Completed deals volume
- Brand specialization
- Model specialization
- Part category specialization

Ratings do not affect badge eligibility.

---

## Section I — Marketplace Discovery

### I1 — Shop Discovery

#### Principle 001

Marketplace-Oriented Discovery

Description:

Shop discovery should help buyers find relevant sellers for their needs.

The objective is marketplace efficiency rather than social browsing.

---

#### Principle 002

Trust Information Priority

Description:

Trust indicators should be visible before secondary information.

Examples:

- Verification Status
- Expert Badges
- Rating Average
- Completed Deals

---

#### Principle 003

Specialization Visibility

Description:

Shop specializations should remain clearly visible.

Examples:

- Vehicle Categories
- Brands
- Models
- Part Categories

---

#### Principle 004

Business Identity Priority

Description:

The shop should be presented as the primary marketplace identity.

Personal user information should remain secondary.

---

#### Principle 005

Activity Visibility

Description:

Buyers should understand whether a shop is actively participating in the marketplace.

---

#### Principle 006

Performance Transparency

Description:

Relevant marketplace performance information should remain accessible.

---

#### Principle 007

Consistent Shop Presentation

Description:

All shop listings should follow a consistent structure.

The objective is easier comparison between sellers.

---

#### Principle 008

Mobile-Friendly Browsing

Description:

Shop discovery should remain optimized for mobile devices.

---

#### Principle 009

Quick Access To Shop Profiles

Description:

Buyers should access complete shop information with minimal navigation.

---

#### Principle 010

Trust Before Promotion

Description:

Trust and relevance should take priority over promotional visibility.

---

### I2 — Search Experience

#### Principle 001

Search First Philosophy

Description:

Search should be one of the fastest ways to find marketplace information.

---

#### Principle 002

Terminology Flexibility

Description:

The search system should support both official terminology and marketplace terminology.

Examples:

- Official Part Names
- Aliases
- Local Names

---

#### Principle 003

Error Tolerance

Description:

Search should remain useful even when users enter incomplete or imperfect information.

---

#### Principle 004

Knowledge Registry Integration

Description:

Search should benefit from the Knowledge Registry whenever possible.

---

#### Principle 005

Fast Results

Description:

Search results should appear quickly and prioritize relevance.

---

#### Principle 006

Multi-Entity Search

Description:

Search may return results related to:

- Shops
- Parts
- Brands
- Models

---

#### Principle 007

Clear Result Structure

Description:

Results should remain organized and easy to understand.

---

#### Principle 008

Marketplace Context

Description:

Search results should provide enough information for users to evaluate relevance immediately.

---

#### Principle 009

Mobile Optimization

Description:

Search interactions should remain efficient on mobile devices.

---

#### Principle 010

Future Search Scalability

Description:

The search experience should support future improvements without requiring major redesign.

---

### I3 — Filtering Experience

#### Principle 001

Filter Before Scrolling

Description:

Users should refine results through filters rather than excessive scrolling.

---

#### Principle 002

Marketplace-Relevant Filters

Description:

Filters should focus on information that improves marketplace decisions.

Examples:

- Vehicle Category
- Brand
- Model
- Part Category
- State

---

#### Principle 003

Progressive Filtering

Description:

Users should be able to combine multiple filters gradually.

---

#### Principle 004

Clear Filter Visibility

Description:

Active filters should always remain visible.

Users should immediately understand what criteria are being applied.

---

#### Principle 005

Easy Filter Removal

Description:

Removing filters should require minimal effort.

---

#### Principle 006

Consistent Filtering Logic

Description:

Filtering behavior should remain consistent throughout the platform.

---

#### Principle 007

Result Transparency

Description:

Users should understand how filters affect visible results.

---

#### Principle 008

Mobile-Friendly Filtering

Description:

Filter interfaces should remain optimized for small screens.

---

#### Principle 009

Specialization-Based Filtering

Description:

Marketplace filters should support specialization discovery.

Examples:

- Brand Specialists
- Model Specialists
- Category Specialists

---

#### Principle 010

Efficient Discovery

Description:

The objective of filtering is to help users reach relevant results as quickly as possible.

---

## Section J — Notifications

### Principle 001

Action-Oriented Notifications

Description:

Notifications should help users take meaningful marketplace actions.

The objective is awareness and responsiveness.

---

### Principle 002

Marketplace Relevance

Description:

Only marketplace-relevant events should generate notifications.

Examples:

- New Offer
- New Message
- Deal Created
- Deal Completed
- Request Expired

---

### Principle 003

Direct Navigation

Description:

Notifications should take users directly to the related marketplace entity.

Examples:

- Offer
- Chat
- Deal
- Request

---

### Principle 004

Clear Message Structure

Description:

Notifications should communicate information clearly and concisely.

Users should immediately understand what happened.

---

### Principle 005

Unread Visibility

Description:

Unread notifications should remain clearly distinguishable.

---

### Principle 006

Priority Awareness

Description:

Important marketplace events should receive higher visual priority.

Examples:

- New Offers
- New Messages
- Deal Updates

---

### Principle 007

Notification History

Description:

Users should be able to review past notifications.

Notification history should remain accessible.

---

### Principle 008

Minimal Disruption

Description:

Notifications should inform users without interrupting ongoing workflows.

---

### Principle 009

Consistency

Description:

Notification behavior should remain consistent throughout the application.

---

### Principle 010

Marketplace Efficiency

Description:

Notifications should help users react quickly to marketplace activity.

---

## Section K — Localization

### Principle 001

Multi-Language Support

Description:

The platform should support multiple languages.

Language selection should remain accessible from user settings.

---

### Principle 002

Language Independence

Description:

Changing language should not affect marketplace functionality.

Only interface presentation should change.

---

### Principle 003

Marketplace Terminology Preservation

Description:

Marketplace terminology should remain recognizable across supported languages.

Examples:

- Vehicle Terms
- Part Names
- Common Marketplace Vocabulary

---

### Principle 004

Knowledge Registry Integration

Description:

Localization should work together with the Knowledge Registry.

Both official terminology and local terminology should remain supported.

---

### Principle 005

Consistent Translation

Description:

Equivalent concepts should always use consistent translations.

---

### Principle 006

User Preference Persistence

Description:

The platform should remember the user's preferred language.

---

### Principle 007

Regional Adaptability

Description:

Localization should support future regional expansion.

---

### Principle 008

Mobile-Friendly Localization

Description:

Language changes should remain simple on mobile devices.

---

### Principle 009

Clarity Over Literal Translation

Description:

Marketplace usability should take priority over literal translation accuracy.

---

### Principle 010

Future Scalability

Description:

New languages should be added without requiring interface redesign.

---

## Section L — Mobile UI Standards

### Principle 001

Mobile First Design

Description:

All interfaces should be designed primarily for mobile devices.

Desktop layouts are secondary.

---

### Principle 002

Horizontal Information Preference

Description:

Information should be displayed horizontally whenever practical.

The objective is reducing scrolling and improving visibility.

---

### Principle 003

Minimal Vertical Expansion

Description:

Interfaces should avoid unnecessary vertical growth.

Screen space should be used efficiently.

---

### Principle 004

Invoice Style Organization

Description:

Offers, deals, and transaction information should follow invoice-style layouts.

Information should remain aligned and easy to compare.

---

### Principle 005

Expandable Details

Description:

Secondary information should remain collapsed until requested.

Users should see important information first.

---

### Principle 006

In-Screen Expansion

Description:

Information should expand inside the current screen whenever possible.

Additional pages should be avoided when unnecessary.

---

### Principle 007

Compact Headers

Description:

Requests, offers, and deals should use compact headers.

The objective is preserving screen space.

---

### Principle 008

Image Gallery Standard

Description:

Images should be represented through gallery indicators whenever practical.

Large image blocks should be avoided.

---

### Principle 009

Touch-Friendly Controls

Description:

Interactive elements should remain easy to use on mobile devices.

---

### Principle 010

Local Asset Preference

Description:

The application should prioritize local assets.

Examples:

- Local Icons
- Local SVG Assets
- Local Illustrations

---

### Principle 011

Visual Consistency

Description:

Similar information should always use similar layouts.

---

### Principle 012

Fast Scanning

Description:

Users should be able to evaluate information quickly.

The interface should support rapid decision-making.

---

### Principle 013

Reduced Navigation Depth

Description:

Important actions should require as few navigation steps as possible.

---

### Principle 014

Performance Friendly Design

Description:

Interface decisions should prioritize speed and responsiveness.

---

### Principle 015

Clarity Before Decoration

Description:

Visual clarity should always take priority over decorative elements.

---

## Section M — Empty States & Error Handling

### Principle 001

Helpful Empty States

Description:

Empty screens should explain why no content is available.

---

### Principle 002

Actionable Guidance

Description:

Whenever possible, empty states should suggest a useful next action.

Examples:

- Create Request
- Browse Shops
- Complete Verification

---

### Principle 003

Clear Error Messages

Description:

Errors should explain the problem in understandable language.

---

### Principle 004

Solution-Oriented Feedback

Description:

Error messages should help users resolve problems.

---

### Principle 005

Marketplace Context

Description:

Messages should remain relevant to the current marketplace activity.

---

### Principle 006

Consistency

Description:

Error and empty-state behavior should remain consistent throughout the application.

---

### Principle 007

Non-Technical Language

Description:

Technical implementation details should not be exposed to users.

---

### Principle 008

Preserve User Work

Description:

Errors should not cause unnecessary data loss.

---

### Principle 009

Mobile Readability

Description:

Messages should remain easy to read on mobile devices.

---

### Principle 010

User Confidence

Description:

Feedback should help users understand the situation without creating confusion.

---

## Section N — Future UI Enhancements

### Principle 001

Future Features Should Respect Existing UI Standards

---

### Principle 002

New Features Should Integrate Into Existing Navigation

---

### Principle 003

Future Interfaces Should Preserve Mobile-First Design

---

### Principle 004

Future Enhancements Should Preserve Marketplace Simplicity

---

### Principle 005

Future Features Should Reuse Existing Interaction Patterns

---

### Principle 006

UI Expansion Should Not Increase Unnecessary Complexity

---

### Principle 007

Marketplace Trust Should Remain A Core Design Priority

---

### Principle 008

Future Features Should Minimize Learning Curves For Existing Users

---

### Principle 009

Future Interfaces Should Remain Consistent With Established Design Principles

---

### Principle 010

Long-Term Scalability Should Be Considered Before Major UI Changes
