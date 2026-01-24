import 'package:gamezi/utils/images.dart';

List<Map<String, dynamic>> gameData = [
  {
    "title": "Alien Invasion",
    "slug": "alien-invasion",
    "gameUrl": "https://aloca-flutter.netlify.app/games/alien_invansion/index.html",
    "fullGameUrl": MyImages.alienInvansionFull,
    "halfGameUrl": MyImages.alienInvansionHalf,
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
    "gameUrl": "https://aloca-flutter.netlify.app/games/hextris/index.html",
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
  {
    "title": "2D Breakout",
    "slug": "2d-breakout",
    "gameUrl": "https://aloca-flutter.netlify.app/games/2D_Breakout/index.html",
    "fullGameUrl": MyImages.twoDBreakoutFull,
    "halfGameUrl": MyImages.twoDBreakoutHalf,
    "imageUrl": "",
    "description": "A classic 2D Breakout game.",
    "longDescription":
        "Control the paddle to bounce the ball and break all the bricks. Don't let the ball fall!",
    "about": "A browser-based 2D Breakout game.",
    "aboutThisGame": {
      "genre": "Arcade",
      "sessionLength": "Short",
      "coreSkills": ["Reflexes", "Timing"],
      "bestFor": ["Casual play"],
      "monetization": "Free"
    },
    "features": ["Classic gameplay", "Browser-based"],
    "howToPlayQuick": {
      "desktop": "Use arrow keys or mouse to move the paddle.",
      "mobile": "Touch and drag to move the paddle.",
      "goal": "Break all bricks."
    },
    "proTips": ["Watch the ball angle."],
    "whyPeopleLoveIt": ["Simple and addictive."],
    "howToPlay": ["Move paddle to hit ball.", "Break bricks."],
    "tags": ["arcade", "breakout"],
    "platform": ["Web"]
  },
  {
    "title": "3D Box Game",
    "slug": "3d-box-game",
    "gameUrl": "https://aloca-flutter.netlify.app/games/3d_Box_Game/index.html",
    "fullGameUrl": MyImages.threeDBoxGameFull,
    "halfGameUrl": MyImages.threeDBoxGameHalf,
    "imageUrl": "",
    "description": "A 3D box game.",
    "longDescription": "A 3D box game.",
    "about": "A 3D box game.",
    "aboutThisGame": {
      "genre": "Arcade",
      "sessionLength": "Short",
      "coreSkills": ["Reflexes"],
      "bestFor": ["Casual play"],
      "monetization": "Free"
    },
    "features": ["3D graphics"],
    "howToPlayQuick": {
      "desktop": "Use arrow keys.",
      "mobile": "Touch controls.",
      "goal": "Win the game."
    },
    "proTips": ["Play smart."],
    "whyPeopleLoveIt": ["Fun 3D action."],
    "howToPlay": ["Play the game."],
    "tags": ["3d", "arcade"],
    "platform": ["Web"]
  },
  {
    "title": "3D Snake",
    "slug": "3d-snake",
    "gameUrl": "https://aloca-flutter.netlify.app/games/3d_Snake/index.html",
    "fullGameUrl": MyImages.threeDSnakeFull,
    "halfGameUrl": MyImages.threeDSnakeHalf,
    "imageUrl": "",
    "description": "Classic Snake game in 3D.",
    "longDescription":
        "Navigate the snake in a 3D environment, eat food, and grow longer without hitting the walls or yourself.",
    "about": "A 3D version of Snake.",
    "aboutThisGame": {
      "genre": "Arcade",
      "sessionLength": "Short",
      "coreSkills": ["Reflexes", "Planning"],
      "bestFor": ["Casual play"],
      "monetization": "Free"
    },
    "features": ["3D graphics", "Classic gameplay"],
    "howToPlayQuick": {
      "desktop": "Use arrow keys to turn.",
      "mobile": "Swipe to turn.",
      "goal": "Eat food and grow."
    },
    "proTips": ["Don't hit the walls."],
    "whyPeopleLoveIt": ["Classic game with a twist."],
    "howToPlay": ["Control the snake.", "Eat food."],
    "tags": ["snake", "3d", "arcade"],
    "platform": ["Web"]
  },
  {
    "title": "Aim Training",
    "slug": "aim-training",
    "gameUrl": "https://aloca-flutter.netlify.app/games/Aim_Training/index.html",
    "fullGameUrl": MyImages.aimTrainingFull,
    "halfGameUrl": MyImages.aimTrainingHalf,
    "imageUrl": "",
    "description": "Train your aiming skills.",
    "longDescription": "Improve your mouse accuracy and reaction time with this aim training game.",
    "about": "Aim training game.",
    "aboutThisGame": {
      "genre": "Training",
      "sessionLength": "Short",
      "coreSkills": ["Aiming", "Reflexes"],
      "bestFor": ["Gamers"],
      "monetization": "Free"
    },
    "features": ["Target practice"],
    "howToPlayQuick": {
      "desktop": "Click targets.",
      "mobile": "Tap targets.",
      "goal": "Hit as many targets as possible."
    },
    "proTips": ["Be fast and accurate."],
    "whyPeopleLoveIt": ["Helps improve skills."],
    "howToPlay": ["Click targets."],
    "tags": ["training", "fps"],
    "platform": ["Web"]
  },
  {
    "title": "AirBalloon",
    "slug": "airballoon",
    "gameUrl": "https://aloca-flutter.netlify.app/games/AirBalloon/index.html",
    "fullGameUrl": MyImages.airBalloonFull,
    "halfGameUrl": MyImages.airBalloonHalf,
    "imageUrl": "",
    "description": "Fly an air balloon.",
    "longDescription": "Control a hot air balloon and navigate through obstacles.",
    "about": "Air balloon game.",
    "aboutThisGame": {
      "genre": "Arcade",
      "sessionLength": "Short",
      "coreSkills": ["Timing"],
      "bestFor": ["Casual play"],
      "monetization": "Free"
    },
    "features": ["Flying"],
    "howToPlayQuick": {
      "desktop": "Click to rise.",
      "mobile": "Tap to rise.",
      "goal": "Avoid obstacles."
    },
    "proTips": ["Don't hit anything."],
    "whyPeopleLoveIt": ["Relaxing."],
    "howToPlay": ["Fly the balloon."],
    "tags": ["flying", "arcade"],
    "platform": ["Web"]
  },
  {
    "title": "Arcade Game",
    "slug": "arcade-game",
    "gameUrl": "https://aloca-flutter.netlify.app/games/Arcade_Game/index.html",
    "fullGameUrl": MyImages.arcadeGameFull,
    "halfGameUrl": MyImages.arcadeGameHalf,
    "imageUrl": "",
    "description": "A classic arcade game.",
    "longDescription": "Enjoy a retro arcade experience.",
    "about": "Arcade game.",
    "aboutThisGame": {
      "genre": "Arcade",
      "sessionLength": "Short",
      "coreSkills": ["Reflexes"],
      "bestFor": ["Retro fans"],
      "monetization": "Free"
    },
    "features": ["Retro style"],
    "howToPlayQuick": {
      "desktop": "Standard controls.",
      "mobile": "Touch controls.",
      "goal": "High score."
    },
    "proTips": ["Keep playing."],
    "whyPeopleLoveIt": ["Nostalgia."],
    "howToPlay": ["Play and score."],
    "tags": ["arcade", "retro"],
    "platform": ["Web"]
  },
  {
    "title": "Avoider Game",
    "slug": "avoider-game",
    "gameUrl": "https://aloca-flutter.netlify.app/games/Avoider_Game/index.html",
    "fullGameUrl": MyImages.avoiderGameFull,
    "halfGameUrl": MyImages.avoiderGameHalf,
    "imageUrl": "",
    "description": "Avoid obstacles.",
    "longDescription": "Dodge incoming obstacles and survive as long as possible.",
    "about": "Avoider game.",
    "aboutThisGame": {
      "genre": "Arcade",
      "sessionLength": "Short",
      "coreSkills": ["Reflexes"],
      "bestFor": ["Casual play"],
      "monetization": "Free"
    },
    "features": ["Endless gameplay"],
    "howToPlayQuick": {"desktop": "Move to avoid.", "mobile": "Move to avoid.", "goal": "Survive."},
    "proTips": ["Watch patterns."],
    "whyPeopleLoveIt": ["Challenging."],
    "howToPlay": ["Dodge everything."],
    "tags": ["arcade", "dodge"],
    "platform": ["Web"]
  },
  {
    "title": "Block Ninjas",
    "slug": "block-ninjas",
    "gameUrl": "https://aloca-flutter.netlify.app/games/block_ninjas/index.html",
    "fullGameUrl": MyImages.blockNinjasFull,
    "halfGameUrl": MyImages.blockNinjasHalf,
    "imageUrl": "",
    "description": "Ninja action game.",
    "longDescription": "Fight as a ninja in a blocky world.",
    "about": "Block ninjas.",
    "aboutThisGame": {
      "genre": "Action",
      "sessionLength": "Short",
      "coreSkills": ["Combat"],
      "bestFor": ["Action fans"],
      "monetization": "Free"
    },
    "features": ["Ninjas", "Blocks"],
    "howToPlayQuick": {
      "desktop": "Attack enemies.",
      "mobile": "Attack enemies.",
      "goal": "Defeat bad guys."
    },
    "proTips": ["Use combos."],
    "whyPeopleLoveIt": ["Fun action."],
    "howToPlay": ["Fight."],
    "tags": ["ninja", "action"],
    "platform": ["Web"]
  },
  {
    "title": "Bounce Ball",
    "slug": "bounce-ball",
    "gameUrl": "https://aloca-flutter.netlify.app/games/Bounce_Ball/index.html",
    "fullGameUrl": MyImages.bounceBallFull,
    "halfGameUrl": MyImages.bounceBallHalf,
    "imageUrl": "",
    "description": "Bounce the ball.",
    "longDescription": "Navigate a bouncing ball through levels.",
    "about": "Bounce ball.",
    "aboutThisGame": {
      "genre": "Arcade",
      "sessionLength": "Short",
      "coreSkills": ["Timing"],
      "bestFor": ["Casual play"],
      "monetization": "Free"
    },
    "features": ["Physics"],
    "howToPlayQuick": {"desktop": "Move ball.", "mobile": "Move ball.", "goal": "Reach end."},
    "proTips": ["Time your jumps."],
    "whyPeopleLoveIt": ["Simple fun."],
    "howToPlay": ["Bounce."],
    "tags": ["arcade", "ball"],
    "platform": ["Web"]
  },
  {
    "title": "Cable Maze",
    "slug": "cable-maze",
    "gameUrl": "https://aloca-flutter.netlify.app/games/Cable_Maze/index.html",
    "fullGameUrl": MyImages.cableMazeFull,
    "halfGameUrl": MyImages.cableMazeHalf,
    "imageUrl": "",
    "description": "Solve the maze.",
    "longDescription": "Connect cables to solve the puzzle.",
    "about": "Cable maze.",
    "aboutThisGame": {
      "genre": "Puzzle",
      "sessionLength": "Medium",
      "coreSkills": ["Logic"],
      "bestFor": ["Puzzle fans"],
      "monetization": "Free"
    },
    "features": ["Mazes"],
    "howToPlayQuick": {
      "desktop": "Connect cables.",
      "mobile": "Connect cables.",
      "goal": "Solve maze."
    },
    "proTips": ["Think ahead."],
    "whyPeopleLoveIt": ["Brain teaser."],
    "howToPlay": ["Connect."],
    "tags": ["puzzle", "maze"],
    "platform": ["Web"]
  },
  {
    "title": "Chrome Dinosaur Game",
    "slug": "chrome-dinosaur-game",
    "gameUrl": "https://aloca-flutter.netlify.app/games/Chrome_Dinosaur_Game/index.html",
    "fullGameUrl": MyImages.chromeDinosaurGameFull,
    "halfGameUrl": MyImages.chromeDinosaurGameHalf,
    "imageUrl": "",
    "description": "The classic offline dino run.",
    "longDescription": "Run as a dinosaur, jump over cacti, and duck under pterodactyls.",
    "about": "Dino runner.",
    "aboutThisGame": {
      "genre": "Endless Runner",
      "sessionLength": "Short",
      "coreSkills": ["Timing"],
      "bestFor": ["Everyone"],
      "monetization": "Free"
    },
    "features": ["Endless running"],
    "howToPlayQuick": {"desktop": "Space to jump.", "mobile": "Tap to jump.", "goal": "Run far."},
    "proTips": ["Don't hit cactus."],
    "whyPeopleLoveIt": ["Classic."],
    "howToPlay": ["Run and jump."],
    "tags": ["runner", "dino"],
    "platform": ["Web"]
  },
  {
    "title": "Cross The River Game",
    "slug": "cross-the-river-game",
    "gameUrl": "https://aloca-flutter.netlify.app/games/Cross_The_River_Game/index.html",
    "fullGameUrl": MyImages.crossTheRiverGameFull,
    "halfGameUrl": MyImages.crossTheRiverGameHalf,
    "imageUrl": "",
    "description": "Cross the river safely.",
    "longDescription": "Get characters across the river following specific rules.",
    "about": "River crossing puzzle.",
    "aboutThisGame": {
      "genre": "Puzzle",
      "sessionLength": "Short",
      "coreSkills": ["Logic"],
      "bestFor": ["Puzzle fans"],
      "monetization": "Free"
    },
    "features": ["Logic puzzle"],
    "howToPlayQuick": {
      "desktop": "Select characters.",
      "mobile": "Select characters.",
      "goal": "Cross river."
    },
    "proTips": ["Follow rules."],
    "whyPeopleLoveIt": ["Brain teaser."],
    "howToPlay": ["Cross."],
    "tags": ["puzzle", "logic"],
    "platform": ["Web"]
  },
  {
    "title": "Dodge the Blocks",
    "slug": "dodge-the-blocks",
    "gameUrl": "https://aloca-flutter.netlify.app/games/Dodge%20the%20Blocks/index.html",
    "fullGameUrl": MyImages.dodgeTheBlocksFull,
    "halfGameUrl": MyImages.dodgeTheBlocksHalf,
    "imageUrl": "",
    "description": "Dodge falling blocks.",
    "longDescription": "Avoid being hit by blocks falling from the sky.",
    "about": "Dodging game.",
    "aboutThisGame": {
      "genre": "Arcade",
      "sessionLength": "Short",
      "coreSkills": ["Reflexes"],
      "bestFor": ["Casual play"],
      "monetization": "Free"
    },
    "features": ["Dodging"],
    "howToPlayQuick": {
      "desktop": "Move left/right.",
      "mobile": "Move left/right.",
      "goal": "Don't get hit."
    },
    "proTips": ["Look up."],
    "whyPeopleLoveIt": ["Fast paced."],
    "howToPlay": ["Dodge."],
    "tags": ["arcade", "dodge"],
    "platform": ["Web"]
  },
  {
    "title": "Dante",
    "slug": "dante",
    "gameUrl": "https://aloca-flutter.netlify.app/games/Dante/index.html",
    "fullGameUrl": MyImages.danteFull,
    "halfGameUrl": MyImages.danteHalf,
    "imageUrl": "",
    "description": "Dante game.",
    "longDescription": "A game called Dante.",
    "about": "Dante.",
    "aboutThisGame": {
      "genre": "Unknown",
      "sessionLength": "Short",
      "coreSkills": ["Play"],
      "bestFor": ["Everyone"],
      "monetization": "Free"
    },
    "features": ["Game"],
    "howToPlayQuick": {"desktop": "Play.", "mobile": "Play.", "goal": "Win."},
    "proTips": ["Play well."],
    "whyPeopleLoveIt": ["It is Dante."],
    "howToPlay": ["Play."],
    "tags": ["game"],
    "platform": ["Web"]
  },
  {
    "title": "Cut The Rope",
    "slug": "cut-the-rope",
    "gameUrl": "https://aloca-flutter.netlify.app/games/Cut_The_Rope/index.html",
    "fullGameUrl": MyImages.cutTheRopeFull,
    "halfGameUrl": MyImages.cutTheRopeHalf,
    "imageUrl":
        "https://raw.githubusercontent.com/kunjgit/GameZone/master/assets/images/Cut_the_rope.png",
    "description": "Feed candy to Om Nom in this physics-based puzzle game!",
    "longDescription":
        "Cut the Rope is an award-winning physics-based puzzle game where you feed candy to a little green monster named Om Nom. Collect stars, discover hidden prizes, and unlock exciting new levels in this addictively fun, award-winning, physics-based game!",
    "about": "A web version of the classic mobile game Cut the Rope.",
    "aboutThisGame": {
      "genre": "Physics Puzzle",
      "sessionLength": "Levels take 1-3 minutes.",
      "coreSkills": ["Physics prediction", "Timing", "Strategy"],
      "bestFor": ["Puzzle lovers", "Casual gamers", "Kids"],
      "monetization": "Free, no ads."
    },
    "features": [
      "Physics-based gameplay",
      "Adorable character",
      "Challenging puzzles",
      "Multiple levels"
    ],
    "howToPlayQuick": {
      "desktop": "Use the mouse to cut ropes.",
      "mobile": "Swipe to cut ropes.",
      "goal": "Feed the candy to Om Nom."
    },
    "proTips": [
      "Cut ropes in the right order.",
      "Use bubbles to float the candy.",
      "Collect all stars for max score."
    ],
    "whyPeopleLoveIt": ["Cute graphics", "Satisfying physics", "Brain-teasing puzzles"],
    "howToPlay": [
      "Cut ropes to release candy.",
      "Guide candy to Om Nom's mouth.",
      "Avoid obstacles like spiders and spikes."
    ],
    "tags": ["puzzle", "physics", "cut the rope", "om nom", "candy"],
    "platform": ["Web"]
  },
  {
    "title": "Breaklock",
    "slug": "breaklock",
    "gameUrl": "https://aloca-flutter.netlify.app/games/Breaklock/index.html",
    "fullGameUrl": MyImages.breaklockFull,
    "halfGameUrl": MyImages.breaklockHalf,
    "imageUrl": "",
    "description": "Crack the pattern lock code.",
    "longDescription":
        "A logic game inspired by the Android pattern lock. Guess the correct pattern by connecting dots. Use the color clues to deduce the right sequence.",
    "about": "A 'Mastermind'-like game with patterns.",
    "aboutThisGame": {
      "genre": "Puzzle",
      "sessionLength": "Short",
      "coreSkills": ["Logic", "Deduction"],
      "bestFor": ["Puzzle fans"],
      "monetization": "Free"
    },
    "features": ["Minimalist design", "Logic puzzles", "Multiple difficulty levels"],
    "howToPlayQuick": {
      "desktop": "Drag to connect dots.",
      "mobile": "Swipe to connect dots.",
      "goal": "Find the secret pattern."
    },
    "proTips": ["Use elimination.", "Pay attention to the number of correct segments."],
    "whyPeopleLoveIt": ["Brain teaser", "Clean UI"],
    "howToPlay": ["Draw a pattern.", "Check the feedback.", "Refine your guess."],
    "tags": ["puzzle", "logic", "pattern"],
    "platform": ["Web"]
  },
  {
    "title": "Astray",
    "slug": "astray",
    "gameUrl": "https://aloca-flutter.netlify.app/games/Astray/index.html",
    "fullGameUrl": MyImages.astrayFull,
    "halfGameUrl": MyImages.astrayHalf,
    "imageUrl": "",
    "description": "Lost in a WebGL maze.",
    "longDescription":
        "Navigate a 3D maze using Box2D and Three.js. Find your way out before time runs out (or just enjoy the physics).",
    "about": "A technical demo of 3D physics in the browser.",
    "aboutThisGame": {
      "genre": "Maze / Action",
      "sessionLength": "Short",
      "coreSkills": ["Navigation", "Spatial Awareness"],
      "bestFor": ["3D game fans"],
      "monetization": "Free"
    },
    "features": ["3D Graphics", "Physics engine", "Smooth controls"],
    "howToPlayQuick": {
      "desktop": "WASD or Arrows to move.",
      "mobile": "Touch controls (if available).",
      "goal": "Reach the exit."
    },
    "proTips": ["Watch your momentum.", "Don't get stuck in corners."],
    "whyPeopleLoveIt": ["Impressive tech", "Fun physics"],
    "howToPlay": ["Move the ball.", "Avoid walls.", "Find the goal."],
    "tags": ["3d", "maze", "physics", "webgl"],
    "platform": ["Web"]
  },
  {
    "title": "Evil Glitch",
    "slug": "evil-glitch",
    "gameUrl": "https://aloca-flutter.netlify.app/games/evilglitch/index.html",
    "fullGameUrl": MyImages.evilGlitchFull,
    "halfGameUrl": MyImages.evilGlitchHalf,
    "imageUrl": "",
    "description": "Survive the glitch storm.",
    "longDescription":
        "A fast-paced arcade shooter where you fight against glitches in the system. Use your skills to survive waves of enemies and corrupted data.",
    "about": "A winner of the JS13K competition.",
    "aboutThisGame": {
      "genre": "Arcade Shooter",
      "sessionLength": "Short",
      "coreSkills": ["Reflexes", "Precision"],
      "bestFor": ["Action fans"],
      "monetization": "Free"
    },
    "features": ["Glitch aesthetic", "Fast gameplay", "Unique enemies"],
    "howToPlayQuick": {
      "desktop": "WASD to move, Mouse to aim/shoot.",
      "mobile": "Touch controls.",
      "goal": "Survive."
    },
    "proTips": ["Keep moving.", "Watch out for the red glitches."],
    "whyPeopleLoveIt": ["Visual style", "Intense action"],
    "howToPlay": [
      "Move to avoid enemies.",
      "Shoot to destroy them.",
      "Survive as long as possible."
    ],
    "tags": ["arcade", "shooter", "glitch", "js13k"],
    "platform": ["Web"]
  },
  // {
  //   "title": "Factory Balls Forever",
  //   "slug": "factory-balls-forever",
  //   "gameUrl": "https://aloca-flutter.netlify.app/games/factoryballsforever/index.html",
  //   "fullGameUrl": MyImages.factoryBallsFull,
  //   "halfGameUrl": MyImages.factoryBallsHalf,
  //   "imageUrl": "",
  //   "description": "Logic puzzle: paint the balls.",
  //   "longDescription":
  //       "A logical puzzle game where you must create specific ball designs by dipping them in paint and using various tools (hats, belts, etc.) to mask areas. Figure out the correct order of operations.",
  //   "about": "A classic puzzle game by Bart Bonte.",
  //   "aboutThisGame": {
  //     "genre": "Logic Puzzle",
  //     "sessionLength": "Short per level",
  //     "coreSkills": ["Logic", "Planning"],
  //     "bestFor": ["Puzzle lovers"],
  //     "monetization": "Free"
  //   },
  //   "features": ["Creative puzzles", "Relaxing gameplay", "Many levels"],
  //   "howToPlayQuick": {
  //     "desktop": "Drag tools to the ball.",
  //     "mobile": "Tap tools.",
  //     "goal": "Match the target design."
  //   },
  //   "proTips": ["Think in reverse layers.", "Masks cover existing paint."],
  //   "whyPeopleLoveIt": ["Satisfying logic", "Cute design"],
  //   "howToPlay": [
  //     "Check the target ball.",
  //     "Apply paint and tools in order.",
  //     "Create the perfect match."
  //   ],
  //   "tags": ["puzzle", "logic", "bart bonte"],
  //   "platform": ["Web"]
  // },
  {
    "title": "2048",
    "slug": "2048",
    "gameUrl": "https://aloca-flutter.netlify.app/games/2048/index.html",
    "fullGameUrl": MyImages.game2048Full,
    "halfGameUrl": MyImages.game2048Half,
    "imageUrl": "",
    "description": "Join numbers to reach 2048.",
    "longDescription":
        "Swipe to move tiles. When two tiles with the same number touch, they merge into one. Join the numbers and get to the 2048 tile!",
    "about": "The classic sliding tile puzzle.",
    "aboutThisGame": {
      "genre": "Puzzle",
      "sessionLength": "Short",
      "coreSkills": ["Logic", "Planning"],
      "bestFor": ["Puzzle fans"],
      "monetization": "Free"
    },
    "features": ["Simple controls", "Addictive gameplay", "Clean UI"],
    "howToPlayQuick": {
      "desktop": "Arrow keys to move.",
      "mobile": "Swipe to move.",
      "goal": "Get 2048."
    },
    "proTips": ["Keep the highest number in a corner.", "Don't swipe in all directions randomly."],
    "whyPeopleLoveIt": ["Brain teaser", "Simple yet deep"],
    "howToPlay": ["Swipe to move tiles.", "Merge same numbers.", "Reach 2048."],
    "tags": ["puzzle", "math", "logic"],
    "platform": ["Web"]
  },
  {
    "title": "Pacman",
    "slug": "pacman",
    "gameUrl": "https://aloca-flutter.netlify.app/games/pacman/index.html",
    "fullGameUrl": MyImages.pacmanFull,
    "halfGameUrl": MyImages.pacmanHalf,
    "imageUrl": "",
    "description": "Eat dots, avoid ghosts.",
    "longDescription":
        "Navigate the maze, eat all the dots, and avoid the ghosts. Use power pellets to turn the tables on your enemies.",
    "about": "A web version of the arcade classic.",
    "aboutThisGame": {
      "genre": "Arcade",
      "sessionLength": "Short",
      "coreSkills": ["Reflexes", "Strategy"],
      "bestFor": ["Retro fans"],
      "monetization": "Free"
    },
    "features": ["Classic gameplay", "Retro sound", "High score chase"],
    "howToPlayQuick": {
      "desktop": "Arrow keys to move.",
      "mobile": "Swipe/Tap controls.",
      "goal": "Clear the maze."
    },
    "proTips": ["Learn ghost patterns.", "Save power pellets for emergencies."],
    "whyPeopleLoveIt": ["Nostalgia", "Timeless gameplay"],
    "howToPlay": ["Eat dots.", "Avoid ghosts.", "Eat power pellets to eat ghosts."],
    "tags": ["arcade", "retro", "maze"],
    "platform": ["Web"]
  },
  {
    "title": "Snake",
    "slug": "snake",
    "gameUrl": "https://aloca-flutter.netlify.app/games/snake/index.html",
    "fullGameUrl": MyImages.snakeGameFull,
    "halfGameUrl": MyImages.snakeGameHalf,
    "imageUrl": "",
    "description": "Eat food, grow long.",
    "longDescription":
        "Control the snake, eat the food, and grow longer. Don't hit the walls or yourself!",
    "about": "The classic snake game.",
    "aboutThisGame": {
      "genre": "Arcade",
      "sessionLength": "Short",
      "coreSkills": ["Reflexes", "Planning"],
      "bestFor": ["Casual gamers"],
      "monetization": "Free"
    },
    "features": ["Simple controls", "Increasing difficulty", "Retro style"],
    "howToPlayQuick": {
      "desktop": "Arrow keys to move.",
      "mobile": "Swipe/Tap controls.",
      "goal": "Grow as long as possible."
    },
    "proTips": ["Don't trap yourself.", "Plan your path."],
    "whyPeopleLoveIt": ["Classic fun", "Easy to learn"],
    "howToPlay": ["Move the snake.", "Eat food.", "Avoid collisions."],
    "tags": ["arcade", "snake", "classic"],
    "platform": ["Web"]
  },
  {
    "title": "Asteroids",
    "slug": "asteroids",
    "gameUrl": "https://aloca-flutter.netlify.app/games/asteroids/index.html",
    "fullGameUrl": MyImages.asteroidsFull,
    "halfGameUrl": MyImages.asteroidsHalf,
    "imageUrl": "",
    "description": "Destroy space rocks.",
    "longDescription":
        "Pilot your spaceship through an asteroid field. Shoot the rocks to break them into smaller pieces, but watch out for collisions!",
    "about": "A vector graphics arcade classic.",
    "aboutThisGame": {
      "genre": "Arcade Shooter",
      "sessionLength": "Short",
      "coreSkills": ["Aiming", "Movement"],
      "bestFor": ["Shooter fans"],
      "monetization": "Free"
    },
    "features": ["Physics-based movement", "Particle effects", "High scores"],
    "howToPlayQuick": {
      "desktop": "Arrow keys/WASD to move/shoot.",
      "mobile": "Touch controls.",
      "goal": "Survive and score."
    },
    "proTips": ["Don't drift too fast.", "Prioritize small, fast asteroids."],
    "whyPeopleLoveIt": ["Physics fun", "Intense action"],
    "howToPlay": ["Thrust to move.", "Rotate to aim.", "Shoot asteroids."],
    "tags": ["arcade", "space", "shooter"],
    "platform": ["Web"]
  },
  {
    "title": "Chess",
    "slug": "chess",
    "gameUrl": "https://aloca-flutter.netlify.app/games/chess/index.html",
    "fullGameUrl": MyImages.chessFull,
    "halfGameUrl": MyImages.chessHalf,
    "imageUrl": "",
    "description": "Classic strategy game.",
    "longDescription":
        "Play Chess against the computer or a friend. The ultimate game of strategy and tactics.",
    "about": "Standard chess implementation.",
    "aboutThisGame": {
      "genre": "Strategy",
      "sessionLength": "Variable",
      "coreSkills": ["Strategy", "Planning"],
      "bestFor": ["Thinkers"],
      "monetization": "Free"
    },
    "features": ["2D/3D view", "AI opponent", "Move history"],
    "howToPlayQuick": {
      "desktop": "Click and drag pieces.",
      "mobile": "Tap pieces.",
      "goal": "Checkmate the King."
    },
    "proTips": ["Control the center.", "Develop your pieces."],
    "whyPeopleLoveIt": ["Deep strategy", "Intellectual challenge"],
    "howToPlay": ["Move pieces according to rules.", "Capture enemy pieces.", "Checkmate."],
    "tags": ["strategy", "board", "classic"],
    "platform": ["Web"]
  },
  // {
  //   "title": "Underrun",
  //   "slug": "underrun",
  //   "gameUrl": "https://aloca-flutter.netlify.app/games/underrun/index.html",
  //   "fullGameUrl": MyImages.underrunFull,
  //   "halfGameUrl": MyImages.underrunHalf,
  //   "imageUrl": "",
  //   "description": "Twin-stick shooter in a facility.",
  //   "longDescription":
  //       "A twin-stick shooter set in a dark, abandoned facility. Fight off waves of enemies and restore power to the systems.",
  //   "about": "A JS13K competition winner.",
  //   "aboutThisGame": {
  //     "genre": "Shooter",
  //     "sessionLength": "Medium",
  //     "coreSkills": ["Reflexes", "Aiming"],
  //     "bestFor": ["Action fans"],
  //     "monetization": "Free"
  //   },
  //   "features": ["Atmospheric lighting", "Smooth controls", "Story elements"],
  //   "howToPlayQuick": {
  //     "desktop": "WASD move, Arrows/Mouse shoot.",
  //     "mobile": "Touch sticks.",
  //     "goal": "Restore systems."
  //   },
  //   "proTips": ["Keep moving backwards.", "Use cover."],
  //   "whyPeopleLoveIt": ["Mood", "Polished gameplay"],
  //   "howToPlay": ["Move through the facility.", "Shoot enemies.", "Activate terminals."],
  //   "tags": ["shooter", "action", "scifi"],
  //   "platform": ["Web"]
  // },
  {
    "title": "Q1K3",
    "slug": "q1k3",
    "gameUrl": "https://aloca-flutter.netlify.app/games/q1k3/index.html",
    "fullGameUrl": MyImages.q1k3Full,
    "halfGameUrl": MyImages.q1k3Half,
    "imageUrl": "",
    "description": "Retro FPS homage.",
    "longDescription":
        "A fast-paced First Person Shooter paying homage to Quake. Built in 13kb of JavaScript.",
    "about": "A technical marvel for JS13K.",
    "aboutThisGame": {
      "genre": "FPS",
      "sessionLength": "Short",
      "coreSkills": ["Aiming", "Movement"],
      "bestFor": ["FPS fans"],
      "monetization": "Free"
    },
    "features": ["3D graphics", "Fast movement", "Classic weapons"],
    "howToPlayQuick": {
      "desktop": "WASD move, Mouse look/shoot.",
      "mobile": "Touch controls.",
      "goal": "Frag enemies."
    },
    "proTips": ["Circle strafe.", "Keep shooting."],
    "whyPeopleLoveIt": ["Nostalgia", "Impressive tech"],
    "howToPlay": ["Navigate levels.", "Shoot monsters.", "Find the exit."],
    "tags": ["fps", "shooter", "3d", "retro"],
    "platform": ["Web"]
  },
  {
    "title": "Radius Raid",
    "slug": "radius-raid",
    "gameUrl": "https://aloca-flutter.netlify.app/games/radiusraid/index.html",
    "fullGameUrl": MyImages.radiusRaidFull,
    "halfGameUrl": MyImages.radiusRaidHalf,
    "imageUrl": "",
    "description": "Space shooter in a circle.",
    "longDescription":
        "A space themed shoot 'em up where you blast away enemies before they eliminate you. Relentless action.",
    "about": "A polished HTML5 shooter.",
    "aboutThisGame": {
      "genre": "Shooter",
      "sessionLength": "Short",
      "coreSkills": ["Reflexes", "Aiming"],
      "bestFor": ["Arcade fans"],
      "monetization": "Free"
    },
    "features": ["Particle explosions", "Upgrades", "Intense action"],
    "howToPlayQuick": {
      "desktop": "WASD/Arrows move, Mouse aim.",
      "mobile": "Touch controls.",
      "goal": "Survive."
    },
    "proTips": ["Prioritize fast enemies.", "Grab powerups."],
    "whyPeopleLoveIt": ["Visuals", "Challenge"],
    "howToPlay": ["Fly around.", "Shoot enemies.", "Survive."],
    "tags": ["shooter", "space", "arcade"],
    "platform": ["Web"]
  },
  {
    "title": "Racer",
    "slug": "racer",
    "gameUrl": "https://aloca-flutter.netlify.app/games/racer/index.html",
    "fullGameUrl": MyImages.racerFull,
    "halfGameUrl": MyImages.racerHalf,
    "imageUrl": "",
    "description": "Retro racing game.",
    "longDescription":
        "A retro-style racing game inspired by OutRun. Drive fast, avoid traffic, and enjoy the scenery.",
    "about": "A classic Pseudo-3D racer.",
    "aboutThisGame": {
      "genre": "Racing",
      "sessionLength": "Short",
      "coreSkills": ["Reflexes", "Steering"],
      "bestFor": ["Racing fans"],
      "monetization": "Free"
    },
    "features": ["Pseudo-3D graphics", "Smooth scrolling", "Music"],
    "howToPlayQuick": {
      "desktop": "Arrow keys to drive.",
      "mobile": "Touch controls.",
      "goal": "Finish the race."
    },
    "proTips": ["Stay on the road.", "Brake for sharp corners."],
    "whyPeopleLoveIt": ["Retro vibe", "Sense of speed"],
    "howToPlay": ["Accelerate.", "Steer.", "Avoid other cars."],
    "tags": ["racing", "retro", "cars"],
    "platform": ["Web"]
  },
  {
    "title": "Connect3",
    "slug": "connect3",
    "gameUrl": "https://aloca-flutter.netlify.app/games/connect3/index.html",
    "fullGameUrl": MyImages.connect3Full,
    "halfGameUrl": MyImages.connect3Half,
    "imageUrl": "",
    "description": "Connect 3 puzzle.",
    "longDescription": "A simple puzzle game where you match 3 or more items on a hexagonal grid.",
    "about": "A relaxing puzzle game.",
    "aboutThisGame": {
      "genre": "Puzzle",
      "sessionLength": "Short",
      "coreSkills": ["Logic", "Pattern matching"],
      "bestFor": ["Casual players"],
      "monetization": "Free"
    },
    "features": ["Hexagonal grid", "Simple rules", "Relaxing"],
    "howToPlayQuick": {
      "desktop": "Click/Drag to connect.",
      "mobile": "Touch to connect.",
      "goal": "Score points."
    },
    "proTips": ["Look for long chains.", "Plan ahead."],
    "whyPeopleLoveIt": ["Relaxing", "Satisfying"],
    "howToPlay": ["Connect matching items.", "Clear the board.", "Get high score."],
    "tags": ["puzzle", "match-3", "hex"],
    "platform": ["Web"]
  }
];
