# Database Normalization (3NF)

## Step 1: First Normal Form (1NF)
- All attributes are atomic (no repeating groups).
- Each table has a primary key.
✅ Our design meets 1NF.

## Step 2: Second Normal Form (2NF)
- No partial dependencies on composite keys.
- All non-key attributes depend on the whole primary key.
✅ Since our tables use single-column primary keys (e.g., user_id, property_id), 2NF is satisfied.

## Step 3: Third Normal Form (3NF)
- No transitive dependencies (non-key attributes depending on other non-key attributes).

**Checks:**
- User: role, email → depend only on user_id.
- Property: title, description, location, price → depend only on property_id.
- Booking: start_date, end_date, status → depend only on booking_id.
- Payment: amount, status → depend only on payment_id.
- Review: rating, comment → depend only on review_id.
- Message: sender_id, receiver_id, booking_id → depend only on message_id.
- Index: created_at, last_updated → depend on index_id (but could be merged into Property if not needed separately).

✅ Schema meets 3NF.  
⚠️ Optional improvement: Merge Index into Property to reduce unnecessary table separation.

---
**Conclusion:**  
Our schema is normalized up to the Third Normal Form (3NF) with no redundancy or transitive dependencies.  
