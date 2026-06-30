# 02_DATABASE_ARCHITECTURE.md

Status: Approved
Version: 1.0
Last Updated: 2026-06-17

# PieceFacile

# Database Architecture

## Section A — Database Principles

### Principle 001

**Single Source Of Truth**

Description:

Each piece of information should be stored in one primary location only.

Data duplication should be minimized whenever possible.

---

### Principle 002

**Reference Before Duplication**

Description:

Tables should be linked using identifiers rather than repeating the same information across multiple tables.

The objective is to improve consistency and maintainability.

---

### Principle 003

**Scalability First**

Description:

Database design should support future expansion without requiring major structural changes.

Future vehicle categories, seller types, and marketplace services should be accommodated whenever possible.

---

### Principle 004

**Business Rules In Database Structure**

Description:

Database relationships should reflect marketplace business rules.

The database must help enforce platform logic rather than relying entirely on application code.

---

### Principle 005

**Readability And Simplicity**

Description:

Table structures should remain understandable and maintainable.

Unnecessary complexity should be avoided.

---

### Principle 006

**Auditability**

Description:

Important business events should remain traceable.

The objective is to support transparency, troubleshooting, and administrative review.

---

### Principle 007

**Extensibility**

Description:

The database should allow future features to be added without redesigning existing core tables.

---

### Principle 008

**Marketplace Oriented Design**

Description:

Database design should prioritize marketplace operations.

The structure must support buyers, sellers, requests, offers, negotiations, and deals efficiently.

---

### Principle 009

**Separation Of Operational And Reference Data**

Description:

Operational data and reference data should remain separated.

Examples:

Operational Data:

- Requests
- Offers
- Deals
- Messages

Reference Data:

- Vehicle Brands
- Vehicle Models
- Knowledge Dictionary
- Part Categories

---

### Principle 010

**Soft Deletion Preference**

Description:

Important business records should generally remain preserved.

Where appropriate, records should be deactivated or archived rather than permanently deleted.

---

## Section B — Users & Authentication

### Table: Users

Purpose:

Stores all platform users.

Every user can create requests and operate as a buyer.

Seller capabilities become available after shop creation.

---

Fields

id

full_name

phone

auth_provider

email

avatar_id

language

state

is_admin

is_active

profile_completed_at

created_at

updated_at

last_login

---

Rules

- One record per platform user.
- Phone numbers must be unique when provided.
- Email addresses must be unique when provided.
* Email address is required.
* Phone number is optional.
- Every user can act as a buyer.
- Seller status is determined through shop ownership.
- Administrative privileges are controlled through is_admin.
Users may authenticate using:
- Google Login
- Email and Password
* Marketplace participation requires a completed profile.
* Phone number is required before creating a shop.
* Real names are not required.
* Display names may be used.

---

### Table: User_Sessions

Purpose:

Stores authentication sessions.

---

Fields

id

user_id

device_info

ip_address

created_at

expires_at

last_activity_at

---

Rules

- Sessions may be revoked.
- Expired sessions are ignored by the platform.
  
---

### Table: User_Settings

Purpose:

Stores user preferences.

---

Fields

id

user_id

language

notification_enabled

created_at

updated_at

---

Rules

- User preferences remain separated from authentication data.
- Additional settings may be added in future versions.

---

## Section C — Shops & Seller Profiles

### Table: Shops

Purpose:

Stores seller businesses.

A shop may participate in the marketplace immediately after creation.

Verification is optional and provides additional trust indicators.

---

Fields

id

owner_user_id

shop_name

shop_slug

shop_image_id

description

phone_number

phone_verified_at

whatsapp_number

telegram_username

facebook_page_url

working_hours

latitude

longitude

state

commercial_register_number

commercial_register_verified_at

verification_status

last_activity_at

created_at

updated_at

verification_approved_at

closed_at

---

Verification Status Values

not_verified

pending_verification

verified

---

Rules

- A shop belongs to one user.
- A user may own one shop in Version 1.
- A shop may submit offers immediately after creation.
- Shop verification is optional but recommended.
- Verified shops receive a verification badge.
- Non-verified shops remain fully operational.
- Shops suspended by administrative action cannot participate in marketplace activity.
- Shop contact channels are optional except the primary phone number.
- Shop closure does not remove historical administrative records.
* Shop names should be unique whenever possible.
* Administrative review may be required for conflicting shop names.
* Closed shops may be reopened by administrative action.
* Historical records remain preserved after reopening.
* Commercial Register numbers must be unique.
* Commercial Register information remains permanently stored.
* Previously suspended commercial registers may be flagged during future shop registrations.
* A valid phone number is required before shop creation.
* Shop image should represent the real business whenever possible.
* Shop images improve buyer trust.
* Administrative review may remove misleading shop images.
* Shop profile images should clearly represent the business, storefront, logo, or physical shop.
* Shop slugs must be unique.
* Shop slugs may be generated automatically from shop names.
* Working hours are optional.
* The platform may calculate shop availability based on configured working hours.

---

Contact Channels

* phone (required)
* whatsapp_number (optional)
* telegram_username (optional)
* facebook_page_url (optional)

---

Verification Rules

* Verified shops display a verification badge.
* Non-verified shops remain fully operational.
* Verification improves marketplace visibility.
* Shop verification is optional.

---

Version 1 Limitation

* One user may own only one shop.
* Multiple shops per account are not supported in Version 1.

  ---

Location Rules

* Shops may define a fixed geographic location.
* Location is used for distance calculation.
* Location does not replace state-based filtering.
* Geographic coordinates may be updated by the shop owner.
* Exact coordinates are not displayed publicly.
* Distance calculations may be shown without exposing exact locations.
  
  ---

### Table: Shop_Documents

Purpose:

Stores shop verification documents.

------

Fields

id

shop_id

document_type

file_url

created_at

---

Document Type Values

commercial_register

storefront_photo

shop_logo

---

Rules

* Documents are required only when requesting shop verification.
* Verification remains optional.
* Additional document types may be added in future versions.
* Storefront photos may be reused as shop profile images after approval.
  
---

### Table: Shop_Specializations

Purpose:

Stores seller specializations.

---

Fields

id

shop_id

specialization_type

vehicle_category_id

vehicle_brand_id

created_at

---

Specialization Type Values

all_parts

mechanical_parts

electrical_parts

body_parts

glass

batteries

tires

oils_and_fluids

accessories

---

Rules

* Shops may select multiple specializations.
* Specializations improve matching quality.
* Vehicle category may be set to all categories.
* Brand may be set to all brands.
* Changes affect future visibility only.
* At least one specialization is required for marketplace participation.
  
---

Matching Priority

1. Specialization Type
2. Vehicle Category
3. Brand
4. Wilaya

---

### Table: Shop_Verification_Reviews

Purpose:

Stores administrative verification decisions.

---

Fields

id

shop_id

admin_user_id

decision

notes

created_at

---

Decision Values

approved

rejected

---

Rules

- Verification decisions must remain traceable.
- Administrative notes are preserved for future review.
* Only shops with required verification documents may enter review.
  
---

### Table: Shop_Profile_Change_History

Purpose:

Stores important shop profile modifications.

---

Fields

id

shop_id

changed_field

old_value

new_value

changed_at

approved_by_admin_id

---

Rules

* Shop name changes remain traceable.
* Commercial register changes remain traceable.
* Important profile modifications may require administrative approval.
* Historical records should never be deleted.
  
---

### Shop Activity Rules

- Marketplace activity is measured using real platform usage.
- Activity examples include:
  - Submitting offers
  - Sending messages
  - Managing deals

- Shops inactive for more than 90 days may be flagged as inactive.

- The platform should notify administrators when prolonged inactivity is detected.

- Administrators may:
  - Contact the shop
  - Keep the shop active
  - Suspend the shop if necessary
    
---

## Section D — Vehicle Registry

### Table: Vehicle_Categories

Purpose:

Stores supported vehicle categories.

---

Fields

id

name

is_active

created_at

---

Examples

Passenger Cars

Pickup / Light Commercial Vehicles (Camionnette / Camion Baché)

Heavy Trucks

Motorcycles

Agricultural Machinery

Construction Equipment

---

Rules

- Categories are managed by administrators.
- Categories may be expanded in future versions.
- Every request belongs to one category.

---

### Table: Vehicle_Brands

Purpose:

Stores vehicle brands.

---

Fields

id

name

is_active

created_at

---

Examples

Toyota

Renault

Peugeot

Hyundai

Yamaha

Mercedes-Benz

---

Rules

- A brand may belong to one or more vehicle categories.
- Brands are managed centrally.
- Matching relies on standardized brand records.

---

### Table: Vehicle_Models

Purpose:

Stores vehicle models.

---

Fields

id

brand_id

name

category_id

is_active

created_at

---

Examples

Hilux

Symbol

301

Accent

MT-07

Actros

---

Rules

- Models belong to a brand.
- Models are linked to a vehicle category.
- Model recognition may assist request classification.
* Model names must be unique within the same brand.
  
---

### Table: Vehicle_Aliases

Purpose:

Stores alternative names and marketplace terminology.

---

Fields

id

vehicle_model_id

alias

language

created_at

---

Examples

كاميو باشي

Camion Bâché

Hilux Vigo

---

Rules

- Aliases improve recognition and matching.
- Multiple aliases may point to the same vehicle model.
- Aliases do not replace official vehicle records.
- Aliases may represent either vehicle models or marketplace category terminology.
- Marketplace terminology may be associated with categories when appropriate.

---

### Vehicle Registry Rules

- Vehicle data is considered reference data.
- Vehicle records are managed centrally.
- Requests reference vehicle records whenever possible.
- Vehicle recognition should improve matching quality.
- Marketplace terminology may coexist with official terminology.

---

## Section E — Knowledge Registry

### Table: Part_Categories

Purpose:

Stores standardized spare part categories.

---

Fields

id

name

is_active

created_at

---

Examples

Engine

Gearbox

Cooling System

Electrical System

Body Parts

Suspension

Brakes

Mirrors

Glass

Lighting

---

Rules

- Categories are managed centrally.
- Categories improve matching quality.
- Categories may expand over time.

---

### Table: Parts

Purpose:

Stores recognized spare parts.

---

Fields

id

part_category_id

official_name

is_active

created_at

---

Examples

Radiator

Gearbox

Side Mirror

Headlight

Windshield

Brake Disc

---

Rules

- Parts belong to a category.
- Parts are managed centrally.
- Requests may reference recognized parts when available.

---

### Table: Part_Aliases

Purpose:

Stores marketplace terminology and alternative names.

---

Fields

id

part_id

alias

language

created_at

---

Examples

Radiateur

رادياتور

Troviseur

Retrovisor

مراية جانبية

---

Rules

- Multiple aliases may point to the same part.
- Aliases improve search and matching.
- Aliases do not replace official part records.

---

### Table: Part_Relationships

Purpose:

Stores relationships between similar or related parts.

---

Fields

id

source_part_id

related_part_id

relationship_type

created_at

---

Relationship Type Values

equivalent

related

parent_child

---

Rules

- Relationships help improve recognition.
- Relationships support future matching improvements.

---

### Table: Rare_Parts

Purpose:

Stores parts classified as rare.

---

Fields

id

part_id

notes

classified_by

created_at

---

Rules

- Rare part classification is managed by administrators.
- Rare parts may receive special visibility treatment.
- Classification rules may evolve over time.
- Rare part classification may influence matching and visibility rules.
    
---

### Table: Knowledge_Submissions

Purpose:

Stores new terminology submitted through marketplace activity.

---

Fields

id

submitted_term

source_type

source_reference_id

status

created_at

reviewed_at

---

Status Values

pending

approved

rejected

---

Rules

- New terminology requires administrative review.
- Approved terminology may be added to the knowledge registry.
- Rejected terminology remains stored for audit purposes.

---

### Knowledge Registry Rules

- Knowledge data is considered reference data.
- Official terminology and marketplace terminology may coexist.
- Unknown terms should not prevent request creation.
- Knowledge quality should improve over time.
- Administrative review remains required before introducing new official terminology.
* Aliases should support search, autocomplete, and matching systems.
  
---

## Section F — Requests

### Table: Requests

Purpose:

Stores buyer requests.

A request represents a marketplace need created by a buyer.

---

Fields

id

buyer_user_id

vehicle_category_id

vehicle_brand_id

vehicle_model_id

vehicle_year

state

latitude

longitude

notes

status

created_at

updated_at

expires_at

closed_at

---

Status Values

waiting_offers

received_offers

converted_to_deal

expired

closed

---

Rules

- A request belongs to one vehicle category only.
- A request references one vehicle brand.
- A request references one vehicle model.
- A request references one vehicle year.
- A request belongs to one buyer.
- A request may contain multiple request items.
- Requests automatically expire after the configured expiration period.
- Expired requests cannot be republished.
- Buyers must create a new request if needed.
- Requests converted into deals become read-only.
* Requests cannot be edited after publication.
* Buyers must create a new request if corrections are needed.

---

### Table: Request_Items

Purpose:

Stores individual requested parts.

---

Fields

id

request_id

part_id

custom_part_name

quantity

created_at

updated_at

---

Rules

* A request may contain multiple items.
* All items belong to the same vehicle defined in the parent request.
* Recognized parts should reference the Parts table.
* Unknown parts may use custom_part_name.
* Quantity must be greater than zero.
  
---

### Table: Request_Status_History

Purpose:

Stores request lifecycle history.

---

Fields

id

request_id

old_status

new_status

changed_at

changed_by

---

Rules

- Status changes remain traceable.
- Historical records should not be deleted.


---

### Request Rules

- A request belongs to one vehicle category only.
- A request belongs to one vehicle only.
- All request items belong to the same vehicle.
- Multiple parts may be requested for that vehicle.
- A request may contain multiple parts.
- Unknown terminology should not prevent request creation.
- Request identifiers remain visible throughout the request lifecycle.
- Request history should remain auditable.
- Requests cannot be republished.
- Buyers must create a new request when changes are required.
* Requests must reference a single vehicle.
* Vehicle brand is required.
* Vehicle model is required.
* Vehicle year is required.
* Request location may be captured during request creation.
* Request location is used for distance calculations.
* Location sharing remains optional for buyers.
* State remains the primary geographic classification.
* Only the request owner may close a request before expiration.
* Request ownership cannot be transferred.
* A request must contain at least one request item.
* The platform may apply anti-spam limits when abnormal activity is detected. 

---

## Section G — Request Images

### Table: Request_Item_Images

Purpose:

Stores images attached to request items.

---

Fields

id

request_item_id

file_url

created_at

---

Rules

- Images belong to request items.
- Maximum 3 images per request item.
- Images may be deleted before request publication.
- Published request images remain available while the request is active.
- Request images may be removed during periodic cleanup after request closure.
  
---

### Request Image Rules

- Images are optional.
- Images help improve identification accuracy.
* Buyers may upload up to 3 images for each requested item.
* Images are especially useful when the buyer does not know the part name.
* Images may be used by sellers to verify part compatibility.
- Images are attached to individual request items, not to the request itself.
- Image storage implementation may evolve without affecting business logic.

---

## Section H — Offers

### Table: Offers

Purpose:

Stores seller offers submitted in response to requests.

---

Fields

id

request_id

shop_id

total_amount

delivery_available

delivery_notes

seller_message

status

created_at

updated_at

accepted_at

last_price_update_at

price_update_count

expires_at

---

Status Values

active

under_discussion

accepted

closed

---

Rules

- An offer belongs to one request.
- An offer belongs to one shop.
- A request may receive multiple offers.
- Sellers may submit full or partial offers.
- Accepted offers become locked.
- Accepted offers cannot be modified.
- Sellers may update offer prices before offer acceptance.
- Buyers should be notified when an offer price changes.
- Price updates do not require historical version storage in Version 1.
* Offers may be modified only while status = active.
* Offers under discussion cannot be modified.
* Price negotiations occur through chat after discussion starts.
  
---

### Table: Offer_Items

Purpose:

Stores individual offer lines.

---

Fields

id

offer_id

request_item_id

availability_status

condition

requested_quantity

offered_quantity

unit_price

future_availability_note

created_at

updated_at

---

Availability Status Values

available

unavailable

available_later

---

Condition Values

new

used

---

Rules

- Every offer item belongs to one request item.
- Available parts require a unit price.
- Unavailable parts remain visible to buyers.
- Future availability notes are optional.
- Offered quantity may be lower than requested quantity.
- Partial quantity fulfillment is allowed.
- Missing quantities should remain visible to buyers.
- Quantity shortages are treated similarly to unavailable parts during offer evaluation.
- available_later indicates that the seller cannot provide the part immediately but believes it may become available later.
- Future availability information remains informational only.
- The platform does not guarantee future availability.

---

### Table: Offer_Status_History

Purpose:

Stores offer lifecycle history.

---

Fields

id

offer_id

old_status

new_status

changed_at

changed_by

---

Rules

- Offer status changes remain traceable.
- Historical records should not be deleted.

---

### Table: Offer_Acceptance_Events

Purpose:

Stores offer acceptance events.

---

Fields

id

offer_id

buyer_user_id

accepted_at

created_deal_id

---

Rules

- An offer may be accepted only once.
- Acceptance immediately creates a deal.
- Acceptance history remains preserved.

---

### Offer Rules

- Sellers may submit full offers.
- Sellers may submit partial offers.
- Buyers may discuss partial offers.
- Buyers may accept partial offers.
- Accepted offers become read-only.
- Competing offers are closed after acceptance.
- Closed competing offers do not automatically reopen.
- Offer identifiers remain visible throughout the lifecycle.
- Buyers may start a discussion without accepting the offer.
- Starting a discussion moves the offer to under_discussion status.
- Offer acceptance immediately creates a deal.
- Discussion is not considered offer acceptance.
* Only the request owner may accept an offer.
* Offer acceptance is irreversible.
* An offer must contain at least one offer item.
* A shop may submit only one active offer per request.
* Offers expire automatically when the parent request expires.
    
---

## Section I — Chats & Messages

### Table: Chats

Purpose:

Stores conversations between buyers and sellers.

---

Fields

id

request_id

offer_id

buyer_user_id

shop_id

created_at

updated_at

---

Rules

- A chat is linked to a request.
- A chat may be linked to an offer.
- Buyers and sellers communicate through chats.
- Chat history remains preserved.

---

### Table: Messages

Purpose:

Stores individual chat messages.

---

Fields

id

chat_id

sender_user_id

message_body

is_read

created_at

deleted_at

---

Rules

- Messages belong to a chat.
- Messages remain visible to both participants.
- Read status is tracked.

---

### Table: Chat_Attachments

Purpose:

Stores files shared through conversations.

---

Fields

id

chat_id

message_id

file_url

created_at

---

Rules

* Attachments are optional.
* Image attachments are supported.
* Attachments may be removed during periodic cleanup.
* Storage implementation may evolve independently from chat logic.
  
---

### Chat Rules

- Messaging becomes available when a buyer starts discussing an offer.
- Conversations remain linked to the original request.
- Conversation history remains available to participants.
- Internal messaging is the preferred communication channel.
- Unread messages generate notifications.
- Discussions may continue through external communication channels.
- Internal messaging remains available for sharing images and discussion history.
  
---

## Section J — Deals

### Table: Deals

Purpose:

Stores transactions created after offer acceptance.

---

Fields

id

request_id

offer_id

buyer_user_id

shop_id

final_amount

accepted_offer_snapshot

status

created_at

completed_at

cancelled_at

---

Status Values

active

completed

cancelled

---

Rules

- A deal is created immediately after offer acceptance.
- A deal belongs to one request.
- A deal belongs to one accepted offer.
- A deal belongs to one buyer.
- A deal belongs to one shop.
- Completed deals cannot be reopened.
- Cancelled deals cannot be reactivated.

---

### Table: Deal_Status_History

Purpose:

Stores deal lifecycle history.

---

Fields

id

deal_id

old_status

new_status

changed_at

changed_by

---

Rules

- Status changes remain traceable.
- Historical records should not be deleted.

---

### Table: Deal_Cancellations

Purpose:

Stores cancellation information.

---
Fields

id

deal_id

cancelled_by_user_id

cancellation_reason

created_at

---

Cancellation Reason Values

buyer_changed_mind

seller_unavailable

part_not_available

price_disagreement

other

---

Rules

* Cancellation requires a reason.
* Cancellation history remains preserved.

---

### Table: Deal_Completion_Events

Purpose:

Stores deal completion events.

---

Fields

id

deal_id

completion_type

created_at

---

Completion Type Values

automatic_completion

buyer_confirmation

---

Rules

- Buyers may manually confirm completion.
- Deals may complete automatically after the cancellation period expires.
* The accepted offer snapshot should remain preserved within the deal lifecycle.
  
---

### Deal Rules

- Offer acceptance immediately creates a deal.
- Deal cancellation is available during the first 8 days.
- Cancellation becomes unavailable after 8 days.
- Buyers may complete deals earlier through confirmation.
- The platform sends a reminder notification after 72 hours.
- Deals automatically become completed after 8 days unless cancelled.
- Competing offers remain closed after deal creation.
- Deal identifiers remain visible throughout the lifecycle.
- Deal statistics remain preserved even after operational cleanup.
- Historical deal counts contribute to seller statistics.
* A request may generate only one active deal.
* Multiple active deals cannot exist for the same request.
  
---

## Section K — Ratings & Trust

### Table: Ratings

Purpose:

Stores buyer ratings for completed marketplace transactions.

---

Fields

id

deal_id

buyer_user_id

shop_id

rating_value

comment

created_at

---

Rating Values

1

2

3

4

5

---

Rules

- One rating per deal.
- Ratings become permanently locked after submission.
- Ratings cannot be edited.
- Ratings cannot be deleted by users.
- Ratings remain linked to a deal.
* Ratings are anonymous to other buyers.
* Shops may view rating values associated with completed deals.
* Rating comments are optional.
* Comments may contain up to 500 characters.
* Comments become permanently locked after submission.
  
---

### Table: Rating_Summaries

Purpose:

Stores calculated shop rating information.

---

Fields

id

shop_id

average_rating

total_ratings

updated_at

---

Rules

- Values are generated from Ratings.
- Values may be recalculated when necessary.

---

### Rating And Trust Rules

- Ratings represent transaction feedback.
- Ratings become available after deal completion.
- Buyers may submit one rating per completed deal.
- Ratings use a 1 to 5 star scale.
- Once submitted, a rating becomes permanently locked.
- Verification status does not affect rating values.
- Trust indicators should remain transparent and traceable.

---

## Section L — Notifications

### Table: Notifications

Purpose:

Stores system notifications delivered to users.

---

Fields

id

user_id

type

title

body

target_type

target_id

is_read

created_at

read_at

---

Notification Type Values

new_offer

new_message

deal_created

deal_completed

deal_cancelled

request_expired

shop_verification_approved

---

Target Type Values

request

offer

chat

deal

shop

---

Rules

- Notifications belong to one user.
- Notifications support read and unread states.
- Notifications remain available for historical reference.
- Notifications may redirect users to a related marketplace entity.
- target_type and target_id determine the destination opened when the user taps the notification.
* Notifications may be deleted during periodic cleanup.
* Historical notification retention is not required.
  
---

Examples

New Offer
→ target_type = offer
→ target_id = 125

New Message
→ target_type = chat
→ target_id = 22

Deal Completed
→ target_type = deal
→ target_id = 45

---

### Notification Rules

- Notifications should clearly explain what happened.
- Notifications should indicate whether action is required.
- Unread notifications remain highlighted.
- Notifications are delivered only to relevant users.
* Old notifications may be removed during periodic cleanup.
  
---

## Section M — Matching & Visibility

---

### Table: Matching_Events

Purpose:

Stores matching engine decisions.

---

Fields

id

request_id

shop_id

matching_reason

created_at

---

Rules

- Matching decisions remain traceable.
- Historical matching data may support future improvements.

---

### Matching Rules

- Matching prioritizes part recognition first.
- When part recognition succeeds, requests are matched to sellers specialized in that part category.
- Matching considers shop specialization first.
- Matching considers vehicle brand compatibility.
- Matching considers vehicle category compatibility.
- Matching considers seller state visibility preferences.
- Distance may be used as an additional ranking factor.
- Nearby sellers may receive higher visibility when matching quality is similar.
- Unknown part names must not block request visibility.
- Requests containing unknown terminology should continue matching through model, brand, and category specialization.
- La Casse shops may receive broader visibility.
- Passenger Cars use the most detailed matching logic.
- Matching decisions should maximize relevant visibility.

---

## Section N — Administration & Moderation

### Table: Admin_Reports

Purpose:

Stores reports submitted by marketplace users.

---

Fields

id

reported_by_user_id

reported_shop_id

report_reason

description

status

created_at

reviewed_at

---

Status Values

pending

under_review

resolved

dismissed

---

Rules

- Reports require administrative review.
- Reports do not automatically trigger penalties.

---

### Table: Admin_Actions

Purpose:

Stores administrative actions.

---

Fields

id

admin_user_id

action_type

target_type

target_id

notes

action_reason

created_at

---

Action Type Values

shop_suspended

shop_reactivated

shop_closed

shop_name_change_approved

shop_verification_approved

---

Rules

- Administrative actions remain traceable.
- Historical actions should not be deleted.
* Suspended shops remain visible in historical records.
* Suspension does not remove completed deals.
  
---

### Table: Shop_Inactivity_Reviews

Purpose:

Stores inactivity investigations.

---

Fields

id

shop_id

last_activity_at

review_status

notes

created_at

reviewed_at

---

Review Status Values

pending

contacted

resolved

suspended

---

Rules

* Shops inactive for more than 90 days may be reviewed.
* Administrators may contact shop owners before taking action.
* Inactivity does not automatically suspend a shop.
* Shops with active discussions or active deals should not be flagged as inactive.
  
---

### Administration Rules

- Administrative decisions require review.
- Marketplace actions should remain auditable.
- Reports require verification before enforcement.
- Inactivity reviews support marketplace quality control.
* Administrative actions must not alter historical deals.
* Historical marketplace records remain auditable.
  
---

## Section O — Analytics & Statistics

### Table: Platform_Statistics

Purpose:

Stores marketplace-wide statistics.

---

Fields

id

total_users

total_shops

verified_shops

total_requests

total_offers

total_deals

updated_at

---

Rules

- Statistics are generated from operational data.
- Values may be recalculated periodically

---

### Table: Shop_Statistics

Purpose:

Stores seller marketplace statistics.

---

Fields

id

shop_id

pending_offers_count

offers_under_discussion_count

successful_deals_count

failed_deals_count

last_activity_at

updated_at

---

Rules

* Statistics are generated automatically.
* Statistics support seller activity monitoring.
* Pending offers represent offers that have not entered discussion.
* Offers under discussion represent active buyer-seller negotiations.
* Successful deals represent completed transactions.
* Failed deals represent deals that did not succeed.

---

### Table: Brand_Statistics

Purpose:

Stores vehicle brand activity statistics.

---

Fields

id

vehicle_brand_id

request_count

offer_count

deal_count

updated_at

---

Rules

- Statistics support future marketplace analysis.
- Values are generated from platform activity.

---

### Table: Part_Statistics

Purpose:

Stores spare part activity statistics.

---

Fields

id

part_id

request_count

offer_count

deal_count

updated_at

---

Rules

- Statistics help identify popular and rare parts.
- Values are generated from marketplace activity.

---

### Table: Category_Statistics

Purpose:

Stores vehicle category statistics.

---

Fields

id

vehicle_category_id

request_count

offer_count

deal_count

updated_at

---

Rules

- Statistics support business analysis and future planning.

---

### Analytics Rules

- Analytics data should not affect business records.
- Statistics may be recalculated at any time.
- Analytics should remain separated from operational data.
- Historical marketplace trends may be derived from analytics data.
- Operational records may be archived or removed according to retention policies.
- Statistical records remain preserved.
* Requests may be converted into statistics after archival.
* Offers may be converted into statistics after archival.
* Closed conversations may be removed after the retention period.
* Images should be removed after operational use ends.
* Operational tables remain the source of truth.
* Statistics are derived data and may be regenerated.
  
---

## Section P — Future Extensions


Version 2+

Reserved for future development.

### Table: Future_Import_Requests

Purpose:

Reserved for future import services.

---

Status:

Future Feature

---

Rules

- Import services are not part of Version 1.
- Import services are considered a separate marketplace service.
- Import services are not standard seller accounts.

---

### Table: Future_Advanced_Matching

Purpose:

Reserved for future matching improvements.

---

Status:

Future Feature

---

Rules

- Future matching versions may use marketplace activity data.
- Future matching versions may use specialization patterns.
- Future matching versions may use knowledge registry improvements.

---

### Table: Future_Knowledge_Enhancements

Purpose:

Reserved for future knowledge system expansion.

---

Status:

Future Feature

---

Rules

- Knowledge classification may become more advanced.
- Terminology recognition may improve over time.

---

Version 2+

Reserved for future development.

### Table: Future_Marketplace_Services

Purpose:

Reserved for future marketplace services.

---

Status:

Future Feature

---

Rules

- Future services should remain compatible with existing database architecture.
- New services should minimize impact on core marketplace tables.

---

### Future Extension Rules

- Future features should not require redesigning core tables.
- Core marketplace entities should remain stable.
- New services should integrate through extensions whenever possible.
