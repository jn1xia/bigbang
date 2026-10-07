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
  the distance to the main stage and the nearest runway, eye height, the angle off the
  screen's centre line, and how much of the main and side screens a sightline raycast can
  see. It also shows how tall a performer looks at arm's length and the TV size the main
  screen looks like, and flags seats where the sound desk or a delay tower is in the way.
- **Crowd**: jointed fans with crown lightsticks fill the seats around you, at two levels of
  detail. One pose shader moves every fan and all of the lightstick glows together: a
  120 bpm bounce, a sway that travels round the bowl, and some fans pumping a fist. Seated
  fans wave at head height and standing fans raise their arms high. In House lights the
  arms come down and the stage is empty.
- **Performers**: three stand-in figures (generic, not likenesses) dance on the main stage,
  walk the runways to the platform and come back on a 50-second loop, each under a follow
  spot.
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

## Visitor counter

The published site shows "N visitors so far" under the title. It counts each browser once: the
first visit adds one and leaves a flag in the browser, and later visits only read the total. It
uses [Abacus](https://github.com/JasonLovesDoggo/abacus), a free counter service that needs no
account. It runs only on `jn1xia.github.io` and the Fly.io address, so local copies and previews
never change the count. If the service is slow or down, the line simply stays hidden.

- **See the total any time:** https://abacus.jasoncameron.dev/get/jn1xia.github.io/bigbang-visitors
- **Protect the count (optional, do it once):** anyone who knows the address could add fake hits,
  so it helps to own the counter. Before the counter goes live, open
  https://abacus.jasoncameron.dev/create/jn1xia.github.io/bigbang-visitors in a browser and save
  the `admin_key` it shows somewhere private (never in this repo). With that key you can later
  correct the number with Abacus's `/set` call. This only works before the first visit creates
  the counter.
- **Limits:** this counts browsers, not people. Someone visiting on a phone and a laptop counts
  twice, and clearing browser data or using private browsing counts again. Visitors who block
  the request (some ad blockers) are not counted.

### Full stats dashboard (optional)

For visitors per day, countries, devices and where people came from, sign up free at
[GoatCounter](https://www.goatcounter.com) (no cookies, no consent banner needed). Pick a site
code, then put it in `GOATCOUNTER_CODE` near the end of `index.html`.

## Deploy

The site is the single `index.html` file, so any static host works.

### GitHub Pages (free)

- **Right now, from this branch:** go to Settings → Pages → Build and deployment, set
  Source to "Deploy from a branch", then pick branch `ccr-57fb0333-5qp3yy` and folder
  `/ (root)`. The site goes live at https://jn1xia.github.io/bigbang/ in about a minute.
- **From `main`:** set Source to "GitHub Actions". `.github/workflows/pages.yml` then
  publishes every push to `main`, and you can also run it by hand from the Actions tab.

### Fly.io

Fly.io has no free tier for new accounts: you get a short trial, then pay-as-you-go. This
app runs one 256 MB machine in Singapore (`sin`) that stops when idle, so it costs very
little. `Dockerfile` serves `index.html` with nginx, and `fly.toml` holds the app settings.
Change `app` in `fly.toml` if the name is taken.

- **From your computer:** install `flyctl`, then run `fly auth login` and `fly deploy`. On
  the first run, `fly apps create bigbang-jis-seat-view` creates the app.
- **From GitHub Actions:** add a repository secret named `FLY_API_TOKEN` (create it with
  `fly tokens create org`). `.github/workflows/fly-deploy.yml` then deploys on every push
  to `main`, creating the app on the first run, and you can also run it from the Actions
  tab.
