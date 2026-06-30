# Status: Approved

Version: 1.0

Documentation Quality: Excellent

Ready To Freeze: Yes

# PieceFacile

# Product Decisions

## Section A — Platform Philosophy

### Decision 001

**Platform Purpose**

Status:

Approved

Description:

PieceFacile is a marketplace connecting buyers searching for spare parts with sellers able to provide them.

The platform facilitates discovery, communication, and transactions.

The platform itself does not sell spare parts.

---

### Decision 002

**Buyer Chooses The Offer**

Status:

Approved

Description:

The platform does not automatically choose the best offer.

Buyers compare available offers and make their own purchasing decisions.

---

### Decision 003

**Seller Neutrality**

Status:

Approved

Description:

The platform does not favor:

- New parts sellers
- La Casse sellers
- Specialists

Multiple seller types may receive the same request.

The buyer decides which offer is most suitable.

---

### Decision 004

**Simplicity First**

Status:

Approved

Description:

Product decisions should prioritize simplicity.

Any feature that increases complexity for buyers must provide significant value before being adopted.

The objective is to allow buyers to create requests quickly and easily.

---

### Decision 005

**Algerian Market Adaptation**

Status:

Approved

Description:

The platform is designed primarily for the Algerian spare parts market.

User experience, terminology, classifications, and workflows should reflect local market realities whenever possible.

---

### Decision 006

**Popular Terminology Acceptance**

Status:

Approved

Description:

The platform accepts both technical and commonly used local terminology.

Requests must not be rejected solely because users use popular or non-technical names for spare parts.

Examples include:

- Troviseur
- Joint de glace
- Radiateur
- Démarreur
- Pompe Mazout

---

### Decision 007

**Marketplace Learning**

Status:

Approved

Description:

The platform should continuously improve its understanding of market terminology through accumulated request and offer data.

New terminology requires administrator review before becoming part of the official knowledge dictionary.

---

## Section B — Buyer Experience & UI

### Decision 008

**Buyer Experience Priority**

Status:

Approved

Description:

Buyer experience is the primary design priority of the platform.

Product decisions should favor reducing buyer effort whenever possible.

---

### Decision 009

**Received Offers Page Priority**

Status:

Approved

Description:

The Received Offers page is the highest priority page in the buyer experience.

The platform should guide buyers quickly toward reviewing available offers.

---

### Decision 010

**Active Requests Page Priority**

Status:

Approved

Description:

The Active Requests page is the second most important buyer page.

Buyers should be able to monitor request progress easily.

---

### Decision 011

**Seller Profile Visibility**

Status:

Approved

Description:

Buyers must be able to access seller profiles directly from offers.

Seller profiles should display trust and activity information that helps buyers make informed decisions.

---

### Decision 012

**Simple Navigation**

Status:

Approved

Description:

Navigation should remain simple and predictable.

Buyers should reach important actions with the minimum possible number of steps.

---

### Decision 013

**Information Density**

Status:

Approved

Description:

Important information should be visible without excessive scrolling.

Interfaces should prioritize clarity and quick decision making.

---

### Decision 014

**Offer Comparison Friendly Design**

Status:

Approved

Description:

Offer presentation should help buyers compare competing offers quickly.

Price, availability, condition, seller reputation, and delivery information should remain clearly visible.

---

### Decision 015

**Request Reference Visibility**

Status:

Approved

Description:

Request identifiers must remain visible to buyers when relevant.

Request references help buyers track discussions, offers, notifications, and deals.

---

### Decision 016

**Partial Offer Transparency**

Status:

Approved

Description:

Unavailable parts must remain clearly separated from available parts.

Buyers must immediately understand which requested parts are included in an offer and which are not.

---

### Decision 017

**Mobile First Design**

Status:

Approved

Description:

Buyer interfaces are designed primarily for mobile usage.

Layouts and workflows should remain efficient on small screens.

---

## Section C — Seller Experience & UI

### Decision 018

**Seller Efficiency First**

Status:

Approved

Description:

Seller interfaces should prioritize speed and efficiency.

The objective is to allow sellers to review requests and submit offers with minimal effort.

---

### Decision 019

**Invoice Style Layout**

Status:

Approved

Description:

Offer creation screens should follow an invoice-style layout whenever possible.

Information should be organized in a structured and readable format.

---

### Decision 020

**Horizontal Information Layout**

Status:

Approved

Description:

Information should be displayed horizontally whenever practical.

The objective is to reduce scrolling and improve information density.

---

### Decision 021

**Price Alignment**

Status:

Approved

Description:

Prices must remain visually aligned across offer rows.

Totals should appear directly beneath the price column to improve readability.

---

### Decision 022

**Photo Gallery Icon System**

Status:

Approved

Description:

Part photos should not be displayed directly inside offer rows.

A gallery icon with photo count should be displayed instead.

Photos open only when requested by the seller.

---

### Decision 023

**Compact Delivery Information**

Status:

Approved

Description:

Delivery information should remain compact and easy to understand.

Interfaces should avoid large delivery sections whenever possible.

---

### Decision 024

**Request Summary Bar**

Status:

Approved

Description:

Negotiation screens should display a compact request summary bar.

Detailed request information should remain accessible without leaving the conversation.

---

### Decision 025

**Offer Lock After Acceptance**

Status:

Approved

Description:

Accepted offers become locked.

Sellers can no longer modify, cancel, or negotiate accepted offers after a deal is created.

---

### Decision 026

**Deal Preview Visibility**

Status:

Approved

Description:

Sellers should be able to review a compact deal summary immediately after offer acceptance.

The summary should contain the essential transaction information.

---

### Decision 027

**Specialization Driven Workflow**

Status:

Approved

Description:

Seller workflows should be optimized around their selected specializations.

Relevant requests should be easier to identify and process.

---

### Decision 028

**Mobile First Design**

Status:

Approved

Description:

Seller interfaces are designed primarily for mobile usage.

Layouts and workflows should remain efficient on small screens.

---

## Section D — Request System

### Decision 029

**Single Category Request**

Status:

Approved

Description:

A request belongs to one vehicle category only.

All parts inside the request must belong to the same category.

---

### Decision 030

**Multiple Parts Per Request**

Status:

Approved

Description:

A request may contain multiple:

- Brands
- Models
- Years
- Parts

As long as all items belong to the same vehicle category.

---

### Decision 031

**Single Active Editor**

Status:

Approved

Description:

Only one active part editor is displayed at a time during request creation.

Previously added parts collapse into summary rows.

---

### Decision 032

**Collapsed Part Summary**

Status:

Approved

Description:

Previously added parts are displayed using a compact summary format.

Summary Format:

Part Name | Brand Model Year | Quantity

---

### Decision 033

**Mandatory Request Fields**

Status:

Approved

Description:

The following fields are mandatory:

- Vehicle Category
- Brand
- Model
- Year
- Part Name

Requests cannot be published without completing these fields.

---

### Decision 034

**Optional Request Fields**

Status:

Approved

Description:

The following fields are optional:

- Engine
- Chassis
- Description
- Images

---

### Decision 035

**Part Name Assistance**

Status:

Approved

Description:

The platform should assist buyers with part name suggestions whenever possible.

Suggestions are intended to improve classification and matching quality.

---

### Decision 036

**Unknown Part Acceptance**

Status:

Approved

Description:

Requests are not rejected when the platform cannot confidently identify the requested part.

Matching may rely on:

- Vehicle Category
- Brand
- Model
- Year

until the terminology becomes known.

---

### Decision 037

**Vehicle Recognition Priority**

Status:

Approved

Description:

Recognized vehicle models have priority over manually selected categories.

The platform may automatically correct category classification when a recognized model belongs to another category.

---

### Decision 038

**Request Expiration**

Status:

Approved

Description:

Requests automatically expire after 12 days without successful completion.

Expired requests may be republished.

---

### Decision 039

**Visibility Expansion Suggestion**

Status:

Approved

Description:

When republishing expired requests, the platform may suggest expanding visibility scope.

The suggestion is optional.

The buyer remains free to keep the original visibility scope.

---

### Decision 040

**Request Reference Visibility**

Status:

Approved

Description:

Request identifiers should remain visible throughout the request lifecycle.

Request references help buyers and sellers track offers, negotiations, notifications, and deals.

---

### Decision 041

**Request Validation**

Status:

Approved

Description:

Request validation must occur before publication.

Invalid requests must not create notifications, counters, or marketplace activity.

Validation errors should clearly indicate the missing information.

---

## Section E — Offer System

### Decision 042

**Full And Partial Offers**

Status:

Approved

Description:

Sellers may submit:

- Full Offers
- Partial Offers

Providing all requested parts is not required.

---

### Decision 043

**Partial Offer Acceptance**

Status:

Approved

Description:

Buyers may accept offers even when some requested parts are unavailable.

Offer acceptance does not require full part availability.

---

### Decision 044

**Offer Structure**

Status:

Approved

Description:

Each offered part must include:

- Availability Status
- Condition
- Price

---

### Decision 045

**Condition Values**

Status:

Approved

Description:

Only the following condition values are supported:

- New
- Used

No additional condition values are included in Version 1.

---

### Decision 046

**Unavailable Parts Separation**

Status:

Approved

Description:

Unavailable parts must be displayed separately from available parts.

Buyers should immediately understand which parts are available and which are not.

---

### Decision 047

**Offer Acceptance Creates Deal**

Status:

Approved

Description:

Accepting an offer immediately creates a deal.

The accepted offer becomes part of the deal lifecycle.

---

### Decision 048

**Competing Offer Closure**

Status:

Approved

Description:

When an offer is accepted:

All competing offers for the same request become closed.

Competing offers remain closed even if the resulting deal is later cancelled.

---

### Decision 049

**Offer Lock After Acceptance**

Status:

Approved

Description:

Accepted offers become locked.

Sellers can no longer:

- Edit
- Cancel
- Modify
- Continue negotiations

after deal creation.

---

### Decision 050

**Offer Cancellation Before Acceptance**

Status:

Approved

Description:

Sellers may cancel offers before acceptance.

Cancellation requires a reason.

Accepted offers cannot be cancelled directly because they become deals.

---

### Decision 051

**Missing Parts Re-Request**

Status:

Future Feature

Description:

After accepting a partial offer, the platform may propose creating a new request draft containing only unavailable parts.

---

### Decision 052

**Existing Offer Check Before Re-Request**

Status:

Approved

Description:

Before creating a new request from unavailable parts, the platform should verify whether existing offers already cover those parts.

Buyers should be encouraged to review existing offers before publishing a new request.

---

### Decision 053

**Offer Transparency**

Status:

Approved

Description:

Offer presentation should prioritize transparency.

Price, condition, availability, seller information, and delivery information must remain visible to buyers.

---

### Decision 054

**Offer Reference Visibility**

Status:

Approved

Description:

Offer identifiers should remain visible when relevant.

Offer references help track negotiations, notifications, and deals.

---

## Section F — Negotiation & Messaging

### Decision 055

**Messaging Availability**

Status:

Approved

Description:

Messaging becomes available after a seller submits an offer.

Communication is not available before an offer exists.

---

### Decision 056

**Request Linked Conversations**

Status:

Approved

Description:

Every conversation remains linked to its original request.

Buyers and sellers should always know which request is being discussed.

---

### Decision 057

**Offer Linked Conversations**

Status:

Approved

Description:

Conversations remain associated with the related offer whenever applicable.

This helps preserve negotiation context.

---

### Decision 058

**Compact Request Summary Bar**

Status:

Approved

Description:

Negotiation screens should display a compact request summary bar.

Users may expand the summary to view additional request details without leaving the conversation.

---

### Decision 059

**Conversation Context Preservation**

Status:

Approved

Description:

Important request and offer information should remain accessible during negotiations.

Users should not be required to navigate away from the conversation to review essential details.

---

### Decision 060

**Unread Message Indicators**

Status:

Approved

Description:

Unread message counters and indicators should remain visible until messages are reviewed.

The objective is to reduce missed communications.

---

### Decision 061

**Direct Buyer Seller Communication**

Status:

Approved

Description:

Negotiations occur directly between buyers and sellers.

The platform does not participate in negotiation decisions.

---

### Decision 062

**Offer Discussion Support**

Status:

Approved

Description:

The messaging system supports discussion of:

- Price
- Availability
- Delivery
- Part Details

while maintaining reference to the original offer.

---

### Decision 063

**Negotiation History Preservation**

Status:

Approved

Description:

Conversation history should remain available to participants.

The objective is to preserve negotiation transparency and context.

---

### Decision 064

**Communication Transparency**

Status:

Approved

Description:

Buyers and sellers should have equal access to conversation history.

Neither party should see different versions of the same discussion.

---

### Decision 065

**Marketplace Communication Only**

Status:

Approved

Description:

The platform encourages negotiations to remain inside PieceFacile.

Internal communication improves transparency and transaction traceability.

---

### Decision 066

**Notification Driven Communication**

Status:

Approved

Description:

New messages should generate notifications for the receiving party.

Unread message indicators should remain synchronized with messaging activity.

---

## Section G — Deal System

### Decision 067

**Deal Creation**

Status:

Approved

Description:

A deal is created immediately after a buyer accepts an offer.

Each accepted offer creates one deal.

---

### Decision 068

**Single Accepted Offer Per Request**

Status:

Approved

Description:

A request may create only one accepted offer.

Once an offer is accepted, no other offer can be accepted for the same request.

---

### Decision 069

**Deal Status Values**

Status:

Approved

Description:

Version 1 supports the following deal statuses:

- Active
- Completed
- Cancelled

---

### Decision 070

**Deal Cancellation Window**

Status:

Approved

Description:

Buyers and sellers may cancel an active deal during the first 8 days after deal creation.

Cancellation requires a reason.

---

### Decision 071

**Automatic Deal Completion**

Status:

Approved

Description:

After 8 days, deal cancellation becomes unavailable.

The deal is automatically considered completed.

---

### Decision 072

**Immediate Rating Availability**

Status:

Approved

Description:

Ratings become available immediately after deal creation.

Users do not need to wait for deal completion before submitting ratings.

---

### Decision 073

**Deal Completion By Buyer Confirmation**

Status:

Approved

Description:

The buyer may explicitly confirm successful completion of the transaction.

Buyer confirmation immediately completes the deal.

---

### Decision 074

**Deal Reopening Restriction**

Status:

Approved

Description:

Completed deals cannot be reopened.

Cancelled deals cannot be reactivated.

A new request must be created if additional parts are needed.

---

### Decision 075

**Deal Statistics Policy**

Status:

Approved

Description:

Completed deals contribute to seller statistics.

Cancelled deals do not contribute to completed deal counts.

---

### Decision 076

**Deal Transparency**

Status:

Approved

Description:

Deal information should remain accessible to both parties.

Both participants should have access to the same transaction details.

---

### Decision 077

**Accepted Offer Integration**

Status:

Approved

Description:

Once a deal is created, the accepted offer becomes part of the deal lifecycle.

The accepted offer is no longer treated as an independent active offer.

---

### Decision 078

**Request Conversion To Deal**

Status:

Approved

Description:

When a deal is created, the original request is converted into a deal lifecycle.

The original request becomes read-only.

The request can no longer receive offer acceptances.

---

### Decision 079

**Cancellation Reason Collection**

Status:

Approved

Description:

Deal cancellations require structured reasons.

If "Other" is selected, additional explanation becomes mandatory.

Cancellation information should remain available for administrative review.

---

### Decision 080

**Request Restoration After Deal Cancellation**

Status:

Approved

Description:

If a deal is cancelled during the cancellation window, the original request may return to an active state.

Previously closed competing offers remain closed.

Sellers may submit new offers if appropriate.

---

## Section H — Trust & Reputation

### Decision 081

**Rating System**

Status:

Approved

Description:

The platform includes a rating system to help buyers evaluate sellers based on previous transactions.

Ratings contribute to seller reputation.

---

### Decision 082

**One Rating Per Deal**

Status:

Approved

Description:

Each participant may submit only one rating per deal.

Multiple ratings for the same deal are not allowed.

---

### Decision 083

**Rating Finalization**

Status:

Approved

Description:

Ratings become permanently locked immediately after submission.

Ratings cannot be edited, replaced, or removed by the submitting user.

Before submitting a rating, the platform should encourage users to wait until they receive and inspect the purchased parts.

---

### Decision 084

**Transaction Based Ratings**

Status:

Approved

Description:

Ratings are only available for users who participated in a deal.

The platform does not allow ratings without transaction history.

---

### Decision 085

**Verified Shop Badge**

Status:

Approved

Description:

Verified Shop status is granted through administrative verification.

Verification confirms the authenticity of the seller's business identity.

---

### Decision 086

**Expert Badge System**

Status:

Approved

Description:

Expert badges recognize seller expertise and marketplace specialization.

Expert badges indicate strong marketplace activity within a specific brand or specialization.

Expert badges are earned and cannot be selected manually.

---

### Decision 087

**Specialization And Expert Badge Independence**

Status:

Approved

Description:

Seller specializations and Expert Badges are independent systems.

Specializations are selected by sellers.

Expert Badges are earned through marketplace activity within a specific specialization.

---

### Decision 088

**Brand Expert Recognition**

Status:

Approved

Description:

The platform may award brand-specific expert badges.

Examples:

- Toyota Expert
- Renault Expert
- Peugeot Expert

Expert badges are based on marketplace activity within a specific brand or specialization.

Eligibility may consider:

- Number of successful deals
- Activity consistency
- Specialization focus
- Marketplace participation

Expert badges are intended to indicate strong availability and expertise within a specific market segment.

Expert badges are independent from ratings and seller reviews.

---

### Decision 089

**Expert Badge Visibility**

Status:

Approved

Description:

Expert badges remain visible while the seller maintains marketplace activity.

Sellers who remain inactive for an extended period may temporarily lose badge visibility.

Badge visibility may return automatically when marketplace activity resumes.

---

### Decision 090

**Trust Information Visibility**

Status:

Approved

Description:

Buyers should have access to relevant trust information when reviewing offers.

Examples include:

- Ratings
- Verified Shop Status
- Expert Badges
- Completed Deals

---

### Decision 091

**Trust Transparency**

Status:

Approved

Description:

Trust indicators should help buyers make informed decisions.

The platform should present trust information clearly without automatically promoting specific sellers.

---

## Section I — Vehicle Classification

### Decision 092

**Vehicle Classification Registry**

Status:

Approved

Description:

The platform maintains a structured vehicle classification system.

All requests must belong to a recognized vehicle category.

---

### Decision 093

**Vehicle Recognition Priority**

Status:

Approved

Description:

Recognized vehicle models have priority over manually selected categories.

The platform may automatically correct vehicle classification when confidence is high.

---

### Decision 094

**Classification Accuracy First**

Status:

Approved

Description:

Vehicle classification should prioritize matching accuracy over manual user input.

The objective is to improve request visibility and seller targeting.

---

### Decision 095

**Supported Vehicle Categories**

Status:

Approved

Description:

Version 1 supports multiple vehicle categories.

Examples include:

- Passenger Cars
- Pickup Trucks
- Heavy Trucks
- Motorcycles
- Agricultural Machinery
- Construction Equipment

Additional categories may be introduced in future versions.

---

### Decision 096

**Pickup Truck Classification**

Status:

Approved

Description:

Pickup Trucks represent a dedicated category.

Popular Algerian terminology such as:

- Camion Bâché
- كاميو باشي

may be recognized by the platform when applicable.

---

### Decision 097

**Model Recognition Assistance**

Status:

Approved

Description:

Vehicle model recognition may assist users during request creation.

Recognized models improve classification quality and marketplace matching.

---

### Decision 098

**Classification Correction Transparency**

Status:

Approved

Description:

When the platform automatically adjusts vehicle classification, the correction should remain understandable to users.

The objective is to improve accuracy without creating confusion.

---

### Decision 099

**Future Classification Expansion**

Status:

Future Feature

Description:

The vehicle classification registry may expand over time as new categories and vehicle types become relevant to the marketplace.

---

## Section J — Matching & Visibility

### Decision 100

**Matching Engine Authority**

Status:

Approved

Description:

The Matching Engine is responsible for determining final request visibility.

Visibility decisions are based on platform matching rules and seller eligibility.

---

### Decision 101

**Maximum Relevant Visibility**

Status:

Approved

Description:

The platform aims to maximize relevant request visibility.

Eligible sellers should receive opportunities to submit offers whenever possible.

---

### Decision 102

**Buyer Choice Principle**

Status:

Approved

Description:

The platform does not select winning sellers.

Multiple eligible sellers may receive the same request.

The buyer decides which offer is most suitable.

---

### Decision 103

**Visibility Factors**

Status:

Approved

Description:

Request visibility may depend on:

- Vehicle Category
- Brand
- Part Category
- Seller Type
- Geographic Scope
- Seller Specialization

---

### Decision 104

**Specialization Based Visibility**

Status:

Approved

Description:

Seller specializations may increase visibility relevance.

The objective is to connect requests with sellers most likely to provide suitable parts.

---

### Decision 105

**Passenger Car Matching Priority**

Status:

Approved

Description:

Passenger Cars use the most detailed matching logic.

Matching may consider:

- Brand
- Part Category
- Seller Specialization

to improve request quality and relevance.

---

### Decision 106

**Simplified Matching For Other Categories**

Status:

Approved

Description:

Categories other than Passenger Cars may use broader matching rules.

The objective is to maximize request exposure where specialization is less important.

---

### Decision 107

**La Casse Visibility Model**

Status:

Approved

Description:

La Casse sellers mainly provide used parts.

Requests may be visible simultaneously to La Casse sellers and traditional spare parts shops.

La Casse visibility is not restricted by brand specialization.

Visibility is primarily determined by vehicle category and geographic scope.

---

### Decision 108

**Specialization Change Effect**

Status:

Approved

Description:

Changes to seller specializations affect future request visibility.

Previously received requests are not modified retroactively.

---

### Decision 109

**Visibility Scope Expansion**

Status:

Approved

Description:

When request visibility produces limited results, the platform may suggest expanding geographic scope.

Visibility expansion remains optional.

The buyer remains free to keep the original visibility scope.

---

### Decision 110

**Rare Parts Visibility**

Status:

Approved

Description:

Rare parts may receive wider visibility and priority matching.

The objective is to improve the chances of finding difficult-to-source parts.

---

### Decision 111

**Future Matching Improvements**

Status:

Future Feature

Description:

The Matching Engine may evolve over time using marketplace activity, seller performance, and accumulated knowledge data to improve visibility decisions.

---

## Section K — Seller Onboarding & Specialization

### Decision 112

**Seller Types**

Status:

Approved

Description:

Version 1 supports multiple seller types.

Examples include:

- Spare Parts Shops
- La Casse Sellers

Additional seller types may be introduced in future versions.

---

### Decision 113

**Seller Onboarding Simplicity**

Status:

Approved

Description:

Seller onboarding should remain simple and accessible.

The platform should minimize unnecessary setup complexity.

---

### Decision 114

**Optional Specialization Selection**

Status:

Approved

Description:

Sellers may operate without selecting specializations.

Specializations improve matching quality but are not mandatory.

---

### Decision 115

**Brand Specialization**

Status:

Approved

Description:

Sellers may select one or more vehicle brands as specializations.

Selected brands may improve request relevance and visibility.

---

### Decision 116

**Part Category Specialization**

Status:

Approved

Description:

Sellers may specialize in specific part categories.

Examples include:

- Gearboxes
- Engines
- Mirrors
- Windshields

Part category specialization may improve matching quality.

---

### Decision 117

**Passenger Car Specialization Model**

Status:

Approved

Description:

Passenger Cars use the most detailed specialization system.

Matching may consider:

- Vehicle Brand
- Part Category

to improve request relevance.

---

### Decision 118

**Broad Specialization For Other Categories**

Status:

Approved

Description:

Vehicle categories other than Passenger Cars may use broader specialization models.

The objective is to maximize seller participation and request visibility.

---

### Decision 119

**La Casse Participation Model**

Status:

Approved

Description:

La Casse sellers may receive requests across multiple brands.

Their visibility is not limited by brand specialization.

The objective is to reflect real marketplace behavior.

---

### Decision 120

**Future Visibility After Specialization Changes**

Status:

Approved

Description:

Specialization changes affect future request visibility.

Previously received requests are not modified retroactively.

---

### Decision 121

**Expert Badge Eligibility**

Status:

Approved

Description:

Marketplace specialization activity may contribute to expert badge eligibility.

Specialization selection alone does not grant expert status.

---

### Decision 122

**Specialization Independence**

Status:

Approved

Description:

Seller specializations and expert badges are independent systems.

A seller may be specialized without holding an expert badge.

A seller may earn expert recognition through marketplace activity within a specific specialization.

---

## Section L — Knowledge System

### Decision 123

**Marketplace Knowledge Registry**

Status:

Approved

Description:

The platform maintains a knowledge registry to improve spare part recognition, classification, and matching quality.

The registry evolves over time as marketplace knowledge grows.

---

### Decision 124

**Local Terminology Acceptance**

Status:

Approved

Description:

The knowledge system accepts both technical terminology and commonly used market terminology.

Users are not required to know official spare part names.

---

### Decision 125

**Marketplace Learning Sources**

Status:

Approved

Description:

Knowledge entries may originate from:

- Buyer Requests
- Seller Offers
- Administrator Contributions

The objective is to reflect real marketplace terminology.

---

### Decision 126

**Administrator Validation**

Status:

Approved

Description:

New terminology is not added automatically.

All new terms require administrator review before becoming part of the official knowledge registry.

---

### Decision 127

**Terminology Relationships**

Status:

Approved

Description:

The platform may associate multiple names with the same spare part.

Examples include:

- Troviseur ↔ Mirror
- Radiateur ↔ Radiator
- Joint de glace ↔ Windshield Seal

The objective is to improve matching and search quality.

---

### Decision 128

**Recognition Assistance**

Status:

Approved

Description:

The knowledge system may assist buyers during request creation by suggesting recognized terminology.

Suggestions are intended to improve classification accuracy.

---

### Decision 129

**Unknown Term Handling**

Status:

Approved

Description:

Requests are not rejected when a part name is unknown.

The platform may rely on vehicle information and other available data until the terminology becomes recognized.

---

### Decision 130

**Knowledge Expansion**

Status:

Approved

Description:

The knowledge registry may expand continuously as new terminology appears in marketplace activity.

The objective is to improve recognition quality over time.

---

### Decision 131

**Rare Parts Registry**

Status:

Approved

Description:

The platform may maintain a registry of rare and difficult-to-source spare parts.

Rare parts may receive special visibility treatment.

---

### Decision 132

**Rare Part Classification**

Status:

Approved

Description:

Rare part classification is determined by administrators.

Classification criteria may evolve as marketplace data grows.

---

## Section M — Localization

### Decision 133

**Supported Languages**

Status:

Approved

Description:

Version 1 supports:

- Arabic
- French

Additional languages may be introduced in future versions.

---

### Decision 134

**Unified Localization System**

Status:

Approved

Description:

The platform uses a unified localization system across all interfaces.

Buyer, Seller, and Administration interfaces should follow the same translation architecture.

---

### Decision 135

**Interface Translation**

Status:

Approved

Description:

User interface elements should be translated according to the selected language.

Examples include:

- Buttons
- Labels
- Menus
- Notifications
- Validation Messages

---

### Decision 136

**Non-Translatable Marketplace Data**

Status:

Approved

Description:

Certain marketplace data should remain unchanged regardless of language.

Examples include:

- Spare Part Names
- User Descriptions
- Shop Names
- Personal Names
- Vehicle Brands
- Request References
- Deal References

---

### Decision 137

**Business Data Preservation**

Status:

Approved

Description:

Localization must never modify business data.

Translation affects presentation only.

Original marketplace information remains unchanged.

---

### Decision 138

**Value And Label Separation**

Status:

Approved

Description:

System values and displayed labels must remain independent.

Internal platform logic should rely on fixed values rather than translated text.

The objective is to prevent localization from affecting platform behavior.

---

### Decision 139

**Dynamic Content Localization**

Status:

Approved

Description:

Dynamically generated interface content should support localization.

The objective is to provide a consistent multilingual experience.

---

### Decision 140

**Marketplace Terminology Preservation**

Status:

Approved

Description:

Common marketplace terminology may remain visible when it improves user understanding.

The objective is to reflect real market language rather than strict technical translation.

---

### Decision 141

**Localization Consistency**

Status:

Approved

Description:

Equivalent actions should use consistent terminology throughout the platform.

The same action should not appear under different translated labels in different screens.

---

### Decision 142

**Future Language Expansion**

Status:

Future Feature

Description:

Additional languages may be supported as the marketplace expands into new regions.

---

## Section N — Notifications

### Decision 143

**Notification Purpose**

Status:

Approved

Description:

Notifications exist to inform users about important marketplace events requiring attention or action.

---

### Decision 144

**Role Based Notifications**

Status:

Approved

Description:

Notifications are delivered only to relevant users.

Buyers, sellers, and administrators receive notifications related to their own activities.

---

### Decision 145

**New Offer Notification**

Status:

Approved

Description:

Buyers should receive notifications when new offers are submitted for their requests.

The objective is to encourage timely offer review.

---

### Decision 146

**Price Reduction Priority**

Status:

Approved

Description:

Price reduction notifications have elevated priority.

The objective is to help buyers identify improved offers quickly.

---

### Decision 147

**New Message Notification**

Status:

Approved

Description:

Users should receive notifications when new unread messages are received.

Unread indicators should remain visible until messages are reviewed.

---

### Decision 148

**Deal Creation Notification**

Status:

Approved

Description:

Buyers and sellers should be notified when a deal is created.

The notification should clearly identify the related request and offer.

---

### Decision 149

**Deal Completion Notification**

Status:

Approved

Description:

Participants should receive notifications when a deal becomes completed.

The notification may encourage rating submission when applicable.

---

### Decision 150

**Deal Cancellation Notification**

Status:

Approved

Description:

Participants should receive notifications when a deal is cancelled.

Cancellation notifications should clearly identify the affected transaction.

---

### Decision 151

**Request Lifecycle Notifications**

Status:

Approved

Description:

The platform may notify users about important request lifecycle events.

Examples include:

- Request Expiration
- Request Republishing
- Visibility Expansion Suggestions

---

### Decision 152

**Notification Read Status**

Status:

Approved

Description:

Notifications support read and unread states.

Unread notifications remain highlighted until reviewed by the user.

---

### Decision 153

**Notification Transparency**

Status:

Approved

Description:

Notifications should clearly explain what happened and what action, if any, is required.

The objective is to reduce confusion and unnecessary navigation.

---

### Decision 154

**Future Notification Expansion**

Status:

Future Feature

Description:

Additional notification types may be introduced as new marketplace features become available.

---

## Section O — Administration & Moderation

### Decision 155

**Administrative Neutrality**

Status:

Approved

Description:

Administrators manage marketplace operations but do not participate in buyer or seller decisions.

Administrators do not select winning offers or influence transactions.

---

### Decision 156

**Manual Report Review**

Status:

Approved

Description:

All reports are reviewed by administrators.

Administrative action requires review and verification.

Reports do not automatically trigger penalties.

---

### Decision 157

**Report Submission Eligibility**

Status:

Approved

Description:

Reports may be submitted by buyers or sellers.

Reports are intended to protect marketplace quality and trust.

---

### Decision 158

**Investigation Threshold**

Status:

Approved

Description:

Accumulated reports may trigger administrative investigation.

A seller reaching ten reports should be reviewed by administrators.

Final decisions remain subject to manual review.

---

### Decision 159

**Verification Authority**

Status:

Approved

Description:

Only administrators may grant or revoke Verified Shop status.

Verification decisions are based on platform verification procedures.

---

### Decision 160

**Knowledge Registry Authority**

Status:

Approved

Description:

Administrators are responsible for validating new terminology before it becomes part of the official knowledge registry.

---

### Decision 161

**Rare Parts Registry Authority**

Status:

Approved

Description:

Administrators are responsible for maintaining the rare parts registry.

Classification rules may evolve as marketplace knowledge expands.

---

### Decision 162

**Marketplace Data Integrity**

Status:

Approved

Description:

Administrators are responsible for protecting marketplace data quality and consistency.

Administrative actions should prioritize accuracy and fairness.

---

### Decision 163

**Account Restriction Authority**

Status:

Approved

Description:

Administrators may restrict accounts when marketplace rules are violated.

Restrictions should follow administrative review procedures.

---

### Decision 164

**Auditability**

Status:

Approved

Description:

Important administrative actions should remain traceable.

The objective is to improve transparency and accountability.

---

### Decision 165

**Future Administrative Tools**

Status:

Future Feature

Description:

Additional moderation and administration tools may be introduced as marketplace activity grows.

---

## Section P — Marketplace Structure

### Decision 166

**Marketplace Model**

Status:

Approved

Description:

PieceFacile operates as a marketplace connecting buyers and sellers.

The platform facilitates discovery, communication, and transactions but does not sell spare parts directly.

---

### Decision 167

**Multi-Seller Marketplace**

Status:

Approved

Description:

Multiple sellers may compete for the same request.

The platform encourages competition and buyer choice.

---

### Decision 168

**Buyer Freedom Of Choice**

Status:

Approved

Description:

Buyers remain free to choose any offer they consider most suitable.

The platform does not automatically prioritize specific sellers.

---

### Decision 169

**Seller Diversity**

Status:

Approved

Description:

The marketplace supports multiple seller profiles.

Examples include:

- Spare Parts Shops
- La Casse Sellers
- Specialized Sellers

The objective is to maximize part availability.

---

### Decision 170

**New And Used Parts Coexistence**

Status:

Approved

Description:

The marketplace supports both new and used spare parts.

Buyers may receive offers from sellers operating under different business models.

---

### Decision 171

**La Casse Integration**

Status:

Approved

Description:

La Casse sellers are considered a core marketplace participant.

Their business model reflects an important segment of the Algerian spare parts market.

---

### Decision 172

**Marketplace Accessibility**

Status:

Approved

Description:

The platform should remain accessible to users with varying technical knowledge.

Workflows should remain understandable for both experienced and inexperienced users.

---

### Decision 173

**Real Market Terminology**

Status:

Approved

Description:

Marketplace terminology should reflect language commonly used by Algerian buyers and sellers.

User understanding has priority over strict technical wording.

---

### Decision 174

**Marketplace Growth Strategy**

Status:

Approved

Description:

Product decisions should prioritize sustainable marketplace growth.

The objective is to increase successful matches between buyers and sellers.

---

### Decision 175

**Marketplace Flexibility**

Status:

Approved

Description:

The marketplace structure should remain flexible enough to support future seller types, vehicle categories, and business models.

---

### Decision 176

**Marketplace Data Driven Evolution**

Status:

Approved

Description:

Future marketplace improvements should be guided by real marketplace activity and user behavior whenever possible.

---

## Section Q — Future Features

### Decision 177

**Future Feature Policy**

Status:

Approved

Description:

Future features should only be adopted when they provide clear value without introducing unnecessary complexity.

---

### Decision 178

**Unavailable Parts Re-Request**

Status:

Future Feature

Description:

After accepting a partial offer, the platform may generate a new request draft containing only unavailable parts.

The buyer may publish the new request with minimal effort.

---

### Decision 179

**Import Service**

Status:

Future Feature

Description:

The platform may support sourcing spare parts through import channels when local availability is limited.

Import Services are considered a separate marketplace service and not a standard seller type.

This feature is outside the scope of Version 1.

---

### Decision 180

**Advanced Matching Engine**

Status:

Future Feature

Description:

The Matching Engine may evolve using marketplace activity, terminology knowledge, and seller activity data

---

### Decision 181

**Knowledge Assisted Classification**

Status:

Future Feature

Description:

The knowledge system may automatically assist classification, terminology recognition, and request quality improvement.

---

### Decision 182

**Rare Parts Services**

Status:

Future Feature

Description:

Additional services may be introduced to improve discovery and sourcing of rare spare parts.

---

### Decision 183

**Expanded Marketplace Services**

Status:

Future Feature

Description:

Additional marketplace services may be introduced as the platform grows and new business opportunities emerge.

---

### Decision 184

**Future International Expansion**

Status:

Future Feature

Description:

The platform architecture should remain compatible with future expansion beyond the Algerian market if required.

---

### Decision 185

**Continuous Product Evolution**

Status:

Approved

Description:

Product decisions may evolve based on marketplace experience, user feedback, and operational insights.

Future improvements should remain consistent with the platform philosophy and core business objectives.
