import 'package:gamezi/utils/images.dart';

List<Map<String, dynamic>> gameData = [
  {
    "title": "Alien Invasion",
    "slug": "alien-invasion",
    "gameUrl": "https://cykod.github.io/AlienInvasion/",
    "fullGameUrl": MyImages.alienFull,
    "halfGameUrl": MyImages.alienHalf,
    "imageUrl": "https://raw.githubusercontent.com/cykod/AlienInvasion/master/images/sprites.png",
    "description":
        "HTML5 space shooter: move your ship and fire upward to clear aliens before they descend to the bottom.",
    "longDescription":
        "Alien Invasion is a lightweight browser shooter built with vanilla JavaScript and HTML5 Canvas. You pilot a small ship along the bottom of the screen, sliding left and right while firing upward to thin out marching rows of aliens. The pace ramps up as the formation advances, pushing you to place shots efficiently and keep lanes open.\n\nOriginally created as a teaching example for early chapters of Mobile HTML5 Game Development, the project focuses on clarity over complexity: a compact codebase, straightforward sprites, and simple sound. It runs instantly in modern browsers and supports both keyboard and touch input, making it easy to try on desktop or phone. Whether you want a quick arcade fix or a clean reference for canvas game structure, it gets you playing (and reading) fast.",
    "about":
        "Open-source HTML5/Canvas game by Pascal Rettig (cykod), written in plain JavaScript and dual-licensed under MIT and GPL-2.0.",
    "aboutThisGame": {
      "genre": "Space shooter",
      "sessionLength":
          "Typical runs last 1–5 minutes depending on how quickly the formation advances.",
      "coreSkills": [
        "Control horizontal positioning",
        "Time shots to open safe lanes",
        "Read alien movement patterns"
      ],
      "bestFor": [
        "Fans of retro arcade shooters",
        "Quick coffee-break sessions",
        "Developers studying simple canvas games"
      ],
      "monetization": "Free, no IAP/ads."
    },
    "features": [
      "Instant, no-install web build using HTML5 Canvas",
      "Keyboard and touch controls for desktop and mobile",
      "Marching alien formation with rising pressure",
      "Score tracking and straightforward feedback"
    ],
    "howToPlayQuick": {
      "desktop": "Use Left/Right arrow keys to move and Space to shoot.",
      "mobile": "Touch and hold left/right sides to move; tap to fire.",
      "goal": "Clear the alien formation before it reaches the bottom of the screen."
    },
    "proTips": [
      "Chip away at edges to slow the formation’s drop and create safe lanes.",
      "Keep moving after each shot so you’re not trapped under a column.",
      "Prioritize columns that are closest to the bottom to buy time."
    ],
    "whyPeopleLoveIt": [
      "Picks up instantly and feels like a classic arcade run.",
      "Clean, readable code that’s great for learning Canvas basics.",
      "Runs on almost any modern browser, desktop or phone."
    ],
    "howToPlay": [
      "Press Play to start a new run in your browser.",
      "Slide left or right along the bottom to line up shots.",
      "Fire upward to remove aliens and keep lanes clear.",
      "Survive until the screen is clear—or the aliens reach the bottom."
    ],
    "tags": ["arcade", "space", "shooter", "html5", "canvas", "browser", "retro", "open source"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "Clumsy Bird",
    "slug": "clumsy-bird",
    "gameUrl": "https://aloca-flutter.netlify.app/clumsy-bird/index.html",
    "fullGameUrl": MyImages.birdFull,
    "halfGameUrl": MyImages.birdHalf,
    "imageUrl": "https://ellisonleao.github.io/clumsy-bird/favicon.ico",
    "description":
        "Tap to keep a clumsy bird aloft and glide through tight gaps in this fast, skill-based browser arcade.",
    "longDescription":
        """Clumsy Bird is a simple, timing-first flying game you can open in any modern browser and start playing right away. Your only job is to tap and give the bird just enough lift to slip between wooden pylons without touching them. Miss the rhythm and gravity wins; tap too hard and you bonk the ceiling. Because the physics stay predictable, every run feels fair and every mistake is learnable.
There are no upgrades, coins, or energy bars here. It is a pure high-score loop made for short breaks, warm-ups, or testing your reflexes before you jump into heavier games. Restarts are instant, so it is easy to chase "one more try" over and over.
This version is ideal for players who want a lightweight, mobile-friendly arcade challenge that still rewards precision and focus. It works on desktop with a mouse click or spacebar too, so it is a good skill trainer for anyone who likes tap-to-fly, physics-based browser games, and small competitive challenges.""",
    "about":
        "Clumsy Bird is a community-made, tap-to-fly arcade project you can play for free in the browser. It is inspired by classic obstacle runners but released as an open, non-commercial experience with clean, skill-first gameplay.",
    "aboutThisGame": {
      "genre": "Tap-to-fly arcade / timing-based obstacle runner",
      "sessionLength":
          "Most runs last 10–60 seconds, and you can instantly restart to chase a better score.",
      "coreSkills": [
        "Rhythmic tap control to counter gravity",
        "Reading gaps early and choosing a safe flight line",
        "Fine micro-adjustments for tight obstacle spacing"
      ],
      "bestFor": [
        "Players who enjoy short, replayable browser games",
        "Mobile users who want no-download arcade challenges",
        "People practicing reaction time and steady hand control"
      ],
      "monetization":
          "Play-only experience — no shop, no pay-to-win boosts, no account requirement."
    },
    "features": [
      "Instant browser play — crash, restart, and try again in seconds.",
      "Predictable physics and readable obstacles so every failure makes sense.",
      "Responsive controls on desktop (click/Space) and mobile (tap).",
      "Score-focused design that rewards consistent rhythm over grinding items."
    ],
    "howToPlayQuick": {
      "desktop":
          "Press Space or left-click to flap in short bursts, keeping the bird aligned as each set of pylons approaches.",
      "mobile":
          "Tap the screen with a steady tempo — light taps lift a little, faster taps lift more, so aim to glide instead of bounce.",
      "goal":
          "Fly through as many gaps as possible in one continuous run and beat your previous distance score."
    },
    "proTips": [
      "Think ahead — start your lift just before reaching a gap so you glide through instead of spiking upward late.",
      "Use small recovery taps right after a climb to level out and avoid overcorrecting into the next obstacle.",
      "If your finger gets tense, take one quick break — relaxed rhythm makes the bird easier to control."
    ],
    "whyPeopleLoveIt": [
      "Zero setup: open the page and you are playing in under a second.",
      "Progress feels earned because outcomes depend on timing, not unlocks or luck.",
      "Short, focused attempts that fit between tasks, classes, or calls."
    ],
    "howToPlay": [
      "Tap or click to flap upward; let gravity pull you down when you need to drop.",
      "Watch the next obstacle, not just the bird — choosing your line early keeps movements smooth.",
      "Maintain an even tap rhythm; irregular taps make the bird lurch and hit walls.",
      "After a crash, restart right away and repeat the pattern that felt most controllable."
    ],
    "tags": ["arcade game", "tap-to-fly", "skill-based", "browser game", "open source"],
    "platform": [
      "Web",
    ]
  },
  {
    "title": "Custom Tetris",
    "slug": "custom-tetris",
    "gameUrl": "https://ondras.github.io/custom-tetris/",
    "fullGameUrl": MyImages.customTetrisFull,
    "halfGameUrl": MyImages.customTetrisHalf,
    "imageUrl": "https://raw.githubusercontent.com/ondras/custom-tetris/master/screenshot.png",
    "description":
        "Modular Tetris where you choose pieces as attacker or place them as defender, with AI and optional networked play.",
    "longDescription":
        "Custom Tetris rethinks the classic falling-block puzzle by splitting the action into two roles. The defender plays standard Tetris—moving, rotating, and dropping pieces to clear lines and avoid topping out. The attacker chooses which pieces arrive next from a small stash; when the stash is spent, it fully refreshes. You can mix humans, AI, random selection, or networked opponents, and even switch roles during a match, which produces very different rhythms and strategies.\n\nCreated for GitHub Game Off 2013, it’s a lightweight web build in vanilla JavaScript. Network play uses a simple Firebase backend (you provide a database URL), so head-to-head experiments are easy to try. It’s a neat sandbox for testing balance ideas—how hard can you make life for the defender, and how well can a defender adapt under pressure?",
    "about":
        "Open-source browser game by Ondřej Žára, written in vanilla JS for GitHub Game Off 2013 and released under the BSD-3-Clause license.",
    "aboutThisGame": {
      "genre": "Falling-block puzzle",
      "sessionLength": "Typical runs last 1–10 minutes depending on skill and role.",
      "coreSkills": [
        "Plan placements under pressure",
        "Anticipate piece sequences",
        "Adapt tactics when switching roles"
      ],
      "bestFor": [
        "Fans of classic Tetris variants",
        "Short coffee-break sessions",
        "Experimenters who enjoy AI and multiplayer"
      ],
      "monetization": "Free, no IAP/ads."
    },
    "features": [
      "Switchable roles: attacker (choose pieces) or defender (place pieces)",
      "Human, AI, random, or networked combinations (up to 12 matchups)",
      "Piece stash that refreshes when spent, shaping tempo and strategy",
      "Simple, fast web build—keyboard and mouse friendly"
    ],
    "howToPlayQuick": {
      "desktop":
          "Use arrow keys to move, rotate, and drop; click pieces or press number keys when attacking.",
      "mobile":
          "Tap piece icons when attacking; defender controls require a hardware keyboard, so touch-only play is limited.",
      "goal":
          "Keep the stack below the top by clearing lines—or as attacker, choose pieces that overwhelm the defender."
    },
    "proTips": [
      "As attacker, cycle the stash early by sending awkward shapes to set up tougher follow-ups.",
      "Keep a flat surface and a clean well to preserve last-second rotation options.",
      "Practice both roles to learn which shapes cause trouble and how to recover from them."
    ],
    "whyPeopleLoveIt": [
      "A fresh twist where you influence which pieces appear, not just how to place them.",
      "Quick sessions that work for solo practice or head-to-head experiments.",
      "Lightweight web build that runs instantly in a browser."
    ],
    "howToPlay": [
      "Choose the attacker (human, AI, random, or network) and the defender (human, AI, or network).",
      "If attacking, click a piece or press its number to send it; the stash refills when it’s empty.",
      "If defending, use the arrow keys to position, rotate, and drop pieces to clear lines.",
      "Play until the stack tops out or you outlast the opponent; try network play with a Firebase URL."
    ],
    "tags": ["tetris", "falling blocks", "puzzle", "multiplayer", "ai", "browser", "open source"],
    "platform": ["Web"]
  },
  {
    "title": "0h h1",
    "slug": "0h-h1",
    "gameUrl": "https://0hh1.com/",
    "fullGameUrl": MyImages.ohH1Full,
    "halfGameUrl": MyImages.ohH1Half,
    "imageUrl": "https://0hh1.com/icon-192.png",
    "description":
        "Fill a red-blue grid by applying three Takuzu rules in a calm, browser-based logic challenge.",
    "longDescription":
        """0h h1 is a clean, two-color logic puzzle you can open in your browser whenever you want a short, thoughtful break. Every board follows three Takuzu rules: never place three of the same color in a row, keep each row and column perfectly balanced, and make sure no two lines are identical. Because of these fixed constraints, every move can be justified — you don’t have to guess or brute-force.

Smaller grids are great for learning the pattern, while bigger ones feel like deeper deduction sessions where you scan, compare, and spot forced placements. There’s no timer and no sound spamming you, so it works well as a daily brain teaser, focus warm-up, or a calm alternative to louder puzzle games.

The interface stays intentionally minimal: high-contrast tiles, simple desktop clicks and mobile taps, and no account requirement. If you enjoy Sudoku, Nonograms, or other browser logic puzzle games, this binary grid variant gives you the same “I figured it out” moment but in a faster, compact format.""",
    "about":
        "A distraction-free, browser-first binary puzzle inspired by Takuzu rules. Built for people who like proving every move, not guessing, and who prefer simple visuals over noisy UI.",
    "aboutThisGame": {
      "genre": "Binary logic / Takuzu-style puzzle",
      "sessionLength":
          "Most boards take 2–10 minutes depending on size and how carefully you solve.",
      "coreSkills": [
        "Logical deduction",
        "Pattern and symmetry recognition",
        "Row/column comparison",
        "Step-by-step problem solving"
      ],
      "bestFor": [
        "Daily brain training",
        "Quiet focus time at work or school",
        "Fans of Sudoku-like browser puzzles",
        "Players who enjoy provable solutions"
      ],
      "monetization":
          "Playable in the browser with no paywalls, energy limits, or forced purchases — just pure logic."
    },
    "features": [
      "Three clear rules (no triples, balance lines, uniqueness) that create surprisingly deep deductions.",
      "High-contrast tiles and a minimal layout so the puzzle is readable on desktop, tablet, and mobile.",
      "Untimed sessions — think, undo, and recheck rows at your own pace.",
      "Randomized and scalable boards for long-term replayability.",
      "Great companion to other online puzzle, brain teaser, and logic grid games."
    ],
    "howToPlayQuick": {
      "desktop":
          "Click a cell to switch its color and complete the grid while respecting the three core rules.",
      "mobile":
          "Tap a cell to toggle its color; use long-press or a second tap (if supported) to mark a spot to revisit.",
      "goal":
          "Finish the board so every row and column follows the no-triples rule, stays balanced, and remains unique."
    },
    "proTips": [
      "Scan for illegal triples first — places where two tiles already match often tell you what the third must be.",
      "Count colors per line early; if a row already has half of one color, the rest must be the other color.",
      "Compare neighboring rows and columns — the uniqueness rule is perfect for breaking ties when two lines look almost the same.",
      "If you get stuck, switch to columns; sometimes the deduction is vertical, not horizontal."
    ],
    "whyPeopleLoveIt": [
      "Every puzzle is solvable by logic, so finishing it feels earned.",
      "Calm, minimal presentation that doesn’t fight for your attention.",
      "Good on both desktop and mobile, so it’s easy to play during short breaks."
    ],
    "howToPlay": [
      "Fill the grid with two colors and make sure no row or column contains three of the same color in a row.",
      "Keep every row and column balanced — half of one color, half of the other.",
      "Check that no two rows and no two columns are identical once filled.",
      "Solve methodically: clear obvious rows first, then recheck columns for forced placements."
    ],
    "tags": [
      "puzzle",
      "logic",
      "binary puzzle",
      "takuzu",
      "brain teaser",
      "browser",
      "online logic game",
      "grid puzzle",
      "daily puzzle"
    ],
    "platform": [
      "Web",
      "Mobile",
    ],
  },
  {
    "title": "0h n0",
    "slug": "0h-n0",
    "gameUrl": "https://0hn0.com/",
    "fullGameUrl": MyImages.ohNoFull,
    "halfGameUrl": MyImages.ohNoHalf,
    "imageUrl": "https://0hn0.com/icon-192.png",
    "description":
        "Line-of-sight logic puzzle: place circles and blockers so every numbered dot sees exactly the right amount.",
    "longDescription":
        """0h n0 is a thoughtful, grid-based logic puzzle you can open in the browser with no setup. Every numbered dot looks outward in four straight lines (up, down, left, and right) and tells you how many blue circles it should be able to see before a blocker stops the view. Your job is to decide which cells become circles and which become blockers so that all numbers end up correct. Because every placement can change several sightlines at once, progress comes in satisfying chain reactions: one confirmed circle can force a blocker, which then solves a nearby number. The interface is clean and easy to read on desktop or mobile, so you can focus on deduction instead of UI. There is no timer, no move limit, and most boards finish in a few minutes, making it a good fit for work breaks, classrooms, or daily brain warmups. If you enjoy nonograms, Minesweeper, or other visibility-based browser puzzle games, this gives you the same calm “I figured it out” feeling without extra complexity.""",
    "about":
        "A readable, sightline-based browser puzzle where vision matters more than arithmetic. Play short, self-contained boards, track visibility, and solve at your own pace.",
    "aboutThisGame": {
      "genre": "Browser puzzle / line-of-sight deduction",
      "sessionLength": "Most boards take 3–10 minutes; larger grids can take a little longer.",
      "coreSkills": [
        "Spatial reasoning and visibility planning",
        "Incremental constraint solving",
        "Noticing chain reactions after each move"
      ],
      "bestFor": [
        "Players who like quiet, logic-first browser games",
        "Short mental breaks and daily puzzle routines",
        "Teachers or parents who want no-login, no-install puzzles"
      ],
      "monetization": "Runs in the browser with no paywalls or energy systems."
    },
    "features": [
      "Numbers scan in straight lines, so every circle or blocker immediately updates nearby counts.",
      "Blockers add clear, satisfying deduction moments by cutting off long lines of sight.",
      "Soft, minimal layout that keeps attention on the puzzle (good for classrooms or focus sessions).",
      "Replay-friendly boards so you always have a new logic challenge in the browser."
    ],
    "howToPlayQuick": {
      "desktop":
          "Click an empty cell to place a blue circle; click again to mark it as blocked. Watch the numbers to see if their visible circles now match.",
      "mobile":
          "Tap to add a circle, then tap again or use a long-press (if supported) to switch to a blocker. Recheck the lines after each move.",
      "goal":
          "Finish the grid so every numbered node’s line of sight matches its number exactly, with no extra circles."
    },
    "proTips": [
      "Start with obvious numbers like 0 (block everything it can see) or high counts that are already almost full.",
      "When a number reaches its target, immediately block the rest of the cells in that sightline to avoid overcounting.",
      "If you get stuck, scan rows and columns again from top to bottom; one new blocker often unlocks several forced circles."
    ],
    "whyPeopleLoveIt": [
      "Pure deduction without guesswork or heavy math.",
      "Plays smoothly in the browser on laptop, tablet, or phone.",
      "Short, low-stress sessions that still feel rewarding when solved."
    ],
    "howToPlay": [
      "Look for numbers whose visible cells are already mostly filled and place the remaining circles there.",
      "When a number is satisfied, place blockers in the remaining visible cells for that number.",
      "Alternate between horizontal and vertical checks so you do not miss new constraints.",
      "Continue refining until every numbered dot sees the correct count of blue circles."
    ],
    "tags": [
      "puzzle",
      "logic",
      "line-of-sight",
      "deduction",
      "browser",
      "free online",
      "number puzzle"
    ],
    "platform": [
      "Web",
      "Mobile",
    ],
  },
  {
    "title": "Infectors",
    "slug": "infectors",
    "gameUrl": "https://satanas.github.io/infectors/",
    "fullGameUrl": MyImages.infectorsFull,
    "halfGameUrl": MyImages.infectors,
    "imageUrl": "https://raw.githubusercontent.com/satanas/infectors/master/ss1.png",
    "description":
        "Sokoban-style puzzles: push cryogenic capsules to trap viruses across a set of handcrafted levels.",
    "longDescription":
        "Infectors is a compact, Sokoban-like puzzle game where every move matters. Your job is to push cryogenic capsules around a grid so they collide with viruses and contain the outbreak. The rules are simple—capsules slide one tile per push and obstacles block movement—but the layouts demand careful planning to avoid dead-ends and wasted moves.\n\nOriginally built in 2007 and later ported to the web, this version runs in the browser using JavaScript and Phaser. It includes 21 short, focused levels, a minimal HUD, and convenient hotkeys for restarting, pausing, and muting. The clean presentation keeps attention on the puzzle logic, making it easy to learn and satisfying to master.",
    "about":
        "Open-source browser puzzle by Wil Alvarez, written in JavaScript with Phaser and released under CC BY-NC-SA 4.0.",
    "aboutThisGame": {
      "genre": "Sokoban-like puzzle",
      "sessionLength": "Most levels take 1–5 minutes; a full run can fit in a short break.",
      "coreSkills": [
        "Plan push sequences ahead",
        "Prevent cornering capsules",
        "Read the board to avoid dead-ends"
      ],
      "bestFor": [
        "Fans of classic block-pushing puzzles",
        "Quick coffee-break sessions",
        "Keyboard-first desktop play"
      ],
      "monetization": "Free, no IAP/ads."
    },
    "features": [
      "21 handcrafted levels with escalating complexity",
      "Instant in-browser play—no download",
      "Responsive keyboard controls: restart, pause/menu, mute",
      "Clear objectives: trap every virus to finish a stage"
    ],
    "howToPlayQuick": {
      "desktop": "Use arrow keys to move/push; Esc opens the menu, R restarts, Q quits, M mutes.",
      "mobile": "Designed for keyboard play; touch-only devices are not fully supported.",
      "goal": "Contain all viruses by pushing capsules into them without soft-locking the board."
    },
    "proTips": [
      "Avoid pushing capsules into corners unless it captures a virus.",
      "Walk the route mentally before the first push to spot traps.",
      "Use quick restarts to iterate on tricky openings."
    ],
    "whyPeopleLoveIt": [
      "Simple rules with puzzles that reward careful planning.",
      "Short, satisfying levels that fit neatly into spare moments.",
      "Clean, distraction-free presentation that highlights the logic."
    ],
    "howToPlay": [
      "Load the game and review the brief tutorial.",
      "Use the arrow keys to move and push capsules around walls and corridors.",
      "Line up pushes so a capsule collides with a virus to contain it.",
      "Clear all viruses to finish the level and advance to the next."
    ],
    "tags": ["sokoban", "puzzle", "grid-based", "browser", "phaser", "keyboard", "open source"],
    "platform": ["Web"]
  },
  {
    "title": "Slow Roads",
    "slug": "slow-roads",
    "gameUrl": "https://slowroads.io/",
    "fullGameUrl": MyImages.carRacingFull,
    "halfGameUrl": MyImages.carRacingHalf,
    "imageUrl": "https://slowroads.io/favicon.ico",
    "description":
        "Gentle, endless road trip through procedural 3D hills — drive at your pace, no laps or timers.",
    "longDescription":
        """Slow Roads is a slow-paced, browser-based driving experience for players who like movement more than medals. You start on a procedurally generated stretch of countryside and the game keeps streaming soft hills, S-bends, bridges, and open valleys ahead of your car. There are no races to win, no AI traffic, and no mission timer pushing you — it feels closer to a road-trip toy or driving meditation than to a classic racing game. Steering is physics-aware but forgiving, so light inputs keep you glued to the path and let you enjoy the 3D scenery. Switch camera angles to find the view that relaxes you, or pull back for a mini cruising sim. If you usually play fast racers, 3D maze driving games, or browser physics puzzles, this is the quiet cooldown between them. Play in short bursts during work breaks or leave it running in another tab while you decompress and listen to music.""",
    "about":
        "A peaceful, in-browser driving toy that prioritizes flow, natural scenery, and low-stress cruising over winning or leaderboards.",
    "aboutThisGame": {
      "genre": "Relaxed driving / procedural cruising sim",
      "sessionLength":
          "Short 2–3 minute drives or longer 15–25 minute scenic sessions, depending on your mood.",
      "coreSkills": [
        "Reading curves early and setting up smooth steering lines",
        "Choosing a camera view that keeps the road readable",
        "Maintaining a comfortable rhythm instead of racing full speed"
      ],
      "bestFor": [
        "Players who want to unwind after competitive or ranked matches",
        "People who enjoy open-road or road-trip style driving games",
        "Anyone looking for a background-friendly browser driving experience"
      ],
      "monetization":
          "Text on this page is purely informational for SEO/players. Actual in-game ads or monetization, if present, follow the game host’s own policy."
    },
    "features": [
      "Endless, procedurally generated roads that continually stream new hills, bends, and countryside.",
      "Zero race pressure — no laps, no rivals, no countdowns, just relaxed point-to-point cruising.",
      "Multiple camera angles so you can drive close to the hood or zoom out for a scenic overview.",
      "Runs directly in the browser with a light footprint, ideal for quick breaks or tabbed play."
    ],
    "howToPlayQuick": {
      "desktop":
          "Use Arrow keys or WASD to steer, accelerate, and brake. Tap C (or the camera key shown in the build) to flip through views until the road feels clear.",
      "mobile":
          "Plays best with keyboard-equipped devices or desktop browsers. On some mobile browsers, tilt/touch sensitivity can vary, so keep steering inputs light.",
      "goal":
          "Stay on the road, look ahead, and cruise through the flowing 3D landscape at whatever pace lets you relax and enjoy the scenery."
    },
    "proTips": [
      "Keep your eyes a few turns ahead — the earlier you spot a curve, the smoother your steering line will be.",
      "Feather the throttle when climbing blind hills or turning over crests so you don’t float off the road.",
      "If the road feels bumpy or hard to read, switch camera views; a higher angle often makes procedural terrain clearer."
    ],
    "whyPeopleLoveIt": [
      "It’s a true low-pressure driving loop — you can just drive without being judged.",
      "Scenery keeps changing thanks to procedural generation, so runs don’t feel copy-pasted.",
      "Perfect for cool-down sessions between high-intensity racers, shooters, or puzzle levels."
    ],
    "howToPlay": [
      "Start moving and immediately pick a camera view that makes the road easiest to read.",
      "Use light, gradual steering instead of fast, twitchy inputs to keep the car stable on curves.",
      "Ease off the accelerator before tight bends, hills, or S-curves — staying in control is more fun than speeding.",
      "Drive for as long as the landscape feels soothing, then jump back in later for another quiet cruise."
    ],
    "tags": [
      "driving game",
      "relaxing",
      "procedural roads",
      "browser cruising",
      "low pressure",
      "3D scenery"
    ],
    "platform": [
      "Web",
      "Mobile",
    ],
  },
  {
    "title": "N-GON",
    "slug": "n-gon",
    "gameUrl": "https://landgreen.github.io/n-gon/",
    "fullGameUrl": MyImages.robotFull,
    "halfGameUrl": MyImages.robotHalf,
    "imageUrl": "https://www.google.com/s2/favicons?sz=256&domain=landgreen.github.io",
    "description":
        "Physics-heavy browser roguelite arena — dodge waves, stack upgrades, and push a survival run as far as you can.",
    "longDescription":
        """N-GON is a fast, open-source arena shooter you can play directly in the browser. Each run drops you on a clean, readable battlefield where enemy shapes spawn in waves and pressure you to dodge, strafe, and line up shots. Between rounds you choose upgrades that stack together — extra projectiles, bouncing bullets, pierce, reload loops, or defensive fields — so a basic gun slowly turns into a wild physics-driven build. Because the visuals stay minimal and high-contrast, it’s easy to track bullets and attack cones, which means most failures come from your decisions, not clutter. There’s no grind, no download, and no paywall; every attempt is self-contained and perfect for short desktop gaming sessions or quick browser breaks. Veteran roguelite players can chase high-wave runs and experiment with perk synergies, while newcomers can simply practice movement and aiming. If you enjoy wave-based survival roguelites, browser physics shooters, or open-source WebGL action games, this one rewards smart positioning and upgrade choices.""",
    "about":
        "Compact, wave-based browser shooter where every run is fresh. Pick perks, test builds, survive as long as you can — no currency grind, no paywall.",
    "aboutThisGame": {
      "genre": "2D arena shooter / roguelite survival (browser)",
      "sessionLength": "3–15 minutes per run, longer if your build snowballs.",
      "coreSkills": [
        "Precise WASD movement and mouse aiming under pressure.",
        "Reading projectile paths and choosing safe spaces in the arena.",
        "Building upgrade synergies that multiply damage or survivability."
      ],
      "bestFor": [
        "Players who like Vampire Survivors–style escalation but want manual shooting.",
        "Browser/desktop players who want quick action without downloading anything.",
        "People curious about open-source WebGL / HTML5 shooter projects."
      ],
      "monetization": "Completely free to play in the browser — no ads, no gacha, no currencies."
    },
    "features": [
      "Wave-by-wave arena fights with clear, high-contrast bullets and enemy shapes.",
      "Upgradeable weapon paths: multishot, bounce, pierce, defensive fields, reload engines.",
      "Instant retries so you can experiment with different perk chains right away.",
      "Open-source project and community that tests balance and new content ideas."
    ],
    "howToPlayQuick": {
      "desktop":
          "Move with WASD, aim with the mouse, hold left-click to fire. Tap right-click or Space to trigger your temporary control/defense field.",
      "mobile":
          "Best played with keyboard and mouse for precise aiming; touch-only is possible but less accurate.",
      "goal":
          "Survive increasingly dense waves, grab an upgrade after each round, and turn your starter gun into a physics-heavy arena build that clears space fast."
    },
    "proTips": [
      "Prioritize reload, projectile count, or bounce early — they make every later damage perk stronger.",
      "Fight near corners or cover so enemies line up instead of surrounding you in open space.",
      "Use the field ability early to create an escape lane; don’t wait until the arena is fully closed."
    ],
    "whyPeopleLoveIt": [
      "Runs stay readable even when the screen is busy, so deaths feel fair.",
      "Skill and build choices matter more than grinding resources.",
      "Plays instantly in the browser — easy to share or play on a break."
    ],
    "howToPlay": [
      "Use WASD to strafe, kite, and circle enemies while aiming and firing with the mouse.",
      "Watch your field ability cooldown and trigger it to slow/control crowds or protect a retreat.",
      "When choosing upgrades, pair hit-multipliers (multishot, bounce, pierce) with sustain (reload, shields) to handle late waves.",
      "Control space: fight along walls and choke points to make narrow kill zones instead of running in the open middle."
    ],
    "tags": [
      "shooter",
      "roguelite",
      "arena",
      "open source",
      "physics",
      "browser",
      "wave-based",
      "webgl"
    ],
    "platform": [
      "Web",
    ],
  },
  {
    "title": "Hextris",
    "slug": "hextris",
    "gameUrl": "https://hextris.github.io/hextris/",
    "fullGameUrl": MyImages.hextrisFull,
    "halfGameUrl": MyImages.hextris,
    "imageUrl": "https://github.com/Hextris/hextris/raw/gh-pages/images/twitter-opengraph.png",
    "description":
        "Rotate a hexagon to match falling colored bars, clear groups, and keep stacks from spilling past the boundary.",
    "longDescription":
        "Hextris is a fast, elegant twist on falling-block puzzles. Colored bars drop toward a central hexagon from its six sides; you rotate the hexagon to line up matching colors. Three or more touching bars of the same color clear, letting higher pieces slide down and setting up chain reactions. As time passes the pace quickens, so quick reads and timely rotations matter.\n\nThe loss condition is simple: if stacks grow beyond the outer grey ring, the run ends. Chaining clears creates short combo windows that reward planning and composure under speed. Runs are short and replayable, inviting you to push a little farther and refine your rhythm each time.",
    "about":
        "Open-source HTML5/JavaScript browser game by Logan Engstrom, Garrett Finucane, Noah Moroze, and Michael Yang; released under the GPL-3.0 license.",
    "aboutThisGame": {
      "genre": "Rotating match-3 puzzler",
      "sessionLength": "Typical runs last 30 seconds to 5 minutes as speed ramps up.",
      "coreSkills": [
        "Track six lanes and prioritize threats",
        "Time rotations to trigger combos",
        "Balance faces to avoid overstacking"
      ],
      "bestFor": [
        "Fans of quick, replayable score chases",
        "Players who enjoy pattern matching under pressure",
        "Anyone looking for a clean, one-button-feel browser game"
      ],
      "monetization": "Free, no IAP/ads."
    },
    "features": [
      "Six-sided board with falling bars from every edge",
      "Color matches clear instantly; chain clears for combo windows",
      "Speed increases over time for escalating challenge",
      "High-score chase with instant restart"
    ],
    "howToPlayQuick": {
      "desktop": "Use Left/Right arrows (or A/D) to rotate the hexagon and align colors.",
      "mobile": "Tap the left or right side of the screen to rotate the hexagon in that direction.",
      "goal":
          "Keep stacks inside the grey boundary by clearing matching colors before they spill over."
    },
    "proTips": [
      "Rotate early to bring near-matches together and avoid last-second scrambles.",
      "Clear the tallest face first, then rebalance to keep all sides playable.",
      "Use combo windows to remove multiple colors quickly instead of single clears."
    ],
    "whyPeopleLoveIt": [
      "Immediate, one-mechanic gameplay that’s easy to learn and hard to put down.",
      "Satisfying chain clears and clutch saves as speed increases.",
      "Minimalist presentation that runs instantly in any modern browser."
    ],
    "howToPlay": [
      "Start a run and watch where bars begin falling toward the center hexagon.",
      "Rotate the hexagon to align three or more bars of the same color on a face.",
      "Clear matches to create space; chain clears to extend combo time.",
      "Survive as speed ramps up—your run ends if any stack crosses the outer ring."
    ],
    "tags": [
      "puzzle",
      "arcade",
      "match-3",
      "tetris-like",
      "browser",
      "fast-paced",
      "hexagon",
      "open source"
    ],
    "platform": ["Web", "Mobile"]
  },
  // {
  //   "title": "Astray",
  //   "slug": "astray",
  //   "gameUrl": "https://wwwtyro.github.io/Astray/",
  //   "fullGameUrl": MyImages.astreyFull,
  //   "halfGameUrl": MyImages.astrayHalf,
  //   "imageUrl": "https://wwwtyro.github.io/Astray/images/screenshot.png",
  //   "description":
  //       "Roll a physics-driven ball through a clean 3D maze, balancing speed and camera control to reach the goal without falling.",
  //   "longDescription":
  //       """Astray is a skill-first 3D maze game you can play directly in your browser. Guide a single ball across raised platforms, narrow bridges, and angled corners while the physics engine keeps every push honest. Small movements help you stay on track; rushed inputs make the ball drift or roll past the turn. Because it’s rendered in WebGL, the space stays clear and easy to read, with bright edges that show the next platform. Early stages teach balance and camera control, then later layouts ask for sharper timing, smarter zoom levels, and better path planning. You can always pause yourself to rotate the view, zoom out, and map the safest line before moving again, so progress feels earned, not random. Astray also works well as a browser physics puzzle for casual players, speed-focused runs, and anyone who enjoys shaving seconds off a clean route without dealing with power-ups or paywalls.""",
  //   "about":
  //       "A focused 3D ball-rolling maze with realistic momentum, clean lighting, and a minimal UI so you can read platforms quickly and concentrate on control.",
  //   "aboutThisGame": {
  //     "genre": "3D maze / physics-rolling challenge",
  //     "sessionLength":
  //         "1–5 minutes per stage; tougher layouts can take longer if you line up angles carefully.",
  //     "coreSkills": [
  //       "Controlling momentum on narrow paths and corners",
  //       "Rotating/zooming the camera to keep obstacles visible",
  //       "Planning short, safe movement lines instead of rushing"
  //     ],
  //     "bestFor": [
  //       "Players who like precision movement and calm inputs",
  //       "Browser gamers who want quick, restart-friendly sessions",
  //       "Desktop users testing WebGL physics games"
  //     ],
  //     "monetization":
  //         "Pure gameplay — no upgrade grind, no energy timers, no forced in-level purchases."
  //   },
  //   "features": [
  //     "Smooth WebGL presentation with sharp edges so platforms stay readable on desktop browsers.",
  //     "Physics tuned for patient, gradual movement that rewards careful players over button mashing.",
  //     "Progressive level layouts that raise difficulty fairly instead of using surprise traps.",
  //     "Instant restarts and short objectives, great for practising tricky turns or speed runs."
  //   ],
  //   "howToPlayQuick": {
  //     "desktop":
  //         "Use WASD or Arrow keys to roll the ball. Move the mouse to rotate or tilt the camera until you can clearly see the next platform.",
  //     "mobile":
  //         "Best experienced with keyboard and mouse; touch-only devices may feel less precise depending on the browser.",
  //     "goal":
  //         "Reach the exit platform without falling off edges or getting stuck — smooth, controlled movement is the safest route."
  //   },
  //   "proTips": [
  //     "Lower your speed before entering thin bridges so you can correct small drifts.",
  //     "Stop the ball, fix the camera angle, then attempt diagonal stretches or ramps.",
  //     "Keep the camera slightly above the ball on tight turns to judge distance from the edge."
  //   ],
  //   "whyPeopleLoveIt": [
  //     "Clear visuals and lighting make it obvious where to roll next.",
  //     "Improvement comes from calmer, smarter inputs — not random luck or gear.",
  //     "Short, self-contained stages make progress feel steady even after retries."
  //   ],
  //   "howToPlay": [
  //     "Rotate the camera at the start of a level to preview the full path and hazards.",
  //     "Roll with short, gentle key taps to build controllable momentum.",
  //     "Take inside lines on corners to stay on the platform and save distance.",
  //     "Zoom out when the path rises or splits so you can spot the safest landing before you move."
  //   ],
  //   "tags": [
  //     "3d-maze-game",
  //     "rolling-ball",
  //     "webgl",
  //     "physics-puzzle",
  //     "precision-control",
  //     "browser-game"
  //   ],
  //   "platform": [
  //     "Web",
  //   ],
  // },
  // {
  //   "title": "Trigger Rally (Web)",
  //   "slug": "trigger-rally-web",
  //   "fullGameUrl": MyImages.carFull,
  //   "halfGameUrl": MyImages.carHalf,
  //   "gameUrl": "https://codeartemis.github.io/TriggerRally/",
  //   "imageUrl":
  //       "https://raw.githubusercontent.com/CodeArtemis/TriggerRally/master/ui/images/icon.png",
  //   "description":
  //       "Stage-based rally racer in your browser: read pacenotes, keep the car settled, and hunt for faster dirt times.",
  //   "longDescription":
  //       """Trigger Rally is a browser-based rally driving game where every stage feels like a short motorsport test. You drop a lightweight car onto dusty, off-road tracks, listen for pacenotes, and decide whether to brake early or carry speed over crests. The physics are straightforward but believable, so weight transfer, throttle timing, and entering a corner cleanly all decide your time. Because stages are small, it’s easy to replay a route, memorize the rhythm, and shave seconds off a personal best. Some sections reward bravery — flat over a jump — while others punish it with rollovers, ditches, or slow recoveries. There’s no upgrade grind, no fuel timers, and no forced ads getting in the way of practice. It’s an open-source rally racer that runs directly in the browser, perfect for players who enjoy real rally vocabulary like “medium right into hairpin,” for creators who want to study a web racing engine, or for anyone who just wants a quick, skill-first online racing challenge between tasks.""",
  //   "about":
  //       "An open-source, stage-focused rally racing game that runs directly in the browser. It’s built around pacenote reading, consistent cornering, and replayable time trials — not unlock trees, energy limits, or artificial progression.",
  //   "aboutThisGame": {
  //     "genre": "Off-road rally / browser time-trial racing",
  //     "sessionLength":
  //         "2–6 minute stages, ideal for quick practice, testing inputs, or pushing personal records.",
  //     "coreSkills": [
  //       "Controlling weight transfer with smooth braking and acceleration",
  //       "Reading and remembering pacenotes to plan corners early",
  //       "Keeping slides short so the car points straight sooner"
  //     ],
  //     "bestFor": [
  //       "Rally fans who like stage-by-stage improvement",
  //       "Players trying keyboard, gamepad, or wheel setups in a browser racing game",
  //       "Drivers who enjoy chasing personal best lap and stage times"
  //     ],
  //     "monetization":
  //         "No coins, fuel limits, or pay-to-continue gates — progress comes from cleaner driving and route knowledge."
  //   },
  //   "features": [
  //     "Readable pacenotes that call corners, crests, jumps, and hazards before you see them.",
  //     "Short, replayable off-road stages tuned for time-attacks and dirt rally practice.",
  //     "Skill-based progression — your car doesn’t level up; your rhythm, braking, and line choices do.",
  //     "Community-friendly open-source project, useful to study how a browser rally game handles physics and camera."
  //   ],
  //   "howToPlayQuick": {
  //     "desktop":
  //         "Use Arrow keys or WASD to steer, accelerate, and brake; space/Shift often triggers handbrake. Drive by listening to pacenotes and reacting early.",
  //     "mobile":
  //         "Runs on mobile browsers, but a keyboard or controller gives much finer steering and throttle control.",
  //     "goal":
  //         "Finish each rally stage as fast as possible without rolling the car, getting stuck off-road, or sliding wide out of turns."
  //   },
  //   "proTips": [
  //     "Brake in a straight line, release before turn-in, and let the car rotate without over-correcting.",
  //     "Replay the same stage to learn where you can stay flat and where you must lift for bumps or blind crests.",
  //     "Only cut corners when your memory or pacenote says the inside is safe — hidden rocks can ruin a run."
  //   ],
  //   "whyPeopleLoveIt": [
  //     "Real rally pacing in the browser with no install required.",
  //     "Stages are short enough that retrying doesn’t feel like a grind.",
  //     "Pure driving challenge — no paywalls, no energy meters, just time-trial racing."
  //   ],
  //   "howToPlay": [
  //     "Drive the stage once at a comfortable pace to hear every pacenote and spot narrow sections.",
  //     "On the next run, brake a little earlier, keep steering inputs small, and focus on tidy exits to carry speed.",
  //     "Use handbrake only on hairpins or when you’ve entered too fast and need to rotate the car quickly.",
  //     "Repeat stages to chip away at your time, just like practicing a real rally special stage or online time-trial."
  //   ],
  //   "tags": ["racing", "rally", "open source", "browser", "time trial"],
  //   "platform": [
  //     "Web",
  //   ],
  // },
  // {
  //   "title": "Gridland",
  //   "slug": "gridland",
  //   "fullGameUrl": MyImages.grinlandFull,
  //   "halfGameUrl": MyImages.grinlandHalf,
  //   "gameUrl": "https://gridland.doublespeakgames.com/",
  //   "imageUrl": "https://doublespeakgames.com/favicon.ico",
  //   "description":
  //       "Match tiles by day to gather resources, then defend your camp at night in this thoughtful browser survival puzzle.",
  //   "longDescription":
  //       """Gridland is a browser match-3 survival game with a clever day–night loop. Daytime is for gathering: every swap pulls in wood, stone, food, metal and the occasional rare material you need to grow your small settlement. Those resources unlock buildings, and buildings seed the grid with stronger, more specialized tiles so later turns feel richer. When night arrives, the same board becomes a defense puzzle where creatures appear and only matching weapons, shields or repair tiles will keep you standing. Because the pace is calm and there’s no rush timer, you can study the layout, stack chain reactions and choose whether to build economy first or defenses first. Different choices make each run play out a little differently, which keeps the loop fresh for short browser sessions or longer survival streaks. It’s a tidy mix of resource management, tile-matching strategy and light roguelike replayability for players who like to think a few moves ahead.""",
  //   "about":
  //       "Editorial overview of Gridland’s mechanics, strengths and who it suits. Actual gameplay still happens on the original developer site we link to.",
  //   "aboutThisGame": {
  //     "genre": "Match-3 / resource builder / survival defense",
  //     "sessionLength":
  //         "One day–night loop is usually 3–10 minutes; long survival runs can stretch to 20+ minutes.",
  //     "coreSkills": [
  //       "Reading the board to plan future chains",
  //       "Prioritizing buildings and resource types",
  //       "Managing night-time threats under pressure"
  //     ],
  //     "bestFor": [
  //       "Players who enjoy puzzle games with steady progression",
  //       "People who want quick browser sessions that still feel meaningful",
  //       "Fans of tile-matching strategy who like experimenting with different build orders"
  //     ],
  //     "monetization":
  //         "No extra monetization is added on this page; the official host may show its own ads or support options."
  //   },
  //   "features": [
  //     "Day phase focused on harvesting materials, unlocking structures and improving the tile pool.",
  //     "Night phase that turns the same board into a survival challenge against incoming creatures.",
  //     "Multiple viable build paths — economy first, defense first or mixed — to keep reruns fresh.",
  //     "Deliberate pacing with no countdowns, ideal for playing in a browser tab alongside other work."
  //   ],
  //   "howToPlayQuick": {
  //     "desktop":
  //         "Click and drag to swap two neighboring tiles. Day = gather and build; night = match combat or shield tiles to stay alive.",
  //     "mobile":
  //         "Tap a tile, drag to the one you want to swap with, then release. Pause a moment to read the board before making a move.",
  //     "goal":
  //         "Survive repeated nights by using daytime matches to power up your settlement and add stronger tiles to the board."
  //   },
  //   "proTips": [
  //     "Match toward your current goal — builders need wood and stone, defenders need weapon or shield tiles.",
  //     "Bank extra resources before sunset because gathering is harder while you’re fighting.",
  //     "Leave potential chains on the board so one night move can clear multiple threats at once."
  //   ],
  //   "whyPeopleLoveIt": [
  //     "Calm, thinky daytime play that flips into tense night defenses.",
  //     "Upgrades feel earned and change which tiles appear over time.",
  //     "Easy to drop in for 5 minutes, but interesting enough to return to later."
  //   ],
  //   "howToPlay": [
  //     "During the day, scan the grid and match the resources you’re currently short on to unlock better buildings.",
  //     "Spend collected materials on structures that add stronger or more specialized tiles to your future boards.",
  //     "When night falls, switch to defense mode and match combat, shield or repair tiles first to stop damage.",
  //     "Repeat the loop and try different build orders to discover new strategies and longer survival streaks."
  //   ],
  //   "tags": [
  //     "puzzle",
  //     "match-3",
  //     "strategy",
  //     "survival",
  //     "browser",
  //     "day-night",
  //     "resource-management"
  //   ],
  //   "platform": [
  //     "Web",
  //     "Mobile",
  //   ],
  // },
//   {
//     "title": "Hello Wordl",
//     "slug": "hello-wordl",
//     "fullGameUrl": MyImages.hellowWorldFull,
//     "halfGameUrl": MyImages.hellowWorldHalf,
//     "gameUrl": "https://hellowordl.net/",
//     "imageUrl": "https://www.google.com/s2/favicons?sz=256&domain=hellowordl.net",
//     "description":
//         "Wordle-style browser puzzle with adjustable word length, unlimited rounds, and distraction-free play for vocabulary training.",
//     "longDescription":
//         """Hello Wordl is a flexible, browser-based word puzzle inspired by Wordle but built for people who want to play more than once a day. You pick the word length — 4 letters for quick warmups, 6 like the classic game, or up to 11 letters when you want a real logic workout. Each guess returns color clues so you can narrow down the hidden word using deduction, letter frequency, and a bit of intuition.
//
// There’s also a hard mode that makes you reuse confirmed letters in the right spots, which turns the experience from casual guessing into a structured, high-signal puzzle. Because the interface is clean, keyboard- and touch-friendly, it works well on phones, tablets, and desktops. It’s a good fit for players who enjoy online word games, English learners who want low-pressure practice, and puzzle fans coming from Wordle, Quordle, or other browser word challenges. Play a couple of short rounds during a break or sit with longer words for deeper brain training — the game never locks you out.""",
//     "about":
//         "A clean, distraction-free online word game where you control word length, practice anytime, and play instantly in the browser — no account or installs.",
//     "aboutThisGame": {
//       "genre": "Word puzzle / logical deduction (Wordle-style)",
//       "sessionLength":
//           "Typically 30 seconds for short words, up to 5 minutes for 10–11 letter challenges.",
//       "coreSkills": [
//         "Reading color feedback and letter-frequency patterns",
//         "Constraint-based deduction using known letters and positions",
//         "Incremental vocabulary building through repetition"
//       ],
//       "bestFor": [
//         "Players who like Wordle but want unlimited rounds",
//         "Learners improving English spelling or word recognition",
//         "Casual puzzlers who enjoy quick, low-friction browser games"
//       ],
//       "monetization":
//           "The puzzle itself has no in-game ads or paid boosts, keeping gameplay fast and interruption-free."
//     },
//     "features": [
//       "Adjustable secret word length from 4 to 11 letters, scaling difficulty to your session.",
//       "Optional Hard Mode that enforces information-based, disciplined guessing.",
//       "Unlimited daily attempts — replay to test new starter words and strategies.",
//       "Responsive, minimal layout that works on desktop keyboards and mobile touchscreens."
//     ],
//     "howToPlayQuick": {
//       "desktop":
//           "Type a valid word and press Enter. Tiles turn green (correct spot), yellow (in word, wrong spot), or gray (not used) — plan the next guess from that info.",
//       "mobile":
//           "Tap letters on the on-screen keyboard and submit your guess. Watch the colors update and adjust your following attempt accordingly.",
//       "goal":
//           "Reveal the hidden word in the fewest, smartest guesses before you run out of attempts."
//     },
//     "proTips": [
//       "Open with a high-information starter (SLATE, CRANE, RAISE) to cover common vowels and consonants early.",
//       "Drop gray letters from future guesses unless you’re solving very long words and need to probe patterns.",
//       "For 9+ letter puzzles, think in chunks — common endings like -ING, -TION, -ABLE can narrow options fast."
//     ],
//     "whyPeopleLoveIt": [
//       "No daily cap — keep playing while you’re in the flow.",
//       "Readable clues that reward careful, logical thinking.",
//       "Works smoothly in the browser on laptop, tablet, or phone."
//     ],
//     "howToPlay": [
//       "Pick a target word length that matches how much time or challenge you want.",
//       "Start with a balanced word that uses frequent letters and at least two vowels.",
//       "Use the color feedback after each guess: lock greens, reposition yellows, ignore grays.",
//       "When regular runs feel easy, increase the word length or enable Hard Mode for deeper logic play."
//     ],
//     "tags": [
//       "word",
//       "puzzle",
//       "logic",
//       "letters",
//       "browser",
//       "wordle-style",
//       "vocabulary",
//       "online-game"
//     ],
//     "platform": [
//       "Web",
//       "Mobile",
//     ],
//   },

  // {
  //   "title": "UNDERRUN",
  //   "slug": "underrun",
  //   "gameUrl": "https://phoboslab.org/underrun/",
  //   "fullGameUrl": MyImages.lightingGameFull,
  //   "halfGameUrl": MyImages.lightingGameHalf,
  //   "imageUrl": "https://www.google.com/s2/favicons?sz=256&domain=phoboslab.org",
  //   "description":
  //       "Lean twin-stick browser shooter about carving space, clearing spawners, and surviving escalating waves.",
  //   "longDescription":
  //       """UNDERRUN is a lean top-down survival shooter you can play straight in the browser, no downloads or launchers. Each run drops you into a small industrial arena where robots and turrets spawn in waves. Your left hand stays on WASD to glide around, your right hand aims independently, and the whole loop is about carving safe space before enemies box you in. Because it’s an HTML5 arcade game with clean, flat visuals — sharp silhouettes, subtle impact flashes — you can read the action even when the arena gets busy. Difficulty climbs in sensible steps: first single targets, then mixed enemy types, then pressure from spawners that must be cleared fast. There’s no meta grind here; it’s closer to old-school browser shooters and score-chasing arena games than to a roguelike. You improve by learning spawn patterns, keeping momentum, and shooting while moving, which makes every survival run a little longer than the last. It even runs smoothly on modest laptops because the whole build is intentionally lightweight.""",
  //   "about":
  //       "A browser-first twin-stick arcade project built to be tiny, fast, and readable. UNDERRUN shows how much tension you can get from simple controls, smart enemy waves, and instant restarts — all inside a JS13k-style footprint.",
  //   "aboutThisGame": {
  //     "genre": "Top-down twin-stick shooter / browser arena survival",
  //     "sessionLength": "Typical runs last 2–8 minutes; restart instantly to chase a better time.",
  //     "coreSkills": [
  //       "Moving smoothly with WASD while aiming independently",
  //       "Spotting and deleting high-pressure spawners early",
  //       "Keeping breathing room by kiting around cover and walls"
  //     ],
  //     "bestFor": [
  //       "Arcade players who like clear, readable combat loops",
  //       "People who want a no-login, play-in-browser shooter",
  //       "Short-session desktop or Chromebook gamers"
  //     ],
  //     "monetization": "No paywalls or power boosts — difficulty is fixed and 100% skill-based."
  //   },
  //   "features": [
  //     "Instant load and restart for rapid practice runs directly in the browser.",
  //     "Enemy waves escalate in learnable patterns so you can route and improve.",
  //     "Precise twin-stick feel with independent movement and aiming.",
  //     "Clean, low-noise visuals that keep enemies visible even during chaos."
  //   ],
  //   "howToPlayQuick": {
  //     "desktop":
  //         "Move with WASD (or arrow keys) and aim/shoot with the mouse; keep circling the arena.",
  //     "mobile":
  //         "Works best on desktop; on touch devices use an external keyboard/mouse if available.",
  //     "goal":
  //         "Survive as long as possible by staying mobile, controlling space, and clearing spawners before the arena fills up."
  //   },
  //   "proTips": [
  //     "Work the outer edge of the arena first to thin the wave, then cut back through open space.",
  //     "Burn down spawners the moment they appear — every second they stay up adds more targets to dodge.",
  //     "Keep threats in front of your aim cone; getting fully surrounded is what ends most runs."
  //   ],
  //   "whyPeopleLoveIt": [
  //     "Short, focused runs that fit perfectly between tasks or classes.",
  //     "Progress is tied to player skill, not unlock trees or grinding.",
  //     "Readable art style that stays crisp even on modest hardware."
  //   ],
  //   "howToPlay": [
  //     "Start moving the moment the run begins — standing still lets waves collapse on you.",
  //     "Prioritize dangerous enemies and spawners while kiting slower bots in wide circles.",
  //     "Use walls, corners, and props to force enemies into narrow approach lanes you can control.",
  //     "When the arena starts feeling crowded, relocate to fresh space instead of trading damage."
  //   ],
  //   "tags": ["shooter", "arena", "arcade", "browser", "minimal"],
  //   "platform": [
  //     "Web",
  //   ],
  // },
  // {
  //   "title": "X-Type",
  //   "slug": "xtype",
  //   "fullGameUrl": MyImages.fightFull,
  //   "halfGameUrl": MyImages.fightHalf,
  //   "gameUrl": "https://phoboslab.org/xtype/",
  //   "imageUrl": "https://www.google.com/s2/favicons?sz=256&domain=phoboslab.org",
  //   "description":
  //       "Browser boss-rush shooter where modular enemy ships break apart, reshape attacks, and keep pressure on your dodging.",
  //   "longDescription":
  //       "X-Type is a focused browser shoot ’em up about surviving one evolving battleship at a time. You jump straight into a minimal space arena and fight a modular boss that refuses to stay broken. Every segment you destroy peels away armor, splits into drifting parts, and forces the ship to switch to faster, denser bullet patterns. That means you’re not just holding fire — you’re constantly repositioning, testing angles, and deciding when it’s safe to push in for damage. Controls are tight on desktop, so micro-movement and lane control feel natural, but it’s still playable on mobile for quick runs. Because attempts last only a few minutes, it works well as a warm-up shooter, a score-chasing arcade session, or a boss-rush practice game for fans of bullet-hell shooters. If you like readable attacks, fair deaths, and fights that escalate instead of restarting whole levels, this is the kind of HTML5 arcade shooter worth bookmarking.",
  //   "about":
  //       "Compact web shoot ’em up from PhobosLab that swaps long stages for smart, repeatable boss encounters, clean bullets, and a clear skill ceiling.",
  //   "aboutThisGame": {
  //     "genre": "Top-down arcade shoot ’em up / boss-rush space shooter",
  //     "sessionLength":
  //         "Quick 2–4 minute fights, with longer 8–10 minute runs if you survive later phases.",
  //     "coreSkills": [
  //       "Reading shifting bullet patterns and safe lanes",
  //       "Cursor/touch positioning to stay mid-range without getting cornered",
  //       "Timing burst damage when new modules expose weak points"
  //     ],
  //     "bestFor": [
  //       "Players who enjoy boss-only challenges in the browser",
  //       "Bullet-hell fans who want something fair and learnable",
  //       "Score or survival hunters looking for repeatable short sessions"
  //     ],
  //     "monetization":
  //         "No paywalls, upgrades, or energy systems — performance is 100% skill and pattern knowledge."
  //   },
  //   "features": [
  //     "Procedural, modular bosses that reconfigure attacks as parts are destroyed, keeping each run slightly different.",
  //     "Low-latency, mouse-first controls that also work on touch for mobile browser play.",
  //     "Clear, telegraphed bullet-hell patterns so mistakes feel earned, not random.",
  //     "Instant restarts to study phases, improve routes, and push for longer survival streaks."
  //   ],
  //   "howToPlayQuick": {
  //     "desktop":
  //         "Use the mouse (or trackpad) to steer your ship while auto-firing; float around the boss at mid-range to see upcoming bullet arcs.",
  //     "mobile":
  //         "Touch/drag to move; shorter sessions work best on phones because tight dodges need clear screen space.",
  //     "goal":
  //         "Strip armor and core modules from the boss before the arena floods with bullets, debris, and returning fragments."
  //   },
  //   "proTips": [
  //     "Stay at a diagonal angle to the boss — it widens your dodge lanes and makes incoming spreads easier to read.",
  //     "Prioritize modules that spawn extra shots or minions; removing them calms the board and buys time.",
  //     "After a big explosion, drift sideways first, then forward — fragments often loop back along their original line."
  //   ],
  //   "whyPeopleLoveIt": [
  //     "Drops you straight into the fight — no menus, no filler levels, just immediate action.",
  //     "Deaths feel instructive, not cheap, so you can correct positioning on the next run.",
  //     "Break-apart effects look satisfying and clearly show which targets to focus next."
  //   ],
  //   "howToPlay": [
  //     "Glide around the boss while auto-firing to keep constant pressure on exposed parts.",
  //     "Focus fire on critical modules to trigger new phases instead of spreading damage everywhere.",
  //     "Maintain mid-screen positioning so you always have escape routes up, down, left, and right.",
  //     "Watch debris trails — some fragments return toward the center, so don’t park in one place after a kill."
  //   ],
  //   "tags": [
  //     "shmup",
  //     "boss rush shooter",
  //     "arcade space shooter",
  //     "browser shoot ’em up",
  //     "procedural boss fight"
  //   ],
  //   "platform": [
  //     "Web",
  //     "Mobile",
  //   ],
  // },
//   {
//     "title": "Q1K3",
//     "slug": "q1k3",
//     "fullGameUrl": MyImages.miracasGame,
//     "halfGameUrl": MyImages.miracasHalf,
//     "gameUrl": "https://phoboslab.org/q1k3/",
//     "imageUrl": "https://www.google.com/s2/favicons?sz=256&domain=phoboslab.org",
//     "description":
//         "Browser-based retro FPS with fast strafing, tight arenas, and dodge-or-die firefights inspired by 90s shooters.",
//     "longDescription":
//         """Q1K3 is a pick-up-and-play browser FPS game that feels like dropping back into a 1990s arena match. You spawn inside tight industrial corridors, hear metal and enemy fire echoing around you, and immediately have to start circle-strafing to stay alive. Movement is the whole challenge: slide around corners, peek from cover, and use each room’s angles to break line of sight and control the fight.
//
// Maps stay small and readable, so you never waste time wandering or loading extra levels. Every encounter is a short combat puzzle — clear the targets, sweep for armor and health, reload, move forward. Weapons hit hard and sound crunchy, which makes even single enemies satisfying to remove.
//
// Because it runs directly in the browser, there’s no download, no account, and no launcher getting in the way. It’s ideal for a five-minute FPS warm-up, for practicing arena movement, or for players who just want a classic, fast, skill-first shooter they can open on almost any device.""",
//     "about":
//         "Q1K3 is a lightweight, fan-made browser FPS from PhobosLab that recreates the pace and readability of classic arena shooters — quick rooms, tight corridors, and all-skill firefights. It’s an independent homage to 90s PC shooters and is not connected to or endorsed by id Software.",
//     "aboutThisGame": {
//       "genre": "Retro-style first-person shooter / arena movement FPS for the browser",
//       "sessionLength":
//           "Most runs last 3–15 minutes, depending on how aggressively you clear rooms and how many pickups you secure.",
//       "coreSkills": [
//         "Maintaining constant lateral movement and circle-strafing under pressure",
//         "Peeking from cover to burst enemies before they can track you",
//         "Managing health, armor, and ammo between rooms so each fight is winnable"
//       ],
//       "bestFor": [
//         "Players who miss Quake-like or classic PC arena pacing",
//         "People who want a quick browser FPS warm-up without a big download",
//         "Short break sessions at work/school where you only have a few minutes"
//       ],
//       "monetization":
//           "Completely free to play in-browser; no skins, crates, or power-gated content."
//     },
//     "features": [
//       "Fast, movement-first combat where circle-strafing often matters more than raw aim.",
//       "Compact, industrial 3D arenas that you can read in seconds and control with smart positioning.",
//       "Weapons with immediate feedback — punchy audio, clear impacts, and no filler animations.",
//       "Runs in the browser via WebGL, so you can open, load, and start shooting without installing anything."
//     ],
//     "howToPlayQuick": {
//       "desktop":
//           "Use WASD to move and strafe, mouse to aim, Left-click to fire, and Space to jump — stay in motion or you’ll get tracked.",
//       "mobile":
//           "Playable on touch, but desktop or laptop with mouse is strongly recommended for precise aiming and circle-strafing.",
//       "goal":
//           "Clear each combat space while staying mobile, then collect health, armor, and ammo so the next wave or room doesn’t overwhelm you."
//     },
//     "proTips": [
//       "Don’t stand in doorways — strafe out, shoot, and duck back in from a slightly different angle.",
//       "Fight near cover so you can reload or reset when multiple enemies stack on you.",
//       "Grab health and armor right after a fight so pickups aren’t wasted when you’re already full."
//     ],
//     "whyPeopleLoveIt": [
//       "Loads in seconds and immediately feels like a classic PC shooter session in the browser.",
//       "Focused, compact level design that rewards smart movement instead of camping.",
//       "Pure, skill-forward action with no account setup, no launcher, and no grind walls."
//     ],
//     "howToPlay": [
//       "Move with WASD, aim with the mouse, shoot with Left-click, and jump with Space; avoid running straight at enemies.",
//       "Circle-strafe around targets so they have to keep turning — moving targets get hit less.",
//       "Use walls, boxes, and pillars as temporary shields: peek, burst, and reposition before they can focus you.",
//       "After clearing a room, sweep it for health, armor, and ammo, then in the next room prioritize high-damage enemies first."
//     ],
//     "tags": ["fps", "retro", "arena", "browser", "fast", "webgl", "shooter", "first-person"],
//     "platform": [
//       "Web",
//     ],
//   },
//   {
//     "title": "Fluid Table Tennis",
//     "slug": "fluid-table-tennis",
//     "gameUrl": "https://anirudhjoshi.github.io/fluid_table_tennis/",
//     "fullGameUrl": MyImages.fluidTennisFull,
//     "halfGameUrl": MyImages.fluidTennisHalf,
//     "imageUrl": "https://anirudhjoshi.github.io/fluid_table_tennis/favicon.ico",
//     "description":
//         "Pong reimagined with real-time fluid physics—stir the field, curve the ball, and outsmart a friend on one keyboard.",
//     "longDescription":
//         "Fluid Table Tennis is a Pong-like duel set inside a swirling, full-color fluid simulation. Your paddle play still matters—position, angle, and timing—but the liquid around the ball is just as important. By “sucking” and “pushing” the flow, you bend trajectories, slow returns, and create chaotic pockets that reward anticipation over raw reflexes.\n\nThe project runs instantly in a modern browser and was inspired by Plasma Pong and classic fluid-dynamics demos. It targets smooth 60 FPS and keeps setup simple: open the page, hit Begin, and battle locally with two players. It’s equal parts toy and competitive game—great for quick experiments, physics tinkering, and surprising rallies that feel different every match.",
//     "about":
//         "Open-source HTML5/JavaScript browser game by Anirudh Joshi; source available on GitHub.",
//     "aboutThisGame": {
//       "genre": "Arcade physics pong",
//       "sessionLength": "Typical matches last 1–5 minutes; free play can run longer.",
//       "coreSkills": [
//         "Steer fluid to bend shots",
//         "Position paddle to control rebounds",
//         "Switch between defense and pressure quickly"
//       ],
//       "bestFor": [
//         "Fans of Pong-style duels",
//         "Local two-player sessions",
//         "Players who enjoy physics toys"
//       ],
//       "monetization": "Free, no IAP/ads."
//     },
//     "features": [
//       "Real-time fluid simulation that affects ball movement",
//       "Local two-player play on one keyboard",
//       "Smooth browser build targeting 60 FPS",
//       "Instant restart and quick match flow"
//     ],
//     "howToPlayQuick": {
//       "desktop":
//           "P1 moves with W/A/S/D; P2 moves with I/J/K/L; use the on-screen Suck/Push hotkeys to stir the fluid and shape the ball’s path.",
//       "mobile": "Requires a hardware keyboard; touch-only devices are not supported.",
//       "goal":
//           "Score by sending the ball past your opponent while managing the fluid to curve or slow shots."
//     },
//     "proTips": [
//       "Use Suck to pull fluid and stall fast returns, then Push to accelerate a counter.",
//       "Stir early to lay down flow patterns before the ball arrives.",
//       "Aim for edges after disturbing the fluid to force awkward angles."
//     ],
//     "whyPeopleLoveIt": [
//       "Classic Pong tension with dramatic, curving shots.",
//       "Physics you can feel—small inputs create big, readable effects.",
//       "Zero-install web play that’s perfect for quick matches."
//     ],
//     "howToPlay": [
//       "Open the page and select Begin (or Multiplayer) to start a local match.",
//       "Move your paddle (P1: W/A/S/D; P2: I/J/K/L) to intercept the ball.",
//       "Trigger Suck/Push hotkeys to manipulate the fluid and bend trajectories.",
//       "Rally and score; restart anytime for another fast round."
//     ],
//     "tags": ["pong", "arcade", "physics", "fluid", "two player", "browser", "html5", "open source"],
//     "platform": ["Web"]
//   },
//   {
//     "title": "Survivor",
//     "slug": "survivor",
//     "gameUrl": "https://www.schillmania.com/survivor/",
//     "fullGameUrl": MyImages.survivorFull,
//     "halfGameUrl": MyImages.survivorHalf,
//     "imageUrl": "https://www.schillmania.com/survivor/favicon.ico",
//     "description":
//         "Browser remake of the 1982–83 turret-busting shooter: pilot, shoot, and clear every base to advance.",
//     "longDescription":
//         "Survivor is a browser-based remake of the early-’80s shooter where your ship roams a single screen dotted with fortified bases. Each base has turrets mounted on its sides; destroy every turret and the base detonates. Enemies and drifting hazards crowd the space, and contact with almost anything is fatal, so survival is about threading tight paths while keeping your guns hot.\n\nControls are simple—arrows to steer, fire to shoot, space for a limited smartbomb—yet the difficulty ramps quickly as enemies and projectiles speed up each wave. The remake captures the feel of the Commodore 64 version while adding helpful niceties like instant restarts, optional background music styles, and a built-in level editor. It’s quick to learn, hard to master, and perfect for short, focused sessions.",
//     "about":
//         "Open-source HTML/CSS/JavaScript tribute to the Commodore 64 version, released by Scott Schiller under CC BY-NC 3.0.",
//     "aboutThisGame": {
//       "genre": "Arcade shoot-'em-up",
//       "sessionLength": "Short runs—typically 1–5 minutes depending on skill.",
//       "coreSkills": [
//         "Dodge precisely",
//         "Pick off turrets methodically",
//         "Use smartbombs sparingly"
//       ],
//       "bestFor": ["Fans of retro shooters", "Quick coffee-break play", "Keyboard players"],
//       "monetization": "Free, no IAP or ads."
//     },
//     "features": [
//       "Faithful single-screen turret-busting gameplay",
//       "Built-in level editor and test play",
//       "Optional “arcade era” or “modern” background music",
//       "Instant restart and tight keyboard controls"
//     ],
//     "howToPlayQuick": {
//       "desktop":
//           "Arrow keys to move, Shift/Ctrl to fire (hold to autofire), Space to trigger a smartbomb.",
//       "mobile": "No built-in touch controls; best played on desktop with a keyboard.",
//       "goal":
//           "Destroy all turrets on each base to blow it up; clear every base to finish the level."
//     },
//     "proTips": [
//       "Hold the fire key for maximum rate while circling a base.",
//       "Approach corners at angles to expose turrets one at a time.",
//       "Save smartbombs for rescue moments when chasers box you in."
//     ],
//     "whyPeopleLoveIt": [
//       "Authentic early-’80s feel in a zero-install browser build",
//       "Fast, fair loops that reward steady improvement",
//       "Creative freedom from the built-in level editor"
//     ],
//     "howToPlay": [
//       "Start a run and get a feel for ship momentum with the arrow keys.",
//       "Circle a base and chip away at exposed turrets while staying mobile.",
//       "Hold Shift/Ctrl to maintain a steady stream of shots.",
//       "When surrounded, hit Space to smartbomb and reopen a safe lane."
//     ],
//     "tags": ["open source", "retro", "arcade", "shoot-'em-up", "browser", "c64", "remake"],
//     "platform": ["Web"]
//   },
//   {
//     "title": "Blockrain.js",
//     "slug": "blockrain-js",
//     "gameUrl": "https://aerolab.github.io/blockrain.js/",
//     "fullGameUrl": MyImages.blockrainFull,
//     "halfGameUrl": MyImages.blockrainHalf,
//     "imageUrl":
//         "https://camo.githubusercontent.com/023f72e8f077f066cd2de3fce7c2ec95ab7f3da2cf7dc94826fbd4b28199ec08/687474703a2f2f6165726f6c61622e6769746875622e696f2f626c6f636b7261696e2e6a732f6173736574732f696d616765732f626c6f636b7261696e2e706e67",
//     "description":
//         "Browser Tetris you can embed, with themes, score, difficulty, and optional autoplay.",
//     "longDescription":
//         "Blockrain.js is a lightweight HTML5 Tetris clone packaged as a jQuery plugin. It runs entirely in the browser and can be dropped into any page with a few lines of code. The demo showcases multiple visual themes, a scoreboard, adjustable speed, and an autoplay mode where a bot plays on its own.\n\nGameplay follows familiar falling-block rules: slide and rotate pieces to complete horizontal lines and keep the stack from reaching the top. Controls are keyboard-based and the layout is responsive, so the game adapts to different page widths. Because it’s open source under the MIT license, developers can tweak themes, difficulty, and callbacks, or even let a site run background bot matches for fun.",
//     "about":
//         "Open-source HTML5/jQuery Tetris clone by Aerolab (MIT). Built for easy embedding, theming, and customization.",
//     "aboutThisGame": {
//       "genre": "Falling block puzzle",
//       "sessionLength": "Typical runs last 1–5 minutes, longer as you improve.",
//       "coreSkills": [
//         "Plan placements several moves ahead",
//         "Rotate and slide pieces precisely",
//         "Manage speed and recover from mistakes"
//       ],
//       "bestFor": [
//         "Fans of classic puzzle games",
//         "Quick play during short breaks",
//         "Developers wanting an embeddable mini-game"
//       ],
//       "monetization": "Free, no IAP or ads in the demo."
//     },
//     "features": [
//       "Classic Tetris-style rules with keyboard controls",
//       "Multiple built-in visual themes",
//       "Score tracking and adjustable speed/difficulty",
//       "Autoplay bot that can run matches on its own",
//       "Responsive layout that fits narrow or wide embeds"
//     ],
//     "howToPlayQuick": {
//       "desktop": "Use Left/Right to move, Up to rotate, and Down to drop faster.",
//       "mobile":
//           "Viewable on mobile, but controls rely on a keyboard; play on desktop for full control.",
//       "goal": "Clear lines to keep the stack from reaching the top."
//     },
//     "proTips": [
//       "Keep the stack flat; avoid tall towers that limit rotation.",
//       "Leave a one-block well for the long piece to score Tetrises.",
//       "Use soft drops to place pieces precisely; don’t rush early."
//     ],
//     "whyPeopleLoveIt": [
//       "Instant, no-install play in any modern browser.",
//       "Tight, predictable physics that reward planning and rhythm.",
//       "Easy to reskin and embed, so it feels at home on any site."
//     ],
//     "howToPlay": [
//       "Press Play to begin and watch the first piece fall.",
//       "Move left or right to position the piece; rotate before it locks.",
//       "Complete horizontal lines to clear space and earn points.",
//       "Survive as speed increases; the game ends when blocks reach the top."
//     ],
//     "tags": ["open source", "html5", "javascript", "tetris-like", "puzzle", "browser", "arcade"],
//     "platform": ["Web"]
//   },

  // {
  //   "title": "The House",
  //   "slug": "the-house",
  //   "gameUrl": "https://the-house.arturkot.pl/",
  //   "fullGameUrl": MyImages.theHouseFull,
  //   "halfGameUrl": MyImages.theHouseHalf,
  //   "imageUrl": "https://raw.githubusercontent.com/arturkot/the-house-game/gh-pages/favicon.png",
  //   "description":
  //       "A very short point-and-click adventure: explore a house, collect items, and solve simple puzzles to move forward.",
  //   "longDescription":
  //       "The House is a tiny, browser-based point-and-click adventure created as a personal learning project. You move through a handful of rooms, examine objects, pick up items, and trigger little scenes while piecing together how to progress. A moody soundscape and minimal UI keep the focus on curiosity and small discoveries.\n\nBuilt with plain HTML, CSS, and JavaScript (with jQuery), each room is a lightweight page with clickable hotspots, basic animations, and a simple save of your state. It’s intentionally brief—something you can finish in one sitting—and a nice example of classic web tech used to craft a compact vignette.",
  //   "about":
  //       "Open-source browser game by Artur Kot, written in HTML/CSS/JavaScript (jQuery) and released under the MIT License.",
  //   "aboutThisGame": {
  //     "genre": "Point-and-click adventure",
  //     "sessionLength": "Usually finished in a few minutes.",
  //     "coreSkills": [
  //       "Observe scenes to find hotspots",
  //       "Combine clues and items logically",
  //       "Sequence interactions to unlock progress"
  //     ],
  //     "bestFor": [
  //       "Fans of bite-size web adventures",
  //       "Players who enjoy atmosphere over mechanics",
  //       "Anyone curious about simple JS point-and-clicks"
  //     ],
  //     "monetization": "Free, no IAP/ads."
  //   },
  //   "features": [
  //     "Compact story you can complete in one sitting",
  //     "Clickable hotspots, items, and short cutscenes",
  //     "Ambient audio for a slightly eerie tone",
  //     "Lightweight web build that runs in a modern browser"
  //   ],
  //   "howToPlayQuick": {
  //     "desktop":
  //         "Click to move and interact; select items when available and use them where they fit.",
  //     "mobile":
  //         "Tap objects and hotspots to move and interact; touch events map to mouse clicks in modern browsers.",
  //     "goal": "Explore the rooms, use found items, and solve small puzzles to reach the way out."
  //   },
  //   "proTips": [
  //     "Sweep the cursor/tap around edges and objects to reveal hidden hotspots.",
  //     "Revisit rooms after new events—fresh interactions can appear.",
  //     "Take note of symbols or numbers; they may feed into a keypad or lock."
  //   ],
  //   "whyPeopleLoveIt": [
  //     "A tiny, finish-in-one-go adventure with no filler.",
  //     "Quiet atmosphere that lets small discoveries feel satisfying.",
  //     "Pure HTML/JS build that loads fast and gets out of the way."
  //   ],
  //   "howToPlay": [
  //     "Start the game and enter the first room.",
  //     "Click or tap objects to inspect them and collect items.",
  //     "Use items on relevant hotspots to unlock new interactions.",
  //     "Keep exploring until you solve the last puzzle and exit the house."
  //   ],
  //   "tags": ["point and click", "adventure", "puzzle", "browser", "short", "html5", "open source"],
  //   "platform": ["Web"]
  // },
  // {
  //   "title": "Captain Rogers",
  //   "slug": "captain-rogers",
  //   "gameUrl": "https://rogers.enclavegames.com/",
  //   "fullGameUrl": MyImages.captainFull,
  //   "halfGameUrl": MyImages.captainHalf,
  //   "imageUrl": "https://raw.githubusercontent.com/EnclaveGames/Captain-Rogers/master/favicon.png",
  //   "description":
  //       "One-button space flyer: tap to rise, avoid asteroids and mines, collect stars and shields, and clear crowded screens with bombs.",
  //   "longDescription":
  //       "Captain Rogers is a hyper-casual one-button flyer set in an asteroid field. Press to lift, release to descend, and thread your ship through hazards while scooping up stars and shields. Bomb pickups wipe the screen, buying a brief moment of safety before the next cluster of obstacles closes in. The physics are predictable and responsive, so success comes from timing your taps and keeping calm when the field gets dense.\n\nOriginally built with the ImpactJS engine as a lightweight HTML5 project, it loads fast and plays instantly in a browser—no downloads. The rules are minimal, feedback is clear, and runs are short enough to squeeze in during a break. It’s a polished example of classic, learnable difficulty: every mistake is readable, and the next attempt starts in a second.",
  //   "about":
  //       "Open-source HTML5 browser game by Enclave Games (Andrzej Mazur), built with ImpactJS; source released as a non-commercial demo under CC BY-NC 4.0.",
  //   "aboutThisGame": {
  //     "genre": "One-button arcade flyer",
  //     "sessionLength": "Most runs last 1–5 minutes depending on skill and luck.",
  //     "coreSkills": [
  //       "Time taps to control altitude",
  //       "Read gaps and plan safe paths",
  //       "Use bombs and shields strategically"
  //     ],
  //     "bestFor": [
  //       "Quick coffee-break sessions",
  //       "Fans of simple, skill-based arcades",
  //       "Mobile browser play on the go"
  //     ],
  //     "monetization": "Free; no in-app purchases (open-source build)."
  //   },
  //   "features": [
  //     "One-button hold-and-release flight controls",
  //     "Bomb pickups that clear all on-screen hazards",
  //     "Collectible stars and shields for score and safety",
  //     "Instant-play HTML5 build for mobile and desktop browsers"
  //   ],
  //   "howToPlayQuick": {
  //     "desktop":
  //         "Click and hold to rise, release to fall; steer through gaps and time bomb pickups.",
  //     "mobile":
  //         "Tap and hold to rise, release to descend; collect stars and shields, avoid hazards.",
  //     "goal": "Survive as long as possible without crashing while pushing your score higher."
  //   },
  //   "proTips": [
  //     "Use short, rhythmic taps for fine altitude control instead of long presses.",
  //     "Trigger bombs when multiple hazards converge to open a safe corridor.",
  //     "Grab shields before tight sections to forgive a minor mistake."
  //   ],
  //   "whyPeopleLoveIt": [
  //     "Pure, readable challenge that rewards timing and focus.",
  //     "Snappy runs and instant restarts make it easy to replay.",
  //     "Clean visuals and responsive controls in a tiny, fast-loading package."
  //   ],
  //   "howToPlay": [
  //     "Press or tap to lift the ship; release to let it descend.",
  //     "Collect stars for points and shields for temporary protection.",
  //     "Pick up bombs and use them to clear the screen when things get crowded.",
  //     "Keep dodging hazards and aim for a higher score before you crash."
  //   ],
  //   "tags": [
  //     "arcade",
  //     "one button",
  //     "endless",
  //     "space",
  //     "browser",
  //     "mobile",
  //     "html5",
  //     "open source"
  //   ],
  //   "platform": ["Web", "Mobile"]
  // },
  // {
  //   "title": "c4 - Connect Four",
  //   "slug": "c4-connect-four",
  //   "gameUrl": "https://kenrick95.github.io/c4/",
  //   "fullGameUrl": MyImages.c4Full,
  //   "halfGameUrl": MyImages.c4Half,
  //   "imageUrl": "https://kenrick95.github.io/c4/favicon.ico",
  //   "description":
  //       "Play Connect Four in the browser with AI, local PvP, online PvP, and even AI-vs-AI spectator mode.",
  //   "longDescription":
  //       "c4 is a clean browser take on the classic Connect Four. Drop checkers into any of the seven columns and aim to align four in a row horizontally, vertically, or diagonally before your opponent does. You can play against a friend on the same device, challenge an AI, or simply watch two AIs battle it out.\n\nUnder the hood, the computer opponent uses a Minimax search with alpha–beta pruning, providing a quick, thoughtful rival while keeping the game fast to load and responsive. There’s also an online player-vs-player option so two people can compete from different machines. Everything runs in modern browsers with smooth canvas rendering and straightforward click/tap controls.",
  //   "about":
  //       "Open-source TypeScript + HTML5 Canvas project by kenrick95, released under the MIT license.",
  //   "aboutThisGame": {
  //     "genre": "Abstract strategy board game",
  //     "sessionLength": "Most matches finish in 2–8 minutes depending on skill.",
  //     "coreSkills": [
  //       "Plan ahead to create and block lines",
  //       "Control central columns to maximize options",
  //       "Spot forks and force responses"
  //     ],
  //     "bestFor": [
  //       "Fans of quick, thinky head-to-heads",
  //       "Casual sessions on desktop or phone",
  //       "Players who enjoy testing themselves vs AI"
  //     ],
  //     "monetization": "Free, no IAP/ads."
  //   },
  //   "features": [
  //     "Play modes: vs AI, local 2-player, online 2-player, or AI vs AI (spectator)",
  //     "Minimax AI with alpha–beta pruning for brisk, challenging play",
  //     "Runs in modern browsers with crisp HTML5 Canvas visuals",
  //     "Simple click/tap controls; no account required"
  //   ],
  //   "howToPlayQuick": {
  //     "desktop": "Click a column to drop your piece; turns alternate automatically.",
  //     "mobile": "Tap a column to drop your piece; play continues turn by turn.",
  //     "goal": "Connect four of your pieces in a row before your opponent."
  //   },
  //   "proTips": [
  //     "Prioritize the center column to keep more potential lines open.",
  //     "Block opponent’s three-in-a-row threats before building your own forks.",
  //     "Think two moves ahead: create positions that force a single reply."
  //   ],
  //   "whyPeopleLoveIt": [
  //     "Instant rules and short matches make it easy to jump in.",
  //     "A competent AI that’s quick to move and fun to outsmart.",
  //     "Multiple modes—from couch co-op to online play—fit any session."
  //   ],
  //   "howToPlay": [
  //     "Choose a mode: vs AI, local 2-player, online 2-player, or AI vs AI.",
  //     "Enter names if you like, then start the game.",
  //     "On your turn, click or tap a column to drop a piece into the lowest slot.",
  //     "Win by connecting four in a line; if the board fills, it’s a draw."
  //   ],
  //   "tags": [
  //     "connect four",
  //     "strategy",
  //     "board",
  //     "ai",
  //     "multiplayer",
  //     "browser",
  //     "canvas",
  //     "open source"
  //   ],
  //   "platform": ["Web", "Mobile"]
  // },
  // {
  //   "title": "Monster Wants Candy",
  //   "slug": "monster-wants-candy",
  //   "gameUrl": "https://candy-demo.enclavegames.com/",
  //   "fullGameUrl": MyImages.monsterCandyFull,
  //   "halfGameUrl": MyImages.monsterCandleHalf,
  //   "imageUrl":
  //       "https://camo.githubusercontent.com/e73298f876c5e9520f1f8b8b6cf27aacb6fbbdda220d2e6aec7a471b65765f74/68747470733a2f2f636d732d6173736574732e74757473706c75732e636f6d2f75706c6f6164732f75736572732f32322f706f7374732f32313732332f696d6167652f6d6f6e737465722d64656d6f2d73637265656e732e6a7067",
  //   "description":
  //       "Tap to catch candy and dodge bombs in a quick, one-button browser arcade with cheerful art and a high-score chase.",
  //   "longDescription":
  //       "Monster Wants Candy is a lightweight HTML5 arcade game built with Phaser. Candy drops from above while sneaky bombs mix in; you tap or click to chomp the sweets and avoid anything that explodes. The premise is simple and the pace ramps up smoothly, making it an easy pickup for short, focused runs that still reward precision and timing.\n\nThis public demo was created by Enclave Games and serves as a teaching example for Phaser beginners. It runs instantly in the browser, tracks your score, and plays well with mouse or touch. The approachable rules, bright visuals, and steadily increasing difficulty make it a solid snack-sized game for quick breaks or practicing hand-eye coordination.",
  //   "about":
  //       "Open-source HTML5 demo by Enclave Games using Phaser 2.x; the repository is available and the demo is shared under a non-commercial Creative Commons license.",
  //   "aboutThisGame": {
  //     "genre": "Arcade tapper",
  //     "sessionLength": "Typical runs last 1–5 minutes depending on accuracy and risk.",
  //     "coreSkills": [
  //       "Time taps to catch targets",
  //       "Identify and avoid hazards",
  //       "Manage risk as speed increases"
  //     ],
  //     "bestFor": [
  //       "Quick coffee-break play",
  //       "Casual players and kids",
  //       "Touch-first devices and browsers"
  //     ],
  //     "monetization": "Free demo, no IAP/ads."
  //   },
  //   "features": [
  //     "One-button tap/click controls with immediate pickup-and-play",
  //     "Escalating difficulty and simple high-score chase",
  //     "Colorful, kid-friendly monster-and-candy theme",
  //     "Runs instantly in any modern browser on desktop or mobile"
  //   ],
  //   "howToPlayQuick": {
  //     "desktop": "Click on falling candy to eat it and avoid clicking bombs.",
  //     "mobile": "Tap falling candy to eat it and avoid tapping bombs.",
  //     "goal": "Score as many points as possible by eating candy while avoiding bombs."
  //   },
  //   "proTips": [
  //     "Prioritize safe, close candy instead of stretching for risky catches near bombs.",
  //     "Watch spawn patterns—bombs often trail or guard clusters of candy.",
  //     "Stay calm as speed rises; missed candy is safer than a bomb hit."
  //   ],
  //   "whyPeopleLoveIt": [
  //     "Simple rules and instant play that anyone can grasp in seconds.",
  //     "Bright visuals and satisfying tap feedback make short runs engaging.",
  //     "Quick sessions that encourage chasing a better personal best."
  //   ],
  //   "howToPlay": [
  //     "Start the game and watch for candy and bombs falling from the sky.",
  //     "Tap or click candy to score points; avoid bombs entirely.",
  //     "Keep collecting as the pace increases and hazards appear more often.",
  //     "Play for a high score and restart instantly for another run."
  //   ],
  //   "tags": [
  //     "arcade",
  //     "tapper",
  //     "casual",
  //     "browser",
  //     "phaser",
  //     "html5",
  //     "open source",
  //     "family-friendly"
  //   ],
  //   "platform": ["Web", "Mobile"]
  // },
  // {
  //   "title": "Hexahedral",
  //   "slug": "hexahedral",
  //   "gameUrl": "https://matthewminer.com/hexahedral/",
  //   "fullGameUrl": MyImages.hexahedralFull,
  //   "halfGameUrl": MyImages.haxahedralHalf,
  //   "imageUrl": "https://raw.githubusercontent.com/mminer/hexahedral/master/screenshot.png",
  //   "description":
  //       "Isometric puzzle where you roll a cube to push every raised block down in the fewest moves across 30 quick, clean levels.",
  //   "longDescription":
  //       "Hexahedral is a minimalist, isometric logic puzzler built for the Global Game Jam 2016. Each level presents a field of raised cubes. You roll your cube across adjacent tiles to press them down, aiming to finish with the entire board flattened. Movement is simple—arrow keys or clicking/tapping an adjacent tile—but planning efficient routes is the heart of the challenge.\n\nLevels ramp from introductory layouts to trickier patterns that punish wasted steps and careless detours. The game runs instantly in a browser on desktop or phone, with a lightweight build that keeps loads snappy. Because the objective is always the same—push everything down—the satisfaction comes from shaving moves, spotting cleaner paths, and seeing the whole grid collapse in sequence.",
  //   "about":
  //       "Open-source browser game by Matthew Miner, written in vanilla JavaScript with a small footprint; released under the MIT license.",
  //   "aboutThisGame": {
  //     "genre": "Isometric logic puzzle",
  //     "sessionLength":
  //         "Most sessions run 2–10 minutes; a full 30-level run takes around half an hour.",
  //     "coreSkills": [
  //       "Plan routes to minimize moves",
  //       "Read isometric adjacency quickly",
  //       "Recover and re-route when blocked"
  //     ],
  //     "bestFor": [
  //       "Fans of clean, minimalist puzzles",
  //       "Short coffee-break play",
  //       "Players who enjoy optimizing paths"
  //     ],
  //     "monetization": "Free, no IAP/ads."
  //   },
  //   "features": [
  //     "30 hand-crafted levels with a gentle but steady difficulty ramp",
  //     "Instant in-browser play on desktop and mobile",
  //     "Keyboard or click/tap controls for accessible movement",
  //     "Clean, isometric cube aesthetic with smooth transitions"
  //   ],
  //   "howToPlayQuick": {
  //     "desktop": "Use arrow keys to roll the cube; or click an adjacent pink or blue tile to move.",
  //     "mobile": "Tap an adjacent pink or blue tile to roll your cube.",
  //     "goal": "Push every raised block down using as few moves as possible."
  //   },
  //   "proTips": [
  //     "Survey the whole board first and plan a loop that covers isolated tiles last.",
  //     "Avoid creating pockets that require extra backtracking to reach.",
  //     "Count moves and look for straighter lines that press multiple tiles in sequence."
  //   ],
  //   "whyPeopleLoveIt": [
  //     "Crisp objective with satisfying all-clear moments.",
  //     "Fast loading and frictionless browser play.",
  //     "A fair difficulty curve that rewards efficient thinking."
  //   ],
  //   "howToPlay": [
  //     "Open the game in a modern desktop or mobile browser.",
  //     "Start the first level and note which tiles remain raised.",
  //     "Roll onto adjacent tiles to press them down while minimizing steps.",
  //     "Clear all raised tiles to finish the level and move on."
  //   ],
  //   "tags": [
  //     "puzzle",
  //     "isometric",
  //     "logic",
  //     "browser",
  //     "minimalist",
  //     "open source",
  //     "global game jam",
  //     "levels"
  //   ],
  //   "platform": ["Web", "Mobile"]
  // },

  // {
  //   "title": "The Pond",
  //   "slug": "the-pond",
  //   "gameUrl": "https://thepond.zolmeister.com/",
  //   "fullGameUrl": MyImages.pondFull,
  //   "halfGameUrl": MyImages.pondHalf,
  //   "imageUrl":
  //       "https://camo.githubusercontent.com/1a0941a418b495bae8ccb10ad4cb8987becb37d0fdc29e8239b2daed741417d5/68747470733a2f2f7261772e6769746875622e636f6d2f5a6f6c6d6569737465722f706f6e642f6d61737465722f7075626c697368696e672f73637265656e73686f742d6d656e752d3634302d3430302e706e67",
  //   "description":
  //       "Swim a neon fish through a calm, minimalist pond and explore at your own pace in a smooth, resolution-independent browser experience.",
  //   "longDescription":
  //       "The Pond is a minimalist HTML5 game about gliding through a tranquil, abstract pond as a luminous fish. There’s no score or item shop—just smooth motion, elegant outlines, and a world that quietly spawns life around you as you move. It’s built to feel relaxing and immediate: open the page, slip into the water, and explore.\n\nUnder the hood it uses adaptive rendering and a fixed-step physics loop to keep motion consistent across devices, scaling gracefully from phones to desktops. Spawning adjusts to screen size, and collisions are simplified for performance, so the experience stays fluid even on modest hardware. The result is a lightweight, fast-loading web game that invites short breaks and unhurried wandering.",
  //   "about":
  //       "Open-source browser game by Zoli Kahan (Zolmeister), written in vanilla JavaScript/canvas. Source available on GitHub under a GPL-style license.",
  //   "aboutThisGame": {
  //     "genre": "Ambient exploration",
  //     "sessionLength":
  //         "Typical sessions last 2–10 minutes, depending on how long you feel like drifting.",
  //     "coreSkills": [
  //       "Steer smoothly and maintain momentum",
  //       "Read space and avoid crowded areas",
  //       "Adjust pacing as the pond repopulates"
  //     ],
  //     "bestFor": [
  //       "Players who enjoy quiet, low-pressure experiences",
  //       "Short coffee-break play on any device",
  //       "Fans of minimalist art and motion"
  //     ],
  //     "monetization": "Free, no IAP/ads."
  //   },
  //   "features": [
  //     "Minimalist neon outline art with smooth, fluid motion",
  //     "Adaptive quality and resolution-independent rendering",
  //     "Procedural spawning that reacts to your movement and screen size",
  //     "Instant play in the browser on phone or desktop"
  //   ],
  //   "howToPlayQuick": {
  //     "desktop": "Use the arrow keys or WASD to steer the fish and glide around the pond.",
  //     "mobile": "Tap and hold to swim toward your finger; drag to adjust direction.",
  //     "goal": "Relax and explore while avoiding collisions with other fish."
  //   },
  //   "proTips": [
  //     "Make gentle course corrections; sharp turns bleed momentum.",
  //     "Skirt the edges of crowded schools to stay clear of bumps.",
  //     "Pause briefly when the pond feels busy—spawns thin as you move on."
  //   ],
  //   "whyPeopleLoveIt": [
  //     "A soothing, no-pressure space to zone out for a few minutes.",
  //     "Elegant visuals and motion that feel great on any screen.",
  //     "Zero friction: open and play instantly in the browser."
  //   ],
  //   "howToPlay": [
  //     "Enter the pond and start swimming as a glowing outline fish.",
  //     "Use your controls to steer smoothly and keep a steady pace.",
  //     "Give busy areas space; drift into calmer water when it crowd ups.",
  //     "Play as long as you like—there’s no score or timer to chase."
  //   ],
  //   "tags": [
  //     "relaxing",
  //     "minimalist",
  //     "exploration",
  //     "fish",
  //     "canvas",
  //     "browser",
  //     "open source",
  //     "ambient"
  //   ],
  //   "platform": ["Web", "Mobile"]
  // },
  // {
  //   "title": "Pop, Pop, Win!",
  //   "slug": "pop-pop-win",
  //   "gameUrl": "https://dart-lang.github.io/sample-pop_pop_win/",
  //   "fullGameUrl": MyImages.popPopFull,
  //   "halfGameUrl": MyImages.popPopHalf,
  //   "imageUrl": "https://dart-lang.github.io/sample-pop_pop_win/favicon.ico",
  //   "description":
  //       "Balloon-themed Minesweeper: pop safe balloons, flag bombs, and clear the board across four difficulty levels.",
  //   "longDescription":
  //       "Pop, Pop, Win! is a clean, balloon-skinned take on classic Minesweeper. Tap or click hidden balloons to reveal numbers that tell you how many bombs touch that square—including diagonals. Use flags to mark suspected bombs and chord on revealed numbers to open safe neighbors when your flags are correct. Four difficulty presets let you choose between quick wins and tense deduction.\n\nBuilt with Dart and the StageXL rendering engine as an open-source web example, it loads fast and plays smoothly in the browser. The interface is straightforward, sound effects add a light touch, and the rules stay faithful to the logic-puzzle original. It’s a simple, reliable way to scratch that deduction itch without extra frills.",
  //   "about":
  //       "Open-source browser game built with Dart and StageXL; source is under the BSD-3-Clause license.",
  //   "aboutThisGame": {
  //     "genre": "Minesweeper variant",
  //     "sessionLength": "Most games take 1–10 minutes depending on difficulty and caution.",
  //     "coreSkills": [
  //       "Deduce bomb locations from counts",
  //       "Manage risk and probability",
  //       "Use flags and chording to clear space"
  //     ],
  //     "bestFor": [
  //       "Fans of classic logic puzzles",
  //       "Coffee-break sessions",
  //       "Players who enjoy methodical deduction"
  //     ],
  //     "monetization": "Free, no IAP/ads."
  //   },
  //   "features": [
  //     "Four difficulty levels: Easy, Medium, Hard, Extreme",
  //     "Shift/right-click to place or remove flags",
  //     "Chord on revealed numbers to open safe neighbors",
  //     "Lightweight, fast-loading web build with simple audio cues"
  //   ],
  //   "howToPlayQuick": {
  //     "desktop":
  //         "Click to reveal; Shift-click or right-click to flag; click a revealed number to chord when flags are correct.",
  //     "mobile":
  //         "Tap to reveal; secondary-click/flagging may require a long-press or keyboard (support varies by browser).",
  //     "goal": "Reveal all safe balloons without popping a bomb."
  //   },
  //   "proTips": [
  //     "Flag confidently, then chord on numbers to clear large areas quickly.",
  //     "Work edges and corners where counts give stronger clues.",
  //     "If unsure, compare overlapping number ranges to find the only squares that can hold bombs."
  //   ],
  //   "whyPeopleLoveIt": [
  //     "Straightforward, fast browser play with no setup.",
  //     "Pure deduction challenge that rewards careful logic.",
  //     "Faithful Minesweeper feel with a friendly balloon theme."
  //   ],
  //   "howToPlay": [
  //     "Pick a difficulty and start with a safe first click to open the board.",
  //     "Use numbers to infer which neighboring balloons hide bombs.",
  //     "Place flags with Shift/right-click to mark suspected bombs.",
  //     "Chord on revealed numbers when your flags are correct to clear safe neighbors until all safe cells are open."
  //   ],
  //   "tags": [
  //     "minesweeper",
  //     "logic puzzle",
  //     "browser",
  //     "dart",
  //     "stagexl",
  //     "singleplayer",
  //     "open source"
  //   ],
  //   "platform": ["Web", "Mobile"]
  // },
  // {
  //   "title": "Shape Experiment",
  //   "slug": "shape-experiment",
  //   "gameUrl": "https://shapex.org/",
  //   "fullGameUrl": MyImages.shapeHalf,
  //   "halfGameUrl": MyImages.shapeFull,
  //   "imageUrl": "https://raw.githubusercontent.com/binarymax/shape/master/star200.png",
  //   "description":
  //       "A quick shape-recognition test: identify shapes as fast and accurately as you can.",
  //   "longDescription":
  //       "Shape Experiment is a minimal, browser-based speed and accuracy test about recognizing basic shapes. You press Begin and work through simple shape prompts, aiming to respond as quickly and correctly as possible. The page shows straightforward stats so you can compare your best runs and typical performance.\n\nIt’s designed as a public experiment: you can play as often as you like, and lightweight cookies help tally your results locally while aggregate findings may be shared. There’s no account or setup—just an immediate, repeatable challenge that is easy to explain and demonstrate. If you enjoy small skill checks and seeing gradual improvement in time and accuracy, this delivers a clean, no-frills loop.",
  //   "about":
  //       "Open-source browser experiment by Max Irwin, built with HTML5/JavaScript and released under the MIT license.",
  //   "aboutThisGame": {
  //     "genre": "Reaction/recognition quiz",
  //     "sessionLength": "Most runs take 20 seconds to 2 minutes, depending on pace and repeats.",
  //     "coreSkills": [
  //       "Recognize shapes quickly",
  //       "Aim and click/tap accurately",
  //       "Maintain focus under time pressure"
  //     ],
  //     "bestFor": [
  //       "People who enjoy quick cognitive tests",
  //       "Short coffee-break sessions",
  //       "Educators/demoers needing a simple browser activity"
  //     ],
  //     "monetization": "Free, no IAP/ads."
  //   },
  //   "features": [
  //     "Instant, no-setup play in the browser",
  //     "Simple stats for best and average performance",
  //     "Replay freely; cookies tally local results",
  //     "Lightweight, distraction-free interface"
  //   ],
  //   "howToPlayQuick": {
  //     "desktop":
  //         "Click Begin, then select the correct shape as quickly and accurately as possible.",
  //     "mobile": "Tap Begin, then tap the correct shape as quickly and accurately as possible.",
  //     "goal": "Identify each shape correctly in the shortest time to improve your best results."
  //   },
  //   "proTips": [
  //     "Glance for edges and corners first—triangles, squares, and stars stand out by silhouette.",
  //     "Keep your cursor or thumb near the action area to reduce travel time.",
  //     "Stay steady: quick, confident selections beat rushed misclicks."
  //   ],
  //   "whyPeopleLoveIt": [
  //     "Ultra-fast sessions with immediate feedback on speed and accuracy.",
  //     "No clutter—just a clean challenge you can repeat anytime.",
  //     "Runs on virtually any modern browser with nothing to install."
  //   ],
  //   "howToPlay": [
  //     "Open the page and press Begin to start a round.",
  //     "Watch each prompt and identify the matching shape.",
  //     "Select the correct option as quickly and accurately as you can.",
  //     "Review your stats, then replay to beat your best time and accuracy."
  //   ],
  //   "tags": ["browser", "quiz", "reaction", "minimal", "speedrun", "open source"],
  //   "platform": ["Web", "Mobile"]
  // }
];
