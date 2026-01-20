/* =========================================================
   gravBALL Mobile-Friendly JS (drop-in replacement)
   - Works on desktop + mobile (tap/hold anywhere)
   - Prevents page scrolling/zoom while playing
   - Responsive canvas scaling (keeps internal 800x600 logic)
   - Fullscreen support (better than old webkit/moz only)
   ========================================================= */

let canvas, ctx;

// ---------- AUDIO ----------
const SCORE_BEEP  = new Audio("./assets/audio/score_beep.wav");
const COLLIDE_BEEP = new Audio("./assets/audio/lose.wav");
const GAME_START  = new Audio("./assets/audio/start.wav");
const BALL_BOUNCE = new Audio("./assets/audio/ball-bounce.wav");

// ---------- GAME STATE ----------
let paused = true;
let muted = false;
let gameStarted = false;
let gameLost = false;

let score = 0;
let scoreLast = 0;
let highScore = 0;
let localHighScore = 0;

// local storage
if (!localStorage.getItem("highScore")) localStorage.setItem("highScore", "0");

// ---------- PLAYER ----------
let playerX = 70;
let playerY = 300;
let playerRadius = 30;

// ---------- GRAVITY ----------
let vy = (Math.random() * -10) - 5;
let gravity = 0.5;     // default fall gravity
let bounce_factor = 0.8;

// ---------- OBSTACLES ----------
let pillarHeight = 452;
let pillarWidth = 50;
let gap = 220;
let constant = pillarHeight + gap;
let pillarSpeed = 5;

let pillarX = 800;     // start offscreen right
let pillarY = -250;

// ---------- LOOP ----------
let oldTimeStamp = 0;

// ---------------------------------------------------------
// Helpers
// ---------------------------------------------------------
function playSound(audio) {
  if (!muted) {
    try { audio.currentTime = 0; } catch (_) {}
    audio.play().catch(() => {});
  }
}

function setHold(isHolding) {
  gravity = isHolding ? 0 : 0.5;
}

function togglePause() {
  paused = !paused;
}

function toggleMute() {
  muted = !muted;
}

function isItMute() {
  ctx.fillStyle = "#fff";
  ctx.font = "20px Righteous";
  ctx.fillText(muted ? "Sound Off" : "Sound On", canvas.width / 2 - 45, 25);
}

function colorCircle(centerX, centerY, radius, drawColor) {
  ctx.fillStyle = drawColor;
  ctx.beginPath();
  ctx.arc(centerX, centerY, radius, 0, Math.PI * 2, true);
  ctx.fill();
}

function colorRect(leftX, topY, width, height, drawColor) {
  ctx.fillStyle = drawColor;
  ctx.fillRect(leftX, topY, width, height);
}

// ---------------------------------------------------------
// Responsive canvas (CSS scales it; keep internal 800x600)
// ---------------------------------------------------------
function setupCanvas() {
  canvas = document.getElementById("canvas");
  ctx = canvas.getContext("2d");

  // keep your internal resolution stable
  canvas.width = 800;
  canvas.height = 600;

  // prevent browser gestures on mobile
  canvas.style.touchAction = "none";
  canvas.style.userSelect = "none";
  canvas.style.webkitUserSelect = "none";
}

// ---------------------------------------------------------
// Input (Desktop + Mobile)
// ---------------------------------------------------------
function setupInput() {
  // prevent right-click / long-press menu
  canvas.addEventListener("contextmenu", (e) => e.preventDefault());

  // Desktop mouse
  canvas.addEventListener("mousedown", (e) => {
    e.preventDefault();
    startIfNeeded();
    setHold(true);
  });

  window.addEventListener("mouseup", () => setHold(false));

  // Mobile touch
  canvas.addEventListener(
    "touchstart",
    (e) => {
      e.preventDefault();
      startIfNeeded();
      setHold(true);
    },
    { passive: false }
  );

  canvas.addEventListener(
    "touchend",
    (e) => {
      e.preventDefault();
      setHold(false);
    },
    { passive: false }
  );

  canvas.addEventListener("touchcancel", () => setHold(false), { passive: true });

  // Buttons (if exist)
  document.getElementById("mute-btn")?.addEventListener("click", toggleMute);
  document.getElementById("fullscreen-btn")?.addEventListener("click", fullscreen);

  // Optional mobile buttons (if you added them)
  const holdBtn = document.getElementById("hold-btn");
  if (holdBtn) {
    holdBtn.addEventListener(
      "touchstart",
      (e) => {
        e.preventDefault();
        startIfNeeded();
        setHold(true);
      },
      { passive: false }
    );
    holdBtn.addEventListener(
      "touchend",
      (e) => {
        e.preventDefault();
        setHold(false);
      },
      { passive: false }
    );
    holdBtn.addEventListener("touchcancel", () => setHold(false), { passive: true });
  }

  document.getElementById("mute-btn-mobile")?.addEventListener("click", toggleMute);
  document.getElementById("fs-btn-mobile")?.addEventListener("click", fullscreen);
}

function startIfNeeded() {
  gameStarted = true;

  if (paused === true && gameLost === false) {
    togglePause();
    playSound(GAME_START);
  } else if (paused === true && muted === false && gameLost === false) {
    playSound(GAME_START);
  }

  // If on lose screen, clicking restarts (your original behavior)
  if (paused === true && gameLost === true) {
    restartGame();
    togglePause();
    playSound(GAME_START);
  }
}

// ---------------------------------------------------------
// Fullscreen (modern + Safari fallback)
// ---------------------------------------------------------
function fullscreen() {
  const el = document.querySelector(".game-container") || canvas;

  if (document.fullscreenElement) {
    document.exitFullscreen?.();
    return;
  }

  if (el.requestFullscreen) el.requestFullscreen();
  else if (el.webkitRequestFullscreen) el.webkitRequestFullscreen();
}

// ---------------------------------------------------------
// Game mechanics
// ---------------------------------------------------------
function restartGame() {
  gameLost = false;
  score = 0;
  scoreLast = 0;

  // reset player
  playerX = 70;
  playerY = 300;
  vy = (Math.random() * -10) - 5;

  // reset pillars
  gap = 220;
  constant = pillarHeight + gap;
  pillarSpeed = 5;
  pillarX = canvas.width;
  pillarY = Math.floor(Math.random() * pillarHeight) - pillarHeight;
}

function movePillars() {
  pillarX -= pillarSpeed;

  if (pillarX <= (0 - pillarWidth)) {
    pillarX = canvas.width;
    pillarY = Math.floor(Math.random() * pillarHeight) - pillarHeight;

    // keep gap stable (your old code gap-- makes it harder each pass; optional)
    // gap = Math.max(160, gap - 1);
    constant = pillarHeight + gap;
  }
}

function incrementScore() {
  if (pillarX === playerX - playerRadius - pillarWidth) {
    score++;
    playSound(SCORE_BEEP);
  }
}

function checkHighScore() {
  const stored = parseInt(localStorage.getItem("highScore") || "0", 10);
  if (scoreLast >= stored) {
    highScore = scoreLast;
    localStorage.setItem("highScore", String(scoreLast));
  }
}

function detectCollision() {
  const hit =
    (playerX - playerRadius) + (playerRadius * 1.65) >= pillarX &&
    (playerX - playerRadius) <= pillarX + pillarWidth &&
    (
      (playerY - playerRadius <= pillarY + pillarHeight) ||
      (playerY + playerRadius >= pillarY + constant)
    );

  if (hit) {
    playSound(COLLIDE_BEEP);

    // pause and show lose
    paused = true;
    gameLost = true;

    scoreLast = score;
    checkHighScore();
    score = 0;

    // reset pillars position for next run
    pillarX = canvas.width;
    pillarY = Math.floor(Math.random() * pillarHeight) - pillarHeight;
  }
}

function applyGravity() {
  playerY += vy;
  vy += gravity;

  // bottom bounce
  if (playerY + playerRadius > canvas.height) {
    playerY = canvas.height - playerRadius;
    playSound(BALL_BOUNCE);
    vy *= -bounce_factor;
  }
  // top bounce
  else if (playerY - playerRadius < 0) {
    playerY = 0 + playerRadius;
    playSound(BALL_BOUNCE);
    vy *= -bounce_factor;
  }
}

function update() {
  applyGravity();
  movePillars();
  incrementScore();
  detectCollision();
}

// ---------------------------------------------------------
// Drawing
// ---------------------------------------------------------
function drawGame() {
  ctx.clearRect(0, 0, canvas.width, canvas.height);

  // ball
  colorCircle(playerX, playerY, playerRadius, "white");

  // pillars
  colorRect(pillarX, pillarY, pillarWidth, pillarHeight, "white");
  colorRect(pillarX, pillarY + constant, pillarWidth, pillarHeight, "white");

  // score
  ctx.fillStyle = "#fff";
  ctx.font = "20px Righteous";
  ctx.fillText("Score : " + score, canvas.width / 2 - 45, 25);
}

function drawStart() {
  ctx.clearRect(0, 0, canvas.width, canvas.height);

  localHighScore = parseInt(localStorage.getItem("highScore") || "0", 10);

  ctx.fillStyle = "#fff";
  ctx.font = "20px Righteous";
  ctx.fillText("Tap / Click to Start", canvas.width / 2 - 85, canvas.height / 2 - 10);
  ctx.fillText("High Score: " + localHighScore, canvas.width / 2 - 65, canvas.height / 2 + 20);
  ctx.fillText("Hold to float • Release to fall", canvas.width / 2 - 135, canvas.height - 20);

  isItMute();
}

function drawLose() {
  ctx.clearRect(0, 0, canvas.width, canvas.height);

  localHighScore = parseInt(localStorage.getItem("highScore") || "0", 10);

  ctx.fillStyle = "#fff";
  ctx.font = "30px Righteous";
  ctx.fillText("Oops!", canvas.width / 2 - 40, canvas.height / 2 - 75);

  ctx.font = "20px Righteous";
  ctx.fillText("Scored: " + scoreLast, canvas.width / 2 - 50, canvas.height / 2 - 35);
  ctx.fillText("High Score: " + localHighScore, canvas.width / 2 - 75, canvas.height / 2);
  ctx.fillText("Tap / Click To Restart", canvas.width / 2 - 105, canvas.height - 200);

  isItMute();
}

// ---------------------------------------------------------
// Main loop
// ---------------------------------------------------------
function gameLoop(timeStamp) {
  const secondsPassed = (timeStamp - oldTimeStamp) / 1000;
  oldTimeStamp = timeStamp;

  // you don't use secondsPassed currently, keeping for future
  localHighScore = parseInt(localStorage.getItem("highScore") || "0", 10);

  if (!paused) {
    update();
    drawGame();
  } else if (paused && gameStarted === false) {
    drawStart();
  } else {
    drawLose();
  }

  window.requestAnimationFrame(gameLoop);
}

// ---------------------------------------------------------
// Init
// ---------------------------------------------------------
function init() {
  setupCanvas();
  setupInput();

  // init obstacle position
  pillarX = canvas.width;
  pillarY = -250;

  window.requestAnimationFrame(gameLoop);
}

window.addEventListener("load", init);
