import 'package:gamezi/utils/images.dart';

List<Map<String, dynamic>> gameData = [
  {
    "title": "Memory Card",
    "slug": "memory-card",
    "gameUrl": "https://intelizia.com/games/memory_card/index.html",
    "fullGameUrl": MyImages.memoryCardFull,
    "halfGameUrl": MyImages.memoryCardHalf,
    "imageUrl": "https://i.ibb.co/M6KTWnf/pic.jpg",
    "description":
        "Flip over cards, remember icons, and clear the board by matching all pairs in this quick memory puzzle.",
    "longDescription":
        "Memory Card is a classic concentration game that runs entirely in the browser. A grid of facedown cards hides simple, colorful icons underneath; your job is to flip two at a time and remember where each symbol lives. When you reveal a matching pair, they stay face up. Miss a match and both cards shake briefly before flipping back, forcing you to rely on recall instead of luck.\n\nBecause the deck is small and reshuffled each round, games stay short and replayable. The layout is clean, the animations are snappy, and everything responds to clicks or taps, making it a good fit for quick mental warmups, casual play, or light brain training between tasks.",
    "about":
        "A straightforward browser memory game built with HTML, CSS, and JavaScript. It focuses on responsive card flips and simple, readable icons instead of heavy effects.",
    "aboutThisGame": {
      "genre": "Memory / concentration puzzle",
      "sessionLength":
          "Most boards take 1–3 minutes depending on how carefully you track flipped cards.",
      "coreSkills": [
        "Short-term visual memory",
        "Pattern and position recognition",
        "Focused attention over short rounds"
      ],
      "bestFor": [
        "Players who enjoy quiet, low-stress puzzles",
        "Short brain-training sessions during breaks",
        "Casual play on phones, tablets, and desktops"
      ],
      "monetization":
          "Completely free browser experience with no accounts, energy timers, or in-game purchases."
    },
    "features": [
      "16-card grid that reshuffles icons every round for fresh layouts",
      "Smooth flip and shake animations when you miss a match",
      "Automatic reset once all pairs are found so you can instantly replay",
      "Simple art that stays readable on small or large screens"
    ],
    "howToPlayQuick": {
      "desktop":
          "Click any card to flip it, then click a second card to try and find its matching icon.",
      "mobile":
          "Tap cards to reveal them two at a time; matched pairs stay open while mismatches flip back.",
      "goal":
          "Clear the entire grid by remembering each icon’s position and matching every pair with as few mistakes as possible."
    },
    "proTips": [
      "Scan the grid in a consistent pattern so you know where you have already looked.",
      "When you miss a pair, mentally group both positions together to catch them on the next pass.",
      "Try to remember not just the icons but their rough row and column to speed up matching."
    ],
    "whyPeopleLoveIt": [
      "Easy to understand in seconds with no tutorial required.",
      "Short, repeatable rounds that feel satisfying to clear.",
      "Works well on touch devices and desktops alike."
    ],
    "howToPlay": [
      "Press play and watch the grid of facedown cards appear.",
      "Flip two cards at a time to reveal the icons underneath.",
      "If they match, leave them open; if not, note their positions before they flip back.",
      "Continue flipping and remembering until every pair on the board has been matched."
    ],
    "tags": ["memory game", "matching", "puzzle", "browser", "casual", "brain training"],
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
    "title": "Falling Ball",
    "slug": "falling-ball",
    "gameUrl": "https://intelizia.com/games/falling_ball/index.html",
    "fullGameUrl": MyImages.fallingBallFull,
    "halfGameUrl": MyImages.fallingBallHalf,
    "imageUrl": "https://intelizia.com/games/falling_ball/icon.png",
    "description": "Guide the ball down through the gaps.",
    "longDescription":
        "Control the falling ball and guide it through the gaps in the platforms. Avoid getting squashed at the top. How deep can you go?",
    "about": "A fast-paced falling game.",
    "aboutThisGame": {
      "genre": "Arcade / Skill",
      "sessionLength": "Short rounds",
      "coreSkills": ["Reflexes", "Timing"],
      "bestFor": ["Quick breaks", "High score chasers"],
      "monetization": "Free"
    },
    "features": ["Simple controls", "Endless gameplay", "Increasing speed"],
    "howToPlayQuick": {
      "desktop": "Arrow keys to move",
      "mobile": "Tilt or tap to move",
      "goal": "Fall as far as possible"
    },
    "proTips": ["Watch the edges", "Keep moving"],
    "whyPeopleLoveIt": ["Addictive", "Simple fun"],
    "howToPlay": ["Move left or right", "Find the gap", "Don't get crushed"],
    "tags": ["arcade", "falling", "skill"],
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
    "gameUrl": "https://intelizia.com/games/hextrics/index.html",
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
];
