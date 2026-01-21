// ====== BASE GAME SIZE (logic stays in these coordinates) ======
const BASE_W = 400;
const BASE_H = 500;

// SELECT CANVAS ELEMENT
const cvs = document.getElementById("breakout");
const ctx = cvs.getContext("2d");

// GAME CARD (container)
const gameCard = document.getElementById("gameCard");

// Mobile controls elements
const mobileControls = document.getElementById("mobileControls");
const btnLeft = document.getElementById("btnLeft");
const btnRight = document.getElementById("btnRight");

// Responsive canvas sizing (keeps logic at 400x500, scales visually)
function resizeGame() {
  const dpr = Math.max(1, window.devicePixelRatio || 1);

  const availableW = gameCard.clientWidth;
  const availableH = gameCard.clientHeight;

  const scale = Math.min(availableW / BASE_W, availableH / BASE_H);

  // Internal pixel size (sharp on retina)
  cvs.width = Math.floor(BASE_W * dpr);
  cvs.height = Math.floor(BASE_H * dpr);

  // Visual size
  cvs.style.width = `${Math.floor(BASE_W * scale)}px`;
  cvs.style.height = `${Math.floor(BASE_H * scale)}px`;

  // Draw in BASE units
  ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
  ctx.lineWidth = 3;
}

window.addEventListener("resize", resizeGame);
resizeGame();

// Detect touch device -> show buttons
const isTouchDevice =
  "ontouchstart" in window || navigator.maxTouchPoints > 0;

if (isTouchDevice) {
  mobileControls.style.display = "flex";
  mobileControls.setAttribute("aria-hidden", "false");
}

// GAME VARIABLES AND CONSTANTS
const PADDLE_WIDTH = 100;
const PADDLE_MARGIN_BOTTOM = 50;
const PADDLE_HEIGHT = 20;
const BALL_RADIUS = 8;

let LIFE = 3;
let SCORE = 0;
const SCORE_UNIT = 10;
let LEVEL = 1;
const MAX_LEVEL = 3;
let GAME_OVER = false;

let leftArrow = false;
let rightArrow = false;

// CREATE THE PADDLE
const paddle = {
  x: BASE_W / 2 - PADDLE_WIDTH / 2,
  y: BASE_H - PADDLE_MARGIN_BOTTOM - PADDLE_HEIGHT,
  width: PADDLE_WIDTH,
  height: PADDLE_HEIGHT,
  dx: 5,
};

// DRAW PADDLE
function drawPaddle() {
  ctx.fillStyle = "#2e3548";
  ctx.fillRect(paddle.x, paddle.y, paddle.width, paddle.height);

  ctx.strokeStyle = "#ffcd05";
  ctx.strokeRect(paddle.x, paddle.y, paddle.width, paddle.height);
}

// KEYBOARD CONTROL
document.addEventListener("keydown", (event) => {
  if (event.keyCode === 37) leftArrow = true;
  else if (event.keyCode === 39) rightArrow = true;
});

document.addEventListener("keyup", (event) => {
  if (event.keyCode === 37) leftArrow = false;
  else if (event.keyCode === 39) rightArrow = false;
});

// MOBILE BUTTON CONTROL (hold to move)
function bindHoldButton(btn, onDown, onUp) {
  btn.addEventListener("pointerdown", (e) => {
    e.preventDefault();
    onDown();
  });
  btn.addEventListener("pointerup", onUp);
  btn.addEventListener("pointercancel", onUp);
  btn.addEventListener("pointerleave", onUp);
}
bindHoldButton(btnLeft, () => (leftArrow = true), () => (leftArrow = false));
bindHoldButton(btnRight, () => (rightArrow = true), () => (rightArrow = false));

// DRAG / MOVE PADDLE WITH FINGER OR MOUSE
let isPointerDown = false;

cvs.addEventListener("pointerdown", (e) => {
  isPointerDown = true;
  movePaddleToPointer(e);
});

window.addEventListener("pointerup", () => {
  isPointerDown = false;
});

cvs.addEventListener("pointermove", (e) => {
  if (!isPointerDown) return;
  movePaddleToPointer(e);
});

function movePaddleToPointer(e) {
  const rect = cvs.getBoundingClientRect();
  // Convert pointer X from screen -> BASE coordinates
  const x = ((e.clientX - rect.left) / rect.width) * BASE_W;
  paddle.x = x - paddle.width / 2;
  // clamp
  paddle.x = Math.max(0, Math.min(BASE_W - paddle.width, paddle.x));
}

// MOVE PADDLE (keyboard/buttons)
function movePaddle() {
  if (rightArrow && paddle.x + paddle.width < BASE_W) {
    paddle.x += paddle.dx;
  } else if (leftArrow && paddle.x > 0) {
    paddle.x -= paddle.dx;
  }
}

// CREATE THE BALL
const ball = {
  x: BASE_W / 2,
  y: paddle.y - BALL_RADIUS,
  radius: BALL_RADIUS,
  speed: 4,
  dx: 3 * (Math.random() * 2 - 1),
  dy: -3,
};

// DRAW THE BALL
function drawBall() {
  ctx.beginPath();
  ctx.arc(ball.x, ball.y, ball.radius, 0, Math.PI * 2);
  ctx.fillStyle = "#ffcd05";
  ctx.fill();
  ctx.strokeStyle = "#2e3548";
  ctx.stroke();
  ctx.closePath();
}

// MOVE THE BALL
function moveBall() {
  ball.x += ball.dx;
  ball.y += ball.dy;
}

// RESET THE BALL
function resetBall() {
  ball.x = BASE_W / 2;
  ball.y = paddle.y - BALL_RADIUS;
  ball.dx = 3 * (Math.random() * 2 - 1);
  ball.dy = -3;
}

// BALL AND WALL COLLISION DETECTION
function ballWallCollision() {
  if (ball.x + ball.radius > BASE_W || ball.x - ball.radius < 0) {
    ball.dx = -ball.dx;
    WALL_HIT.play();
  }

  if (ball.y - ball.radius < 0) {
    ball.dy = -ball.dy;
    WALL_HIT.play();
  }

  if (ball.y + ball.radius > BASE_H) {
    LIFE--;
    LIFE_LOST.play();
    resetBall();
  }
}

// BALL AND PADDLE COLLISION (✅ FIXED)
function ballPaddleCollision() {
  const hitX = ball.x < paddle.x + paddle.width && ball.x > paddle.x;
  const hitY = ball.y < paddle.y + paddle.height && ball.y > paddle.y;

  if (hitX && hitY) {
    PADDLE_HIT.play();

    let collidePoint = ball.x - (paddle.x + paddle.width / 2);
    collidePoint = collidePoint / (paddle.width / 2);

    let angle = collidePoint * (Math.PI / 3);

    ball.dx = ball.speed * Math.sin(angle);
    ball.dy = -ball.speed * Math.cos(angle);
  }
}

// CREATE THE BRICKS
const brick = {
  row: 1,
  column: 5,
  width: 55,
  height: 20,
  offSetLeft: 20,
  offSetTop: 20,
  marginTop: 40,
  fillColor: "#2e3548",
  strokeColor: "#FFF",
};

let bricks = [];

function createBricks() {
  for (let r = 0; r < brick.row; r++) {
    bricks[r] = [];
    for (let c = 0; c < brick.column; c++) {
      bricks[r][c] = {
        x: c * (brick.offSetLeft + brick.width) + brick.offSetLeft,
        y: r * (brick.offSetTop + brick.height) + brick.offSetTop + brick.marginTop,
        status: true,
      };
    }
  }
}
createBricks();

// DRAW BRICKS
function drawBricks() {
  for (let r = 0; r < brick.row; r++) {
    for (let c = 0; c < brick.column; c++) {
      let b = bricks[r][c];
      if (b.status) {
        ctx.fillStyle = brick.fillColor;
        ctx.fillRect(b.x, b.y, brick.width, brick.height);

        ctx.strokeStyle = brick.strokeColor;
        ctx.strokeRect(b.x, b.y, brick.width, brick.height);
      }
    }
  }
}

// BALL BRICK COLLISION
function ballBrickCollision() {
  for (let r = 0; r < brick.row; r++) {
    for (let c = 0; c < brick.column; c++) {
      let b = bricks[r][c];
      if (b.status) {
        if (
          ball.x + ball.radius > b.x &&
          ball.x - ball.radius < b.x + brick.width &&
          ball.y + ball.radius > b.y &&
          ball.y - ball.radius < b.y + brick.height
        ) {
          BRICK_HIT.play();
          ball.dy = -ball.dy;
          b.status = false;
          SCORE += SCORE_UNIT;
        }
      }
    }
  }
}

// SHOW GAME STATS
function showGameStats(text, textX, textY, img, imgX, imgY) {
  ctx.fillStyle = "#FFF";
  ctx.font = "25px Germania One";
  ctx.fillText(text, textX, textY);
  ctx.drawImage(img, imgX, imgY, 25, 25);
}

// DRAW FUNCTION
function draw() {
  drawPaddle();
  drawBall();
  drawBricks();

  showGameStats(SCORE, 35, 25, SCORE_IMG, 5, 5);
  showGameStats(LIFE, BASE_W - 25, 25, LIFE_IMG, BASE_W - 55, 5);
  showGameStats(LEVEL, BASE_W / 2, 25, LEVEL_IMG, BASE_W / 2 - 30, 5);
}

// GAME OVER
function gameOver() {
  if (LIFE <= 0) {
    showYouLose();
    GAME_OVER = true;
  }
}

// LEVEL UP
function levelUp() {
  let isLevelDone = true;

  for (let r = 0; r < brick.row; r++) {
    for (let c = 0; c < brick.column; c++) {
      isLevelDone = isLevelDone && !bricks[r][c].status;
    }
  }

  if (isLevelDone) {
    WIN.play();

    if (LEVEL >= MAX_LEVEL) {
      showYouWin();
      GAME_OVER = true;
      return;
    }

    brick.row++;
    createBricks();
    ball.speed += 0.5;
    resetBall();
    LEVEL++;
  }
}

// UPDATE GAME FUNCTION
function update() {
  movePaddle();
  moveBall();
  ballWallCollision();
  ballPaddleCollision();
  ballBrickCollision();
  gameOver();
  levelUp();
}

// GAME LOOP
function loop() {
  ctx.drawImage(BG_IMG, 0, 0, BASE_W, BASE_H);
  draw();
  update();

  if (!GAME_OVER) requestAnimationFrame(loop);
}

// ====== AUDIO MANAGER ======
const soundElement = document.getElementById("sound");
soundElement.addEventListener("click", audioManager);

function audioManager() {
  let imgSrc = soundElement.getAttribute("src");
  let SOUND_IMG = imgSrc.includes("SOUND_ON") ? "img/SOUND_OFF.png" : "img/SOUND_ON.png";
  soundElement.setAttribute("src", SOUND_IMG);

  WALL_HIT.muted = !WALL_HIT.muted;
  PADDLE_HIT.muted = !PADDLE_HIT.muted;
  BRICK_HIT.muted = !BRICK_HIT.muted;
  WIN.muted = !WIN.muted;
  LIFE_LOST.muted = !LIFE_LOST.muted;
}

// ====== GAME OVER UI (✅ FIXED ids) ======
const gameover = document.getElementById("gameover");
const youwon = document.getElementById("youwon");   // ✅ correct
const youlose = document.getElementById("youlose");
const restart = document.getElementById("restart");

restart.addEventListener("click", () => location.reload());

function showYouWin() {
  gameover.style.display = "block";
  youwon.style.display = "block";
}

function showYouLose() {
  gameover.style.display = "block";
  youlose.style.display = "block";
}

// ====== LOAD IMAGES ======
const BG_IMG = new Image();
BG_IMG.src = "img/bg.jpg";

const LEVEL_IMG = new Image();
LEVEL_IMG.src = "img/level.png";

const LIFE_IMG = new Image();
LIFE_IMG.src = "img/life.png";

const SCORE_IMG = new Image();
SCORE_IMG.src = "img/score.png";

// ====== LOAD SOUNDS ======
const WALL_HIT = new Audio("sounds/wall.mp3");
const LIFE_LOST = new Audio("sounds/life_lost.mp3");
const PADDLE_HIT = new Audio("sounds/paddle_hit.mp3");
const WIN = new Audio("sounds/win.mp3");
const BRICK_HIT = new Audio("sounds/brick_hit.mp3");

// Start after bg loads (optional but cleaner)
BG_IMG.onload = () => loop();
