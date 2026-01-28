import 'package:gamezi/utils/images.dart';

List<Map<String, dynamic>> gameData = [
  {
    "title": "Alien Invasion",
    "slug": "alien-invasion",
    "gameUrl": "https://intelizia.com/games/alien_invansion/index.html",
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
    "title": "0h h1",
    "slug": "0h-h1",
    "gameUrl": "https://intelizia.com/games/ohh1/index.html",
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
    "title": "Crossy Road",
    "slug": "crossy-road",
    "gameUrl": "https://intelizia.com/games/crossy_road/index.html",
    "fullGameUrl": MyImages.crossyRoadFull,
    "halfGameUrl": MyImages.crossyRoadHalf,
    "imageUrl": "https://intelizia.com/games/crossy_road/icon.png",
    "description": "Hop across roads, rivers, and train tracks without getting hit.",
    "longDescription":
        "Crossy Road is an endless arcade hopper. Dodge traffic, hop across logs, evade trains, and collect coins. Don't stay still for too long or you're toast! Simple, addictive, and fun for all ages.",
    "about": "The classic endless road crossing game.",
    "aboutThisGame": {
      "genre": "Arcade / Action",
      "sessionLength": "Short bursts, 1-5 minutes",
      "coreSkills": ["Timing", "Reflexes", "Planning"],
      "bestFor": ["Casual play", "High score chasers"],
      "monetization": "Free to play"
    },
    "features": ["Endless gameplay", "Retro voxel graphics", "Simple controls"],
    "howToPlayQuick": {
      "desktop": "Arrow keys to move",
      "mobile": "Tap to move forward, swipe to move sideways",
      "goal": "Go as far as you can"
    },
    "proTips": ["Look ahead for traffic patterns", "Don't wait too long"],
    "whyPeopleLoveIt": ["Addictive gameplay", "Cute characters"],
    "howToPlay": ["Tap to hop forward", "Swipe left/right to move sideways", "Avoid obstacles"],
    "tags": ["arcade", "action", "retro", "voxel"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "Simon Says",
    "slug": "simon-says",
    "gameUrl": "https://intelizia.com/games/simon_say_game/index.html",
    "fullGameUrl": MyImages.simonSaysFull,
    "halfGameUrl": MyImages.simonSaysHalf,
    "imageUrl": "https://intelizia.com/games/simon_say_game/icon.png",
    "description": "Memorize and repeat the sequence of lights and sounds.",
    "longDescription":
        "Test your memory with Simon Says. Watch the pattern of flashing lights and listen to the sounds, then repeat the sequence exactly. The patterns get longer and faster as you progress. How long can you keep up?",
    "about": "A classic memory game of lights and sounds.",
    "aboutThisGame": {
      "genre": "Puzzle / Memory",
      "sessionLength": "Varies",
      "coreSkills": ["Memory", "Focus"],
      "bestFor": ["Brain training", "Casual play"],
      "monetization": "Free"
    },
    "features": ["Increasing difficulty", "Classic gameplay", "Audio feedback"],
    "howToPlayQuick": {
      "desktop": "Click the colored buttons",
      "mobile": "Tap the colored buttons",
      "goal": "Repeat the sequence correctly"
    },
    "proTips": ["Say the colors out loud", "Focus on the rhythm"],
    "whyPeopleLoveIt": ["Simple yet challenging", "Improves memory"],
    "howToPlay": ["Watch the sequence", "Repeat it back", "Don't make a mistake"],
    "tags": ["memory", "puzzle", "classic"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "Tower Block",
    "slug": "tower-block",
    "gameUrl": "https://intelizia.com/games/tower_block/index.html",
    "fullGameUrl": MyImages.towerBlockFull,
    "halfGameUrl": MyImages.towerBlockHalf,
    "imageUrl": "https://intelizia.com/games/tower_block/icon.png",
    "description": "Stack the blocks as high as you can to build a skyscraper.",
    "longDescription":
        "Tower Block is a game of precision and timing. Drop the moving blocks on top of each other to build the tallest tower possible. Any part of the block that overhangs will be cut off, making the next target smaller. Keep your cool and aim for the perfect stack.",
    "about": "Build the highest tower by stacking blocks perfectly.",
    "aboutThisGame": {
      "genre": "Arcade / Skill",
      "sessionLength": "Short rounds",
      "coreSkills": ["Timing", "Precision"],
      "bestFor": ["Quick breaks", "Competition"],
      "monetization": "Free"
    },
    "features": ["One-tap gameplay", "Physics-based stacking", "Endless challenge"],
    "howToPlayQuick": {
      "desktop": "Click or Spacebar to drop",
      "mobile": "Tap screen to drop",
      "goal": "Build a high tower"
    },
    "proTips": ["Wait for the block to align", "Don't rush"],
    "whyPeopleLoveIt": ["Satisfying perfect drops", "Easy to learn, hard to master"],
    "howToPlay": ["Watch the moving block", "Tap to drop it on the stack", "Avoid overhanging"],
    "tags": ["arcade", "stacking", "skill"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "Whack A Mole",
    "slug": "whack-a-mole",
    "gameUrl": "https://intelizia.com/games/what_a_mole/index.html",
    "fullGameUrl": MyImages.whackAMoleFull,
    "halfGameUrl": MyImages.whackAMoleHalf,
    "imageUrl": "https://intelizia.com/games/what_a_mole/icon.png",
    "description": "Hit the moles as they pop up, but be quick!",
    "longDescription":
        "The classic carnival game comes to your screen. Moles pop up from their holes at random intervals. Your job is to whack them back down before they hide again. The game speeds up as you go, testing your reaction time. Watch out for special items or penalties!",
    "about": "Test your reflexes in this classic arcade game.",
    "aboutThisGame": {
      "genre": "Arcade / Action",
      "sessionLength": "Short rounds",
      "coreSkills": ["Reflexes", "Hand-eye coordination"],
      "bestFor": ["Stress relief", "Casual fun"],
      "monetization": "Free"
    },
    "features": ["Fast-paced action", "Classic arcade feel", "Score tracking"],
    "howToPlayQuick": {
      "desktop": "Click the moles",
      "mobile": "Tap the moles",
      "goal": "Hit as many moles as possible"
    },
    "proTips": ["Keep your eyes moving", "Don't anticipate too much"],
    "whyPeopleLoveIt": ["Satisfying gameplay", "Nostalgic fun"],
    "howToPlay": ["Wait for a mole to appear", "Tap or click it quickly", "Score points"],
    "tags": ["arcade", "action", "reflexes"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "Candy Crush",
    "slug": "candy-crush",
    "gameUrl": "https://intelizia.com/games/candy_crush/index.html",
    "fullGameUrl": MyImages.candyCrushFull,
    "halfGameUrl": MyImages.candyCrushHalf,
    "imageUrl": "https://intelizia.com/games/candy_crush/icon.png",
    "description": "Match candies to clear the board.",
    "longDescription":
        "Classic match-3 puzzle game. Swap adjacent candies to create lines of three or more of the same color. Clear jellies, collect ingredients, and reach the target score.",
    "about": "The sweet match-3 puzzle game.",
    "aboutThisGame": {
      "genre": "Puzzle / Match-3",
      "sessionLength": "Short rounds",
      "coreSkills": ["Pattern recognition", "Planning"],
      "bestFor": ["Casual play", "Relaxation"],
      "monetization": "Free"
    },
    "features": ["Colorful graphics", "Many levels", "Special candies"],
    "howToPlayQuick": {
      "desktop": "Click and drag to swap",
      "mobile": "Swipe to swap",
      "goal": "Match 3 or more candies"
    },
    "proTips": ["Look for 4 or 5 matches", "Save special candies"],
    "whyPeopleLoveIt": ["Satisfying combos", "Relaxing gameplay"],
    "howToPlay": ["Swap two candies", "Match 3 or more", "Complete the objective"],
    "tags": ["puzzle", "match-3", "candy"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "Gray Ball",
    "slug": "gray-ball",
    "gameUrl": "https://intelizia.com/games/gray_ball/index.html",
    "fullGameUrl": MyImages.grayBallFull,
    "halfGameUrl": MyImages.grayBallHalf,
    "imageUrl": "https://intelizia.com/games/gray_ball/icon.png",
    "description": "Navigate the gray ball through obstacles.",
    "longDescription":
        "A challenging physics-based game. Control the gray ball and navigate through a series of obstacles and traps to reach the goal.",
    "about": "Physics-based ball navigation.",
    "aboutThisGame": {
      "genre": "Puzzle / Skill",
      "sessionLength": "Varies",
      "coreSkills": ["Precision", "Physics"],
      "bestFor": ["Challenge seekers", "Puzzle fans"],
      "monetization": "Free"
    },
    "features": ["Physics engine", "Challenging levels", "Minimalist design"],
    "howToPlayQuick": {
      "desktop": "Arrow keys or Mouse",
      "mobile": "Tilt or touch",
      "goal": "Reach the exit"
    },
    "proTips": ["Use momentum", "Be patient"],
    "whyPeopleLoveIt": ["Challenging", "Rewarding"],
    "howToPlay": ["Control the ball", "Avoid obstacles", "Reach the goal"],
    "tags": ["puzzle", "physics", "ball"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "Cat Catch",
    "slug": "cat-catch",
    "gameUrl": "https://intelizia.com/games/cat_catch/Cat/index.html",
    "fullGameUrl": MyImages.catCatchFull,
    "halfGameUrl": MyImages.catCatchHalf,
    "imageUrl": "https://intelizia.com/games/cat_catch/icon.png",
    "description": "Catch the falling items with the cat.",
    "longDescription":
        "Move the cat left and right to catch the falling items. Avoid dangerous objects. Collect power-ups to increase your score.",
    "about": "A cute catching game.",
    "aboutThisGame": {
      "genre": "Arcade / Casual",
      "sessionLength": "Short rounds",
      "coreSkills": ["Reflexes", "Speed"],
      "bestFor": ["Kids", "Casual play"],
      "monetization": "Free"
    },
    "features": ["Cute graphics", "Simple gameplay", "Power-ups"],
    "howToPlayQuick": {
      "desktop": "Arrow keys to move",
      "mobile": "Tap or swipe",
      "goal": "Catch items"
    },
    "proTips": ["Watch for bombs", "Prioritize high value items"],
    "whyPeopleLoveIt": ["Cute cat", "Relaxing"],
    "howToPlay": ["Move the cat", "Catch good items", "Avoid bad items"],
    "tags": ["arcade", "cat", "casual"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "0h n0",
    "slug": "0h-n0",
    "gameUrl": "https://intelizia.com/games/ohh0/index.html",
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
    "title": "Slow Roads",
    "slug": "slow-roads",
    "gameUrl": "https://intelizia.com/games/slow_road/index.html",
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
    "title": "Hextris",
    "slug": "hextris",
    "gameUrl": "https://intelizia.com/games/hextris/index.html",
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
    "gameUrl": "https://intelizia.com/games/2D_Breakout/index.html",
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
    "gameUrl": "https://intelizia.com/games/3d_Box_Game/index.html",
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
    "gameUrl": "https://intelizia.com/games/3d_Snake/index.html",
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
    "gameUrl": "https://intelizia.com/games/Aim_Training/index.html",
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
    "gameUrl": "https://intelizia.com/games/AirBalloon/index.html",
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
    "gameUrl": "https://intelizia.com/games/Arcade_Game/index.html",
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
    "gameUrl": "https://intelizia.com/games/Avoider_Game/index.html",
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
    "gameUrl": "https://intelizia.com/games/block_ninjas/index.html",
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
    "gameUrl": "https://intelizia.com/games/Bounce_Ball/index.html",
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
    "gameUrl": "https://intelizia.com/games/Cable_Maze/index.html",
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
    "gameUrl": "https://intelizia.com/games/Chrome_Dinosaur_Game/index.html",
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
    "gameUrl": "https://intelizia.com/games/Cross_The_River_Game/index.html",
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
    "gameUrl": "https://intelizia.com/games/Dodge%20the%20Blocks/index.html",
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
    "gameUrl": "https://intelizia.com/games/Dante/index.html",
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
    "gameUrl": "https://intelizia.com/games/Cut_The_Rope/index.html",
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
    "gameUrl": "https://intelizia.com/games/Breaklock/index.html",
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
    "gameUrl": "https://intelizia.com/games/Astray/index.html",
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
    "gameUrl": "https://intelizia.com/games/evilglitch/index.html",
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
  {
    "title": "2048",
    "slug": "2048",
    "gameUrl": "https://intelizia.com/games/2048/index.html",
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
    "gameUrl": "https://intelizia.com/games/pacman/index.html",
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
    "gameUrl": "https://intelizia.com/games/snake/index.html",
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
    "gameUrl": "https://intelizia.com/games/asteroids/index.html",
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
    "gameUrl": "https://intelizia.com/games/chess/index.html",
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
  {
    "title": "Q1K3",
    "slug": "q1k3",
    "gameUrl": "https://intelizia.com/games/q1k3/index.html",
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
    "gameUrl": "https://intelizia.com/games/radiusraid/index.html",
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
    "gameUrl": "https://intelizia.com/games/racer/index.html",
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
    "gameUrl": "https://intelizia.com/games/connect3/index.html",
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
  },
  {
    "title": "WordSprint",
    "slug": "word-sprint",
    "gameUrl": "https://intelizia.com/games/WordSprint/index.html",
    "fullGameUrl": MyImages.wordSprintFull,
    "halfGameUrl": MyImages.wordSprintHalf,
    "imageUrl": "https://intelizia.com/games/word_sprint/icon.png",
    "description": "A fast-paced word puzzle game.",
    "longDescription":
        "Race against the clock to find words in this exciting puzzle game. Test your vocabulary and speed.",
    "about": "Fast-paced word finding action.",
    "aboutThisGame": {
      "genre": "Puzzle / Word",
      "sessionLength": "Short",
      "coreSkills": ["Vocabulary", "Speed"],
      "bestFor": ["Word game fans"],
      "monetization": "Free"
    },
    "features": ["Timed mode", "Endless words"],
    "howToPlayQuick": {
      "desktop": "Click/Drag to form words.",
      "mobile": "Swipe to form words.",
      "goal": "Find words."
    },
    "proTips": ["Look for short words first.", "Be quick."],
    "whyPeopleLoveIt": ["Challenging", "Fun"],
    "howToPlay": ["Connect letters.", "Make words.", "Score points."],
    "tags": ["word", "puzzle", "sprint"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "Zurbo",
    "slug": "zurbo",
    "gameUrl": "https://intelizia.com/games/Zurbo/index.html",
    "fullGameUrl": MyImages.zurboFull,
    "halfGameUrl": MyImages.zurboHalf,
    "imageUrl": "https://intelizia.com/games/zurbo/icon.png",
    "description": "An exciting arcade game.",
    "longDescription": "Experience the thrill of Zurbo. (Description placeholder)",
    "about": "Arcade fun.",
    "aboutThisGame": {
      "genre": "Arcade",
      "sessionLength": "Short",
      "coreSkills": ["Reflexes"],
      "bestFor": ["Casual play"],
      "monetization": "Free"
    },
    "features": ["Fun gameplay"],
    "howToPlayQuick": {
      "desktop": "Play with mouse/keyboard.",
      "mobile": "Touch controls.",
      "goal": "Win the game."
    },
    "proTips": ["Practice makes perfect."],
    "whyPeopleLoveIt": ["Fun"],
    "howToPlay": ["Start game.", "Play.", "Win."],
    "tags": ["arcade", "zurbo"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "Word Shuffle",
    "slug": "word-shuffle-game",
    "gameUrl": "https://intelizia.com/games/Word_Shuffle_Game/index.html",
    "fullGameUrl": MyImages.wordShuffleFull,
    "halfGameUrl": MyImages.wordShuffleHalf,
    "imageUrl": "https://intelizia.com/games/word_shuffle/icon.png",
    "description": "Unscramble the letters to form words.",
    "longDescription":
        "Challenge your brain with Word Shuffle. Rearrange the shuffled letters to find the hidden words.",
    "about": "Word unscrambling puzzle.",
    "aboutThisGame": {
      "genre": "Puzzle / Word",
      "sessionLength": "Varies",
      "coreSkills": ["Vocabulary", "Logic"],
      "bestFor": ["Puzzle lovers"],
      "monetization": "Free"
    },
    "features": ["Many levels", "Brain training"],
    "howToPlayQuick": {
      "desktop": "Click letters.",
      "mobile": "Tap letters.",
      "goal": "Form correct words."
    },
    "proTips": ["Think of common patterns."],
    "whyPeopleLoveIt": ["Relaxing", "Educational"],
    "howToPlay": ["Look at letters.", "Form a word.", "Submit."],
    "tags": ["word", "shuffle", "puzzle"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "The Last Spartan",
    "slug": "the-last-spartan",
    "gameUrl": "https://intelizia.com/games/The_Last_Spartan/index.html",
    "fullGameUrl": MyImages.theLastSpartanFull,
    "halfGameUrl": MyImages.theLastSpartanHalf,
    "imageUrl": "https://intelizia.com/games/the_last_partman/icon.png",
    "description": "Defend against waves of enemies.",
    "longDescription":
        "You are the last Spartan. Stand your ground and fight off the incoming hordes of enemies in this action-packed game.",
    "about": "Action defense game.",
    "aboutThisGame": {
      "genre": "Action / Defense",
      "sessionLength": "Medium",
      "coreSkills": ["Combat", "Strategy"],
      "bestFor": ["Action fans"],
      "monetization": "Free"
    },
    "features": ["Epic battles", "Upgrades"],
    "howToPlayQuick": {
      "desktop": "Attack and defend.",
      "mobile": "Tap to fight.",
      "goal": "Survive."
    },
    "proTips": ["Time your attacks.", "Watch your health."],
    "whyPeopleLoveIt": ["Exciting combat"],
    "howToPlay": ["Fight enemies.", "Survive waves.", "Be the hero."],
    "tags": ["action", "spartan", "fight"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "Unruly Tower",
    "slug": "unruly-tower",
    "gameUrl": "https://intelizia.com/games/Unruly_Tower/index.html",
    "fullGameUrl": MyImages.unrulyTowerFull,
    "halfGameUrl": MyImages.unrulyTowerHalf,
    "imageUrl": "https://intelizia.com/games/untruly_tower/icon.png",
    "description": "Build a tower and keep it steady.",
    "longDescription":
        "Stack blocks to build the highest tower possible, but watch out - it might get unruly! Balance is key.",
    "about": "Tower building physics game.",
    "aboutThisGame": {
      "genre": "Arcade / Physics",
      "sessionLength": "Short",
      "coreSkills": ["Precision", "Timing"],
      "bestFor": ["Casual play"],
      "monetization": "Free"
    },
    "features": ["Physics based", "Endless"],
    "howToPlayQuick": {"desktop": "Drop blocks.", "mobile": "Tap to drop.", "goal": "Build high."},
    "proTips": ["Align carefully."],
    "whyPeopleLoveIt": ["Addictive"],
    "howToPlay": ["Drop blocks.", "Don't let it fall.", "Reach the sky."],
    "tags": ["tower", "stack", "physics"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "Uxu",
    "slug": "uxu",
    "gameUrl": "https://intelizia.com/games/Uxu/index.html",
    "fullGameUrl": MyImages.uxuFull,
    "halfGameUrl": MyImages.uxuHalf,
    "imageUrl": "https://intelizia.com/games/uxu/icon.png",
    "description": "A minimalist puzzle game.",
    "longDescription":
        "Uxu is a logic puzzle game with a clean, minimalist design. Solve the challenges and progress through levels.",
    "about": "Minimalist logic puzzle.",
    "aboutThisGame": {
      "genre": "Puzzle",
      "sessionLength": "Varies",
      "coreSkills": ["Logic"],
      "bestFor": ["Thinkers"],
      "monetization": "Free"
    },
    "features": ["Clean design", "Brain teasers"],
    "howToPlayQuick": {
      "desktop": "Click to interact.",
      "mobile": "Tap to interact.",
      "goal": "Solve the puzzle."
    },
    "proTips": ["Think outside the box."],
    "whyPeopleLoveIt": ["Simple yet deep"],
    "howToPlay": ["Understand the rule.", "Solve the level.", "Advance."],
    "tags": ["puzzle", "minimalist", "logic"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "Sudoku",
    "slug": "sudoku",
    "gameUrl": "https://intelizia.com/games/Sudoku/index.html",
    "fullGameUrl": MyImages.sudokuFull,
    "halfGameUrl": MyImages.sudokuHalf,
    "imageUrl": "https://intelizia.com/games/sudoku/icon.png",
    "description": "The classic number puzzle game.",
    "longDescription":
        "Play the classic Sudoku game. Fill the grid so that every row, column, and 3x3 box contains the digits 1 to 9.",
    "about": "Classic Sudoku.",
    "aboutThisGame": {
      "genre": "Puzzle / Logic",
      "sessionLength": "Medium",
      "coreSkills": ["Logic", "Deduction"],
      "bestFor": ["Everyone"],
      "monetization": "Free"
    },
    "features": ["Multiple difficulties", "Classic rules"],
    "howToPlayQuick": {
      "desktop": "Click cell, type number.",
      "mobile": "Tap cell, select number.",
      "goal": "Fill the grid."
    },
    "proTips": ["Scan rows and columns.", "Use notes."],
    "whyPeopleLoveIt": ["Classic brain training"],
    "howToPlay": ["Select a cell.", "Enter a number 1-9.", "Complete the grid."],
    "tags": ["sudoku", "puzzle", "number"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "Touch The Ball",
    "slug": "touch-the-ball",
    "gameUrl": "https://intelizia.com/games/Touch_The_Ball/index.html",
    "fullGameUrl": MyImages.touchTheBallFull,
    "halfGameUrl": MyImages.touchTheBallHalf,
    "imageUrl": "https://intelizia.com/games/touch_the_ball/icon.png",
    "description": "Keep the ball in the air.",
    "longDescription":
        "Test your reflexes in Touch The Ball. Don't let the ball touch the ground. How long can you keep it up?",
    "about": "Reflex game.",
    "aboutThisGame": {
      "genre": "Arcade / Sport",
      "sessionLength": "Short",
      "coreSkills": ["Reflexes", "Timing"],
      "bestFor": ["Quick fun"],
      "monetization": "Free"
    },
    "features": ["Simple controls", "Addictive"],
    "howToPlayQuick": {
      "desktop": "Click the ball.",
      "mobile": "Tap the ball.",
      "goal": "Keep it up."
    },
    "proTips": ["Watch the trajectory."],
    "whyPeopleLoveIt": ["Simple fun"],
    "howToPlay": ["Tap the ball.", "Don't drop it.", "Score points."],
    "tags": ["ball", "arcade", "touch"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "Run and Jump",
    "slug": "run-and-jump",
    "gameUrl": "https://intelizia.com/games/Run and Jump/index.html",
    "fullGameUrl": MyImages.runAndJumpFull,
    "halfGameUrl": MyImages.runAndJumpHalf,
    "imageUrl": "https://intelizia.com/games/run_and_jump/icon.png",
    "description": "Run, jump, and avoid obstacles.",
    "longDescription":
        "A classic endless runner. Jump over obstacles, collect items, and run as far as you can.",
    "about": "Endless runner.",
    "aboutThisGame": {
      "genre": "Arcade / Runner",
      "sessionLength": "Short",
      "coreSkills": ["Reflexes", "Timing"],
      "bestFor": ["Casual play"],
      "monetization": "Free"
    },
    "features": ["Endless", "Fast paced"],
    "howToPlayQuick": {"desktop": "Space to jump.", "mobile": "Tap to jump.", "goal": "Run far."},
    "proTips": ["Time your jumps."],
    "whyPeopleLoveIt": ["Classic genre"],
    "howToPlay": ["Run forward.", "Jump over obstacles.", "Don't crash."],
    "tags": ["runner", "jump", "arcade"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "Uno",
    "slug": "uno",
    "gameUrl": "https://intelizia.com/games/UNO/index.html",
    "fullGameUrl": MyImages.unoFull,
    "halfGameUrl": MyImages.unoHalf,
    "imageUrl": "https://intelizia.com/games/uno/icon.png",
    "description": "The classic card game.",
    "longDescription":
        "Play the popular card game Uno. Match colors and numbers, use action cards, and be the first to get rid of all your cards.",
    "about": "Classic card game.",
    "aboutThisGame": {
      "genre": "Card Game",
      "sessionLength": "Medium",
      "coreSkills": ["Strategy", "Luck"],
      "bestFor": ["Groups", "Families"],
      "monetization": "Free"
    },
    "features": ["Multiplayer", "Classic rules"],
    "howToPlayQuick": {
      "desktop": "Click cards to play.",
      "mobile": "Tap cards to play.",
      "goal": "Empty hand."
    },
    "proTips": ["Save wild cards.", "Watch opponents."],
    "whyPeopleLoveIt": ["Social fun"],
    "howToPlay": ["Match color or number.", "Use action cards.", "Say Uno!"],
    "tags": ["card", "uno", "classic"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "3D Cube Puzzle",
    "slug": "3d-cube-puzzle",
    "gameUrl": "https://intelizia.com/games/3D-cube-puzzle-game-main/index.html",
    "fullGameUrl": MyImages.threeDCubeFull,
    "halfGameUrl": MyImages.threeDCubeHalf,
    "imageUrl": "https://intelizia.com/games/3D-cube-puzzle-game-main/icon.png",
    "description": "A challenging 3D puzzle game.",
    "longDescription":
        "Solve complex 3D puzzles by rotating and matching cubes. Test your spatial awareness and logic skills.",
    "about": "3D spatial puzzle.",
    "aboutThisGame": {
      "genre": "Puzzle / 3D",
      "sessionLength": "Medium",
      "coreSkills": ["Spatial Awareness", "Logic"],
      "bestFor": ["Puzzle enthusiasts"],
      "monetization": "Free"
    },
    "features": ["3D graphics", "Challenging levels"],
    "howToPlayQuick": {
      "desktop": "Mouse to rotate and interact.",
      "mobile": "Touch to rotate and interact.",
      "goal": "Solve the puzzle."
    },
    "proTips": ["Visualize the solution.", "Rotate frequently."],
    "whyPeopleLoveIt": ["Brain teasing", "Visually appealing"],
    "howToPlay": ["Rotate the cube.", "Match patterns.", "Complete the level."],
    "tags": ["3d", "puzzle", "cube"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "Don't Die To Ghosts",
    "slug": "dont-die-to-ghosts",
    "gameUrl": "https://intelizia.com/games/Dont_Die_To_Ghosts/index.html",
    "fullGameUrl": MyImages.dontDieToGhostsFull,
    "halfGameUrl": MyImages.dontDieToGhostsHalf,
    "imageUrl": "https://intelizia.com/games/Dont_Die_To_Ghosts/icon.png",
    "description": "Survive against waves of ghosts.",
    "longDescription":
        "Avoid the ghosts and stay alive as long as possible. A fast-paced survival game that tests your reflexes.",
    "about": "Survival arcade game.",
    "aboutThisGame": {
      "genre": "Arcade / Survival",
      "sessionLength": "Short",
      "coreSkills": ["Reflexes", "Evasion"],
      "bestFor": ["Action fans"],
      "monetization": "Free"
    },
    "features": ["Spooky theme", "Fast gameplay"],
    "howToPlayQuick": {
      "desktop": "Arrow keys to move.",
      "mobile": "Touch controls.",
      "goal": "Survive."
    },
    "proTips": ["Keep moving.", "Watch the corners."],
    "whyPeopleLoveIt": ["Thrilling", "Simple fun"],
    "howToPlay": ["Move to avoid ghosts.", "Survive as long as you can.", "Get high score."],
    "tags": ["ghosts", "survival", "arcade"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "Everyone's Sky",
    "slug": "everyones-sky",
    "gameUrl": "https://intelizia.com/games/Everyones_Sky/index.html",
    "fullGameUrl": MyImages.everyonesSkyFull,
    "halfGameUrl": MyImages.everyonesSkyHalf,
    "imageUrl": "https://intelizia.com/games/Everyones_Sky/icon.png",
    "description": "Explore the vast sky.",
    "longDescription":
        "A relaxing exploration game where you travel through the sky. Discover new places and enjoy the view.",
    "about": "Exploration game.",
    "aboutThisGame": {
      "genre": "Adventure / Exploration",
      "sessionLength": "Long",
      "coreSkills": ["Curiosity"],
      "bestFor": ["Explorers"],
      "monetization": "Free"
    },
    "features": ["Open world", "Relaxing"],
    "howToPlayQuick": {
      "desktop": "Arrow keys to fly.",
      "mobile": "Touch controls.",
      "goal": "Explore."
    },
    "proTips": ["Take your time.", "Look for secrets."],
    "whyPeopleLoveIt": ["Peaceful", "Beautiful"],
    "howToPlay": ["Fly around.", "Discover areas.", "Enjoy."],
    "tags": ["sky", "exploration", "adventure"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "Galaxy Rider",
    "slug": "galaxy-rider",
    "gameUrl": "https://intelizia.com/games/Galaxy_Rider/index.html",
    "fullGameUrl": MyImages.galaxyRiderFull,
    "halfGameUrl": MyImages.galaxyRiderHalf,
    "imageUrl": "https://intelizia.com/games/Galaxy_Rider/icon.png",
    "description": "Ride through the galaxy.",
    "longDescription":
        "Navigate your spaceship through the galaxy, avoiding obstacles and collecting stars.",
    "about": "Space runner.",
    "aboutThisGame": {
      "genre": "Arcade / Space",
      "sessionLength": "Short",
      "coreSkills": ["Reflexes", "Steering"],
      "bestFor": ["Sci-fi fans"],
      "monetization": "Free"
    },
    "features": ["Space theme", "Fast action"],
    "howToPlayQuick": {
      "desktop": "Arrow keys to steer.",
      "mobile": "Tilt or touch.",
      "goal": "Travel far."
    },
    "proTips": ["Watch for asteroids.", "Collect powerups."],
    "whyPeopleLoveIt": ["Exciting", "Visuals"],
    "howToPlay": ["Steer ship.", "Dodge obstacles.", "Ride the galaxy."],
    "tags": ["galaxy", "space", "rider"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "Find The Missing Letter",
    "slug": "find-the-missing-letter",
    "gameUrl": "https://intelizia.com/games/Find_The_Missing_Letter/index.html",
    "fullGameUrl": MyImages.findTheMissingLetterFull,
    "halfGameUrl": MyImages.findTheMissingLetterHalf,
    "imageUrl": "https://intelizia.com/games/Find_The_Missing_Letter/icon.png",
    "description": "Educational word game.",
    "longDescription":
        "Complete the words by finding the missing letter. A great way to improve vocabulary and spelling.",
    "about": "Educational puzzle.",
    "aboutThisGame": {
      "genre": "Educational / Word",
      "sessionLength": "Varies",
      "coreSkills": ["Spelling", "Vocabulary"],
      "bestFor": ["Kids", "Learners"],
      "monetization": "Free"
    },
    "features": ["Learning focus", "Simple interface"],
    "howToPlayQuick": {
      "desktop": "Click the missing letter.",
      "mobile": "Tap the missing letter.",
      "goal": "Complete words."
    },
    "proTips": ["Read the word carefully."],
    "whyPeopleLoveIt": ["Educational", "Fun learning"],
    "howToPlay": ["Read the incomplete word.", "Select the correct letter.", "Win."],
    "tags": ["word", "educational", "spelling"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "Glitch Buster",
    "slug": "glitch-buster",
    "gameUrl": "https://intelizia.com/games/Glitch_Buster/index.html",
    "fullGameUrl": MyImages.glitchBusterFull,
    "halfGameUrl": MyImages.glitchBusterHalf,
    "imageUrl": "https://intelizia.com/games/Glitch_Buster/icon.png",
    "description": "Fix the glitches in the system.",
    "longDescription":
        "You are a Glitch Buster. Enter the digital world and eliminate the bugs and glitches threatening the system.",
    "about": "Action platformer.",
    "aboutThisGame": {
      "genre": "Action / Platformer",
      "sessionLength": "Medium",
      "coreSkills": ["Platforming", "Combat"],
      "bestFor": ["Gamers"],
      "monetization": "Free"
    },
    "features": ["Retro style", "Action packed"],
    "howToPlayQuick": {
      "desktop": "Arrow keys to move/jump.",
      "mobile": "Touch controls.",
      "goal": "Clear glitches."
    },
    "proTips": ["Master the jump.", "Shoot glitches."],
    "whyPeopleLoveIt": ["Retro feel", "Challenge"],
    "howToPlay": ["Run and jump.", "Defeat enemies.", "Fix the system."],
    "tags": ["glitch", "platformer", "action"],
    "platform": ["Web", "Mobile"]
  },
  {
    "title": "Hedgehog Havoc",
    "slug": "hedgehog-havoc",
    "gameUrl": "https://intelizia.com/games/Hedgehog_Havoc/index.html",
    "fullGameUrl": MyImages.hedgehogHavocFull,
    "halfGameUrl": MyImages.hedgehogHavocHalf,
    "imageUrl": "https://intelizia.com/games/Hedgehog_Havoc/icon.png",
    "description": "Roll and cause havoc.",
    "longDescription":
        "Control a hedgehog and roll through levels, collecting items and avoiding danger. Speed is your friend.",
    "about": "Platformer runner.",
    "aboutThisGame": {
      "genre": "Platformer",
      "sessionLength": "Short",
      "coreSkills": ["Timing", "Speed"],
      "bestFor": ["Sonic fans"],
      "monetization": "Free"
    },
    "features": ["Fast gameplay", "Rolling mechanics"],
    "howToPlayQuick": {
      "desktop": "Arrow keys to roll.",
      "mobile": "Touch controls.",
      "goal": "Finish level."
    },
    "proTips": ["Keep momentum.", "Watch out for spikes."],
    "whyPeopleLoveIt": ["Fast fun", "Cute character"],
    "howToPlay": ["Roll.", "Jump.", "Collect rings."],
    "tags": ["hedgehog", "platformer", "speed"],
    "platform": ["Web", "Mobile"]
  }
];
