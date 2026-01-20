const canvas = document.getElementById("gameCanvas");
const ctx = canvas.getContext("2d");

const introScreen = document.getElementById("introScreen");
const gameOverMessage = document.getElementById("gameOverMessage");
const finalScoreElement = document.getElementById("finalScore");
const gameStatus = document.getElementById("gameStatus");
const pauseButton = document.getElementById("pauseButton");
const controlsWrapper = document.getElementById("controlsWrapper");

const newGameButton = document.getElementById("newGameButton");
const retryButton = document.getElementById("retryButton");

const leftBtn = document.getElementById("leftBtn");
const rightBtn = document.getElementById("rightBtn");

let score = 0;
let ballRadius = 18;
let x, y, dx, dy;

const paddleWidth = 140;
const paddleHeight = 18;
let paddleX;

let rightPressed = false;
let leftPressed = false;
let gameOver = false;
let paused = false;

const ballImage = new Image();
ballImage.src = "cat.png";

const cryImage = new Image();
cryImage.src = "catCry.png";

const dieImage = new Image();
dieImage.src = "dieCat.png";

let currentBallImage = ballImage;

function resizeCanvas() {
    const isMobile = window.innerWidth < 768;
    canvas.width = isMobile ? window.innerWidth : window.innerWidth * 0.9;
    canvas.height = isMobile ? window.innerHeight * 0.7 : window.innerHeight * 0.8;
    paddleX = (canvas.width - paddleWidth) / 2;
}
window.addEventListener("resize", resizeCanvas);
resizeCanvas();

function resetGame() {
    x = canvas.width / 2;
    y = canvas.height / 2;
    dx = 3;
    dy = -3;
    score = 0;
    gameOver = false;
    paused = false;
    currentBallImage = ballImage;
    updateScore();
}

function startGame() {
    introScreen.style.display = "none";
    canvas.style.display = "block";
    gameStatus.style.display = "block";
    pauseButton.style.display = "block";
    controlsWrapper.style.display = "flex";
    resetGame();
    draw();
}

function updateScore() {
    gameStatus.textContent = `Score: ${score}`;
}

function drawBall() {
    ctx.drawImage(
        currentBallImage,
        x - ballRadius * 2,
        y - ballRadius * 2,
        ballRadius * 4,
        ballRadius * 4
    );
}

function drawPaddle() {
    ctx.fillStyle = "#ff4081";
    ctx.fillRect(paddleX, canvas.height - paddleHeight, paddleWidth, paddleHeight);
}

function togglePause() {
    paused = !paused;
    pauseButton.textContent = paused ? "Resume" : "Pause";
    if (!paused) draw();
}

function showGameOver() {
    gameOver = true;
    currentBallImage = dieImage;
    finalScoreElement.textContent = score;
    gameOverMessage.style.display = "block";
}

function draw() {
    if (gameOver || paused) return;

    ctx.clearRect(0, 0, canvas.width, canvas.height);
    drawBall();
    drawPaddle();

    if (x + dx > canvas.width - ballRadius || x + dx < ballRadius) {
        dx = -dx;
        currentBallImage = cryImage;
        setTimeout(() => currentBallImage = ballImage, 150);
    }

    if (y + dy < ballRadius) {
        dy = -dy;
    } else if (y + dy > canvas.height - ballRadius) {
        if (x > paddleX && x < paddleX + paddleWidth) {
            dy = -dy;
            score++;
            updateScore();
        } else {
            showGameOver();
            return;
        }
    }

    const speed = window.innerWidth < 768 ? 10 : 7;

    if (rightPressed && paddleX < canvas.width - paddleWidth) {
        paddleX += speed;
    } else if (leftPressed && paddleX > 0) {
        paddleX -= speed;
    }

    x += dx;
    y += dy;

    requestAnimationFrame(draw);
}

/* Keyboard */
document.addEventListener("keydown", e => {
    if (e.key === "ArrowRight") rightPressed = true;
    if (e.key === "ArrowLeft") leftPressed = true;
});

document.addEventListener("keyup", e => {
    if (e.key === "ArrowRight") rightPressed = false;
    if (e.key === "ArrowLeft") leftPressed = false;
});

/* Button + Touch + Mouse */
function pressLeft(state) { leftPressed = state; }
function pressRight(state) { rightPressed = state; }

["mousedown", "touchstart"].forEach(evt =>
    leftBtn.addEventListener(evt, () => pressLeft(true))
);
["mouseup", "mouseleave", "touchend", "touchcancel"].forEach(evt =>
    leftBtn.addEventListener(evt, () => pressLeft(false))
);

["mousedown", "touchstart"].forEach(evt =>
    rightBtn.addEventListener(evt, () => pressRight(true))
);
["mouseup", "mouseleave", "touchend", "touchcancel"].forEach(evt =>
    rightBtn.addEventListener(evt, () => pressRight(false))
);

pauseButton.addEventListener("click", togglePause);

newGameButton.addEventListener("click", startGame);

retryButton.addEventListener("click", () => {
    gameOverMessage.style.display = "none";
    resetGame();
    draw();
});
