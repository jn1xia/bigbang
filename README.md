# bigbang

Unofficial 3D seat-view simulator for **BIGBANG 2026–2027 World Tour XX : COSMOS** at
Jakarta International Stadium (Sat 16 & Sun 17 January 2027, 19:00 WIB).

Open `index.html` in a browser (it loads three.js r128 from cdnjs).

## What it does

- **My seat**: first-person view from any seat at eye height, seated or standing. Drag to
  look around; scroll, pinch or use the Eyes / 2× / 4× buttons to zoom.
- **Stadium**: orbit the whole bowl, with sections tinted by ticket category. Click a section
  to sit there.
- **Seat panel**: pick a seat from the map, section list, or row and seat sliders. It shows
  the distance to the main stage and the B-stage, eye height, the angle off the screen's
  centre line, and how much of the main and side screens a sightline raycast can see. It
  also shows how tall a performer looks at arm's length and the TV size the main screen
  looks like.
- **Show / House lights**: moving beams, lasers, LED screens and a yellow lightstick ocean,
  or the stadium floodlights.
- **Roof open / closed**: JIS's retractable roof (January is rainy season in Jakarta).

## Data

Ticket categories and prices follow PK Entertainment's September 2026 announcement. Prices
exclude 10% tax and the 6% platform fee:

| Category | Type | Price |
| --- | --- | --- |
| Ultimate VIP | Standing | Rp6.500.000 |
| Diamond VIP | Numbered seat | Rp6.000.000 |
| Gold VIP | Numbered seat | Rp5.500.000 |
| CAT 1 A/B | Numbered seat | Rp4.750.000 |
| CAT 2 | Numbered seat | Rp3.750.000 |
| CAT 3 | Numbered seat | Rp2.850.000 |
| CAT 4 | Numbered seat | Rp2.550.000 |
| CAT 5 A/B | Numbered seat | Rp2.250.000 |
| CAT 6 A/B | Numbered seat, restricted view | Rp1.850.000 |
| CAT 7 A/B | Numbered seat, restricted view | Rp1.550.000 |

Where each category sits follows the official seat map:

- **Floor:** the main stage at one end with three runways fanning out to a platform. The two
  Ultimate VIP pens are between the runways, Diamond VIP is on either side of them, and Gold
  VIP is at the back around the sound desk (FOH) and delay towers.
- **Lower tier:** CAT 1 A/B on the sides level with the runways, CAT 6 A/B beside the stage,
  and CAT 2 everywhere else.
- **Middle tier:** CAT 3 all the way round, with CAT 6 A/B beside the stage.
- **Upper tier:** CAT 5 A/B on the sides nearer the stage, CAT 7 A/B beside the stage, and
  CAT 4 at the far end and the far half of the sides.
- **Behind the stage:** not on sale.

The stadium shell uses JIS's published figures: three tiers raked at 24°, 29° and 32°, about
82,000 seats, and a retractable roof. Exact block edges, section numbers, row counts and stage
sizes are **estimates**, so confirm your seat against the official map.

Not affiliated with YG Entertainment, PK Entertainment or Jakarta International Stadium.
