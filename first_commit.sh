# Ensure you are inside the ward-operations-hub directory
# Replace YOUR-USERNAME in mkdocs.yml and docs/index.md after running if needed

cat << 'EOF' > mkdocs.yml
site_name: Ward Operations & Tradition Guide
site_description: Local operational guidelines, historical tips, and collaboration workflows.
repo_url: https://github.com/popgengent/ward-operations-hub
repo_name: ward-operations-hub

theme:
  name: material
  palette:
    primary: indigo
    accent: blue
  features:
    - navigation.tabs
    - navigation.sections
    - navigation.expand
    - search.suggest
    - search.highlight

nav:
  - Home & Scope: index.md
  - How to Propose Changes: governance.md
  - Organizations (Getting Started):
      - Relief Society: organizations/relief-society.md
      - Elders Quorum: organizations/elders-quorum.md
      - Primary: organizations/primary.md
      - Young Women: organizations/young-women.md
      - Young Men: organizations/young-men.md
      - Sunday School: organizations/sunday-school.md
  - Operations & Specialists:
      - Ward Activities Co-Chairs: operations/activities-co-chairs.md
      - Communications: operations/communications.md
      - Facilities & Cleaning: operations/facilities-cleaning.md
      - Technology & A/V: operations/technology-av.md
      - Music & Sacrament Coordination: operations/music-sacrament.md
      - Temple & Family History: operations/temple-family-history.md
  - Activities & Retrospectives:
      - Planning Checklist: activities/planning-checklist.md
      - Local Venues & Contacts: activities/vendor-venue-contacts.md
      - Retrospectives:
          - Retrospective Template: activities/retrospectives/template-retrospective.md
          - Ward Campout: activities/retrospectives/ward-campout.md
          - Trunk-or-Treat: activities/retrospectives/trunk-or-treat.md
          - Christmas Dinner: activities/retrospectives/christmas-dinner.md

markdown_extensions:
  - admonition
  - pymdownx.tasklist:
      custom_checkbox: true
EOF

# --- Governance Page ---
cat << 'EOF' > docs/governance.md
# How to Use & Update This Guide

## Purpose & Boundaries
This hub preserves local ward institutional memory—practical workflows, building quirks, communication lead times, and historical lessons learned from past events. 

* **Not Policy:** Nothing in this guide establishes Church doctrine or policy. When questions arise, always refer to the *General Handbook* and current priesthood leadership keys.
* **Living Document:** Callings change regularly. Updating these pages ensures the next leader doesn't have to start from scratch.

---

## How Changes Are Approved
To prevent accidental edits and preserve *why* decisions were made, all updates follow a transparent review process:

1. **Propose a Change:** Click any **"Propose a Change"** button on this site to open a pre-formatted GitHub Issue. Include your name/calling, what should change, and the reason behind it.
   * *Don't have a GitHub account?* Email or text your proposed edit and rationale to the Ward Clerk or Website Maintainer, and they will log the Issue on your behalf.
2. **Review & Sign-Off:**
   * **Internal Organization Notes** (e.g., Primary singing time tips): Approved by that organization's presidency.
   * **Cross-Organization / Building Operations** (e.g., Activity workflows, building cleaning, communications): Reviewed by the assigned Bishopric counselor or Ward Council.
3. **Publish:** Once approved, the maintainer merges the update into the site, permanently linking the change to the original rationale.
EOF

# --- Organization Getting Started Pages ---
for org in \
  "relief-society:Relief Society" \
  "elders-quorum:Elders Quorum" \
  "primary:Primary" \
  "young-women:Young Women" \
  "young-men:Young Men" \
  "sunday-school:Sunday School"
do
  slug="${org%%:*}"
  title="${org##*:}"
  cat << EOF > "docs/organizations/${slug}.md"
# ${title} — Getting Started

!!! note "Local Operational Notes"
    For official calling responsibilities and policies, refer to the *General Handbook*. Below are local traditions, meeting rhythms, and coordination tips for our ward.

## Meeting Cadence & Rhythm

| Meeting | Frequency | Typical Day / Time | Key Attendees & Purpose |
| :--- | :--- | :--- | :--- |
| **Presidency Meeting** | Bi-weekly / Monthly | *[e.g., 1st & 3rd Sundays]* | Presidency + Secretary: Plan lessons, ministering/care needs, and upcoming activities. |
| **Ward Council** | Weekly / Bi-weekly | *[e.g., Sundays, 1 hr before church]* | President attends to coordinate ward-wide needs and activity workstreams. |
| **Sunday Instruction** | 2nd & 4th Sundays | 2nd hour | Lessons, discussions, and announcements. |

---

## First 30 Days Checklist for New Leaders
- [ ] **LCR & Member Tools Access:** Verify access to organization rosters, attendance, and birthday/move-in lists.
- [ ] **Calendar Sync:** Review upcoming ward and stake events for the next 6 months with the Bishopric counselor.
- [ ] **Communication Channels:** Get added to the presidency group chat and verify how announcements are sent to members.
- [ ] **Supply Closet & Materials:** Locate manuals, lesson supplies, and storage cabinets in the building.

---

## Cross-Organization Coordination
* **With Activities Co-Chairs:** When assigned a workstream for a ward activity, recruit volunteers across the ward (not just within ${title}) to share the load.
* **With Communications:** Submit announcements by *[Day of Week]* so they make the Sunday bulletin and ward email.
EOF
done

# --- Operations: Activities Co-Chairs ---
cat << 'EOF' > docs/operations/activities-co-chairs.md
# Ward Activities Co-Chairs

!!! warning "Scope & Policy Notice"
    **This page reflects local ward operational guidelines and historical best practices—not Church policy.** Always coordinate under the direction of the Bishopric and in alignment with *General Handbook* Chapter 20.

## Core Purpose & Philosophy
Our ward does not maintain a standing activities committee. Instead, the **Ward Activities Co-Chairs** serve as high-level planners, coordinators, and quality-control leads who work **through the Ward Council** to bring ward activities to life.

Every ward activity should intentionally accomplish two goals:
1. **Help attendees strengthen their relationship with Jesus Christ** through uplifting, Christ-centered experiences.
2. **Build genuine fellowship and belonging** across age groups and backgrounds.

---

## How the Delegation Model Works
A core principle of this calling is **broad participation without burnout**. Well-planned activities create opportunities for many ward members to contribute in small, manageable ways—both in preparation and during the event.

### 1. Co-Chairs Plan & Coordinate (Not Solo-Execute)
* **Your Role:** Define the vision, timeline, budget, and complete logistics checklist for an activity. Break the execution into clear, self-contained workstreams (e.g., *Food & Allergens*, *Room Layout & Decor*, *Setup/Takedown & Cleaning*, *Program/Games*, *Communications*).
* **Not Your Role:** Shopping for every item, decorating the cultural hall alone, or staying late to scrub the kitchen by yourselves.

### 2. Ward Council Members Own Workstreams
* Co-chairs assign each logistics workstream to a member of the Ward Council (e.g., Relief Society Presidency for decor, Elders Quorum Presidency for room setup/takedown, Young Men/Young Women for greeting or games, Sunday School for audio/visual).
* **Important Rule on Recruiting:** Assigning a workstream to a Ward Council member does **not** mean that leader does the work themselves, nor are they restricted to recruiting only from their own organization. Any Ward Council leader can invite **anyone in the ward** whose talents, interests, or availability fit the task.

### 3. Meeting Cadence & Off-Cycle Coordination
* **Quarterly Ward Council Check-In:** Activities Co-Chairs are invited to Ward Council roughly **once per quarter** to align on upcoming events, confirm workstream owners, and resolve scheduling conflicts in person.
* **Between Meetings:** Most coordination happens outside of Ward Council via direct texts, brief phone calls, or short 10-minute hallway huddles with assigned Ward Council leads. Avoid turning weekly Ward Council meetings into granular activity-planning sessions.

---

## Standard Activity Lifecycle

| Timing | Milestone | Owner |
| :--- | :--- | :--- |
| **8–10 Weeks Out** | Confirm date, purpose, target audience, and rough budget with Bishopric counselor; reserve building on the ward/stake calendar. | Activities Co-Chairs |
| **6–8 Weeks Out** | Review activity plan at Quarterly Ward Council; assign logistics workstreams to Ward Council leads. | Co-Chairs + Ward Council |
| **4–6 Weeks Out** | Ward Council leads recruit ward members to handle specific tasks; Co-Chairs verify every checklist item has a named owner. | Ward Council Leads |
| **3–4 Weeks Out** | Submit announcement details to Ward Communications Specialist (bulletin, email, social/calendar). | Co-Chairs + Communications |
| **1 Week Out** | Confirm headcount/RSVP numbers, allergen accommodations, building unlock schedule, and purchase approvals. | Co-Chairs + Workstream Leads |
| **Event Day** | Oversee flow, welcome attendees, troubleshoot gaps, and ensure cleanup lead hands off the building locked and clean. | Co-Chairs + Assigned Leads |
| **Within 7 Days** | Complete a 5-minute [Activity Retrospective](../activities/retrospectives/template-retrospective.md) so future planners have exact numbers and lessons learned. | Activities Co-Chairs |

---

## Quick Links
* [Comprehensive Activity Planning Checklist](../activities/planning-checklist.md)
* [Local Venues, Parks & Vendor Contacts](../activities/vendor-venue-contacts.md)
* [Past Activity Retrospectives](../activities/retrospectives/template-retrospective.md)
EOF

# --- Operations: Other Specialist Pages ---
cat << 'EOF' > docs/operations/communications.md
# Ward Communications

## Overview & Channels
The Ward Communications Specialist manages consistent, timely information flow across the ward so members know what is happening without feeling spammed.

| Channel | Cadence | Submission Deadline | Owner |
| :--- | :--- | :--- | :--- |
| **Sunday Printed Bulletin** | Weekly | *[e.g., Thursday at 8:00 PM]* | Bulletin Editor / Communications |
| **Ward Email / Newsletter** | Weekly / Bi-weekly | *[e.g., Friday at 12:00 PM]* | Communications Specialist |
| **Pulpit Announcements** | Sundays (kept brief) | *[e.g., Saturday evening]* | Conducting Bishopric Counselor |
| **Ward Calendar (LCR)** | Ongoing | As soon as dates are approved | Ward Clerk / Building Scheduler |

## Best Practices
* **Include Key Details Every Time:** Event name, date, start/end time, location, dress code, RSVP deadline, and a point of contact.
* **Lead Times:** Submit major ward activities at least **3–4 weeks in advance** so announcements build momentum.
EOF

cat << 'EOF' > docs/operations/facilities-cleaning.md
# Facilities & Building Cleaning

## Weekly Building Cleaning Coordination
Our ward coordinates weekly Saturday morning cleaning assignments by *[e.g., alphabetical family groups / ministering districts / organizations]*.

### Key Responsibilities
* **Schedule & Reminders:** Publish the monthly rotation and send text/email reminders on the Wednesday/Thursday prior.
* **Building Access:** Confirm who has a key/fob to unlock the building on Saturday morning and lock up afterward.
* **Supplies:** Check paper towels, toilet paper, soap dispensers, trash liners, and vacuum bags monthly; submit restock requests to the Building Representative / Facilities Management (FM) group before supplies run out.

## Building Quirks & Storage Map
* **Cleaning Closet Location:** *[Add room number / hallway location]*
* **Extra Tables & Chairs:** *[Add storage room location and rack rules]*
* **Thermostats & Lights:** *[Note override buttons or auto-shutoff timers]*
* **Exterior Doors:** *[Note which doors have hex-key dogging bars and how to ensure they latch securely at lockup]*
EOF

cat << 'EOF' > docs/operations/technology-av.md
# Technology & A/V Operations

## Weekly Sacrament Meeting Setup
* **Arrival Time:** Arrive at least **30 minutes before** Sacrament Meeting to test pulpit/rostrum microphones, sacrament table mic, and broadcast audio.
* **Broadcast / Streaming:** Start the stream 10 minutes prior to the prelude; verify audio levels from the chapel sound system rather than the room mic.
* **Post-Meeting:** Power down wireless microphones, return batteries/transmitters to the charger, and end the stream promptly after the closing prayer.

## Activity & Cultural Hall A/V
* **Equipment Inventory:** Location of portable PA speakers, wireless handheld mics, extension cords, and projector/screen.
* **Cultural Hall Acoustics:** Keep speaker volume moderate and place speakers angled toward the audience rather than the back wall to reduce echo.
EOF

cat << 'EOF' > docs/operations/music-sacrament.md
# Music & Sacrament Coordination

## Planning Rhythm
* **Hymn Selection:** Coordinate sacrament, opening, intermediate, and closing hymns with the Bishopric at least **2–3 weeks in advance** so accompanists and choristers can prepare.
* **Special Musical Numbers:** Confirm performers, accompanists, and microphone needs by the Wednesday prior so names are accurate in the printed bulletin.
* **Primary Program & Holiday Programs:** Begin coordinating rehearsal schedules with Primary or choir leaders **6–8 weeks in advance**.
EOF

cat << 'EOF' > docs/operations/temple-family-history.md
# Temple & Family History

## Ward Coordination Rhythm
* **Temple & Family History Coordination Meetings:** Held *[monthly / bi-weekly]* led by the Temple and Family History Leader (with Relief Society/Elders Quorum reps and consultants).
* **Youth & Ward Temple Trips:** Coordinate dates with the Stake/Ward calendar early; remind families to book individual proxy appointments online when required.
* **New Member & Youth Support:** Pair new converts and 11-year-olds preparing for their first temple trip with a consultant to help print family names.
EOF

# --- Activities: Planning Checklist ---
cat << 'EOF' > docs/activities/planning-checklist.md
# Comprehensive Activity Planning Checklist

Use this master checklist when planning any ward-wide activity. Not every line applies to every event, but **every item should be deliberately considered** and either assigned to an owner or marked N/A.

---

## 1. Vision, Calendar & Approvals
- [ ] **Christ-Centered & Fellowship Purpose Defined:** How will this activity help people feel welcomed, connected, and closer to Christ?
- [ ] **Bishopric Approval:** Date, theme, and rough budget reviewed with the assigned Bishopric counselor.
- [ ] **Building / Venue Reserved:** Confirmed on the ward/stake calendar (including buffer time for setup and cleanup) or off-site pavilion reserved.
- [ ] **Workstream Owners Assigned:** Each section below has a Ward Council lead (who recruits ward members to execute).

---

## 2. Building Access, Layout & Equipment
- [ ] **Building Unlock (Setup):** Who has a key/fob and is responsible for unlocking doors *before* setup begins?
- [ ] **Building Unlock (Event Start):** Who is monitoring/unlocking exterior doors as guests arrive (especially if doors auto-lock)?
- [ ] **Floor Plan & Table Layout:** Exact diagram drawn (number of round vs. rectangular tables, buffet line flow to prevent bottlenecks, stage/program area, stroller/wheelchair accessibility).
- [ ] **Chairs & Tables Setup:** Who is pulling out and arranging tables and chairs, and at what exact time?
- [ ] **Tablecloths & Skirts:** Who is purchasing or pulling reusable tablecloths, how many are needed, and what colors/sizes?
- [ ] **Centerpieces & Decor:** Who is sourcing/assembling decor, and who is taking it down afterward?
- [ ] **Thermostat / HVAC Check:** Confirm cultural hall/kitchen temperature settings before guests arrive.

---

## 3. Food, Beverages & Allergen Safety
- [ ] **Headcount Estimate:** Expected attendance based on RSVPs + historical retrospective data.
- [ ] **Menu & Portions:** Main dishes, sides, desserts, and kid-friendly options calculated per person.
- [ ] **Allergen & Dietary Accommodations:**
  - [ ] Gluten-free, dairy-free, nut-free, or vegetarian options planned.
  - [ ] Ingredient/allergen labels printed for every dish (especially potluck items).
  - [ ] Separate serving utensils provided to prevent cross-contact.
- [ ] **Beverages & Ice:** Water dispensers, lemonade/punch, ice bags, and coolers arranged.
- [ ] **Paper Goods & Serving Supplies:**
  - [ ] Dinner plates, dessert plates, bowls, cups, napkins, forks/spoons/knives.
  - [ ] Serving tongs, ladles, foil pans, Sterno cans/chafing dishes, plastic wrap, and zip-top bags for leftovers.
- [ ] **Kitchen Prep & Food Safety:** Oven/warmer schedule coordinated; hot foods kept hot, cold foods kept cold; handwashing/gloves available for servers.
- [ ] **Leftover Plan:** Who distributes leftover food (e.g., to families, missionaries, or attendees) so nothing spoils in the church fridge?

---

## 4. Program, Audio/Visual & Activities
- [ ] **Opening & Closing:** Who is conducting, offering opening/closing prayers, and giving the blessing on the food?
- [ ] **Program / Entertainment / Games:** Timeline of activities, supplies needed, and hosts/emcees assigned.
- [ ] **Children / Youth Engagement:** Dedicated activity table, lawn games, or supervised space so parents can socialize.
- [ ] **Audio / Visual Setup:** Microphones (wired/wireless), podium, background music playlist, projector/screen, and extension cords tested 30 minutes prior.

---

## 5. Communications & Invitations
- [ ] **Announcement Copy Ready:** Date, time, location, dress code, RSVP link (if needed), and whether to bring a dish.
- [ ] **Distribution Channels:**
  - [ ] Printed Sunday bulletin & pulpit announcement (3–4 weeks out).
  - [ ] Ward email / Circle / text reminders (2 weeks out and 2 days out).
  - [ ] Personal invitations extended to new move-ins, less-active members, and friends of other faiths.
- [ ] **Signage:** Directional signs inside the building (restrooms, buffet line, allergen-free table, overflow seating).

---

## 6. Budget & Reimbursements
- [ ] **Spending Limits Set:** Each buyer knows their exact dollar cap before shopping.
- [ ] **Tax-Exempt Status:** Buyers have the Church tax-exempt certificate/number if applicable in your state.
- [ ] **Receipts & Reimbursement:** Itemized receipts submitted promptly to the Ward Clerk via LCR / reimbursement form.

---

## 7. Takedown, Cleaning & Building Lockup
- [ ] **Takedown Crew:** Specific team assigned to fold and return tables and chairs to storage racks.
- [ ] **Kitchen Cleanup:** Dishes washed/dried, counters sanitized, sinks emptied, appliances turned off, fridge cleared of leftovers.
- [ ] **Floor & Trash Cleanup:** Cultural hall swept/vacuumed, spills mopped, trash bags tied and taken to the exterior dumpster, fresh liners placed in cans.
- [ ] **Final Walkthrough & Lockup:** Who is responsible for checking all restrooms, classrooms, thermostats, lights, and exterior doors before leaving?
EOF

# --- Activities: Vendor & Venue Contacts ---
cat << 'EOF' > docs/activities/vendor-venue-contacts.md
# Local Venues, Parks & Vendor Contacts

Keep a running list of local pavilions, campsites, rental suppliers, and caterers that have worked well for past ward events.

| Venue / Vendor | Category | Contact / Booking Link | Lead Time Needed | Notes & Capacity |
| :--- | :--- | :--- | :--- | :--- |
| *Example: City Park Pavilion #2* | Outdoor Pavilion | *City Parks Dept / URL* | *60 days* | *Seats ~120, has power outlets and restrooms nearby.* |
| *Example: Local Grocery Catering* | Bulk Food / Ice | *(555) 123-4567* | *7 days* | *Good for bulk rolls, fruit trays, and bagged ice.* |
EOF

# --- Activities: Retrospective Template & Starter Retrospectives ---
cat << 'EOF' > docs/activities/retrospectives/template-retrospective.md
# Activity Retrospective Template

Complete this brief summary within 7 days of an event and submit it via **Propose a Change** so future coordinators have accurate numbers and lessons learned.

---

## Event Overview
* **Event Name & Date:** *[e.g., Ward Christmas Dinner — Dec 6, 2026]*
* **Activities Co-Chairs / Lead:** *[Names]*
* **Estimated Attendance:** *[e.g., ~145 adults, ~60 children]*
* **Total Budget vs. Actual Spend:** *[e.g., $450 budget / $412 spent]*

## Workstream Owners (Who Handled What)
* **Food & Allergens:** *[Organization / Lead]*
* **Room Layout & Decor:** *[Organization / Lead]*
* **Setup, Takedown & Cleaning:** *[Organization / Lead]*
* **Program / Music / Games:** *[Organization / Lead]*

## Food & Supplies Breakdown
* **What We Bought / Prepared:** *[Exact quantities—e.g., 25 lbs pulled pork, 180 buns, 4 cases water]*
* **What Was Left Over / Ran Short:** *[e.g., Ran out of gluten-free rolls; had 2 gallons of lemonade left over]*

## What Went Well (Keep Doing)
* 
* 

## What to Improve Next Time (Lessons Learned)
* 
* 
EOF

for event in \
  "ward-campout:Ward Campout" \
  "trunk-or-treat:Trunk-or-Treat" \
  "christmas-dinner:Christmas Dinner"
do
  slug="${event%%:*}"
  title="${event##*:}"
  cat << EOF > "docs/activities/retrospectives/${slug}.md"
# ${title} — Historical Retrospectives

Add new retrospectives at the top of this page each year using the [Retrospective Template](template-retrospective.md).

---

## [Year] ${title}
* **Date:** *[TBD]*
* **Attendance:** *[TBD]*
* **Key Notes:** *No retrospective logged yet—submit one after this year's event!*
EOF
done

git add .
git commit -m "Populate starter templates for organizations, operations, activities co-chairs, and retrospectives"
git push