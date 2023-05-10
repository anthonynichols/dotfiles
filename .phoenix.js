// -----------------------------------------------------------------------------
// full screen = width: 100%, height: 100%, x: 0, y: 0
// -----------------------------------------------------------------------------
function fullScreen() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();

    window.setTopLeft({
      x: screen.x,
      y: screen.y,
    });

    window.setSize({
      height: screen.height,
      width: screen.width,
    });
  }
}

Key.on("keypad5", ["ctrl", "shift"], fullScreen);

// -----------------------------------------------------------------------------
// top half = width: 100%, height: 50%, x: 0, y: 0
// -----------------------------------------------------------------------------
function topHalf() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();
    let fullScreenWidth = screen.width;
    let halfScreenHeight = screen.height / 2;

    window.setTopLeft({
      x: screen.x,
      y: screen.y,
    });

    window.setSize({
      height: halfScreenHeight,
      width: fullScreenWidth,
    });
  }
}

Key.on("keypad8", ["ctrl", "shift"], topHalf);

// -----------------------------------------------------------------------------
// bottom half = width: 100%, height: 50%, x: 0, y: 50%
// -----------------------------------------------------------------------------
function bottomHalf() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();
    let fullScreenWidth = screen.width;
    let halfScreenHeight = screen.height / 2;

    window.setTopLeft({
      x: screen.x,
      y: screen.y + halfScreenHeight,
    });

    window.setSize({
      height: halfScreenHeight,
      width: fullScreenWidth,
    });
  }
}

Key.on("keypad2", ["ctrl", "shift"], bottomHalf);

// -----------------------------------------------------------------------------
// bottom left half = width: 50%, height: 50%, x: 0, y: 50%
// -----------------------------------------------------------------------------
function bottomLeftHalf() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();
    let halfScreenHeight = screen.height / 2;
    let halfScreenWidth = screen.width / 2;

    window.setTopLeft({
      x: screen.x,
      y: halfScreenHeight + 22,
    });

    window.setSize({
      height: halfScreenHeight,
      width: halfScreenWidth,
    });
  }
}

Key.on("keypad1", ["ctrl", "shift"], bottomLeftHalf);

// -----------------------------------------------------------------------------
// bottom right half = width: 50%, height: 50%, x: 50%, y: 50%
// -----------------------------------------------------------------------------
function bottomRightHalf() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();
    let halfScreenHeight = screen.height / 2;
    let halfScreenWidth = screen.width / 2;

    window.setTopLeft({
      x: screen.x + halfScreenWidth,
      y: halfScreenHeight + 22,
    });

    window.setSize({
      height: halfScreenHeight,
      width: halfScreenWidth,
    });
  }
}

Key.on("keypad3", ["ctrl", "shift"], bottomRightHalf);

// -----------------------------------------------------------------------------
// left half = width: 50%, height: 100%, x: 0, y: 0
// -----------------------------------------------------------------------------
function leftHalf() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();
    let halfScreenWidth = screen.width / 2;

    window.setTopLeft({
      x: screen.x,
      y: screen.y,
    });

    window.setSize({
      height: screen.height,
      width: halfScreenWidth,
    });
  }
}

Key.on("keypad4", ["ctrl", "shift"], leftHalf);

// -----------------------------------------------------------------------------
// right half = width: 50%, height: 100%, x: 50%, y: 0
// -----------------------------------------------------------------------------
function rightHalf() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();
    let halfScreenWidth = screen.width / 2;

    window.setTopLeft({
      x: screen.x + halfScreenWidth,
      y: screen.y,
    });

    window.setSize({
      height: screen.height,
      width: halfScreenWidth,
    });
  }
}

Key.on("keypad6", ["ctrl", "shift"], rightHalf);

// -----------------------------------------------------------------------------
// top left half = width: 50%, height: 50%, x: 0, y: 0
// -----------------------------------------------------------------------------
function topLeftHalf() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();
    let halfScreenHeight = screen.height / 2;
    let halfScreenWidth = screen.width / 2;

    window.setTopLeft({
      x: screen.x,
      y: screen.y,
    });

    window.setSize({
      height: halfScreenHeight,
      width: halfScreenWidth,
    });
  }
}

Key.on("keypad7", ["ctrl", "shift"], topLeftHalf);

// -----------------------------------------------------------------------------
// top right half = width: 50%, height: 50%, x: 50%, y: 0
// -----------------------------------------------------------------------------
function topRightHalf() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();
    let halfScreenHeight = screen.height / 2;
    let halfScreenWidth = screen.width / 2;

    window.setTopLeft({
      x: screen.x + halfScreenWidth,
      y: screen.y,
    });

    window.setSize({
      height: halfScreenHeight,
      width: halfScreenWidth,
    });
  }
}

Key.on("keypad9", ["ctrl", "shift"], topRightHalf);

// -----------------------------------------------------------------------------
// top left two third height = width: 50%, height: 66%, x: 0, y: 0
// -----------------------------------------------------------------------------
function topLeftTwoThirdHeight() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();
    let oneThirdScreenHeight = screen.height / 3;
    let twoThirdScreenHeight = oneThirdScreenHeight * 2;
    let halfScreenWidth = screen.width / 2;

    window.setTopLeft({
      x: screen.x,
      y: screen.y,
    });

    window.setSize({
      height: twoThirdScreenHeight,
      width: halfScreenWidth,
    });
  }
}

Key.on("keypad7", ["ctrl", "shift", "alt"], topLeftTwoThirdHeight);

// -----------------------------------------------------------------------------
// top right two third height = width: 50%, height: 66%, x: 50%, y: 0
// -----------------------------------------------------------------------------
function topRightTwoThirdHeight() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();
    let oneThirdScreenHeight = screen.height / 3;
    let twoThirdScreenHeight = oneThirdScreenHeight * 2;
    let halfScreenWidth = screen.width / 2;

    window.setTopLeft({
      x: screen.x + halfScreenWidth,
      y: screen.y,
    });

    window.setSize({
      height: twoThirdScreenHeight,
      width: halfScreenWidth,
    });
  }
}

Key.on("keypad9", ["ctrl", "shift", "alt"], topRightTwoThirdHeight);

// -----------------------------------------------------------------------------
// bottom left two third height = width: 50%, height: 66%, x: 0, y: 66%
// -----------------------------------------------------------------------------
function bottomLeftTwoThirdHeight() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();
    let oneThirdScreenHeight = screen.height / 3;
    let twoThirdScreenHeight = oneThirdScreenHeight * 2;
    let halfScreenWidth = screen.width / 2;

    window.setTopLeft({
      x: screen.x,
      y: oneThirdScreenHeight + 24,
    });

    window.setSize({
      height: twoThirdScreenHeight,
      width: halfScreenWidth,
    });
  }
}

Key.on("keypad1", ["ctrl", "shift", "alt"], bottomLeftTwoThirdHeight);

// -----------------------------------------------------------------------------
// bottom right two third height = width: 50%, height: 66%, x: 50%, y: 66%
// -----------------------------------------------------------------------------
function bottomRightTwoThirdHeight() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();
    let oneThirdScreenHeight = screen.height / 3;
    let twoThirdScreenHeight = oneThirdScreenHeight * 2;
    let halfScreenWidth = screen.width / 2;

    window.setTopLeft({
      x: screen.x + halfScreenWidth,
      y: oneThirdScreenHeight + 24,
    });

    window.setSize({
      height: twoThirdScreenHeight,
      width: halfScreenWidth,
    });
  }
}

Key.on("keypad3", ["ctrl", "shift", "alt"], bottomRightTwoThirdHeight);

// -----------------------------------------------------------------------------
// top left one third height = width: 50%, height: 33%, x: 0, y: 0
// -----------------------------------------------------------------------------
function topLeftOneThirdHeight() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();
    let oneThirdScreenHeight = screen.height / 3;
    let halfScreenWidth = screen.width / 2;

    window.setTopLeft({
      x: screen.x,
      y: screen.y,
    });

    window.setSize({
      height: oneThirdScreenHeight,
      width: halfScreenWidth,
    });
  }
}

Key.on("keypad7", ["ctrl", "shift", "cmd"], topLeftOneThirdHeight);

// -----------------------------------------------------------------------------
// top right one third height = width: 50%, height: 33%, x: 50%, y: 0
// -----------------------------------------------------------------------------
function topRightOneThirdHeight() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();
    let oneThirdScreenHeight = screen.height / 3;
    let halfScreenWidth = screen.width / 2;

    window.setTopLeft({
      x: screen.x + halfScreenWidth,
      y: screen.y,
    });

    window.setSize({
      height: oneThirdScreenHeight,
      width: halfScreenWidth,
    });
  }
}

Key.on("keypad9", ["ctrl", "shift", "cmd"], topRightOneThirdHeight);

// -----------------------------------------------------------------------------
// bottom left one third height = width: 50%, height: 33%, x: 0, y: 66%
// -----------------------------------------------------------------------------
function bottomLeftOneThirdHeight() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();
    let oneThirdScreenHeight = screen.height / 3;
    let twoThirdScreenHeight = oneThirdScreenHeight * 2;
    let halfScreenWidth = screen.width / 2;

    window.setTopLeft({
      x: screen.x,
      y: twoThirdScreenHeight + 24,
    });

    window.setSize({
      height: oneThirdScreenHeight,
      width: halfScreenWidth,
    });
  }
}

Key.on("keypad1", ["ctrl", "shift", "cmd"], bottomLeftOneThirdHeight);

// -----------------------------------------------------------------------------
// bottom right one third height = width: 50%, height: 33%, x: 50%, y: 66%
// -----------------------------------------------------------------------------
function bottomRightOneThirdHeight() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();
    let oneThirdScreenHeight = screen.height / 3;
    let twoThirdScreenHeight = oneThirdScreenHeight * 2;
    let halfScreenWidth = screen.width / 2;

    window.setTopLeft({
      x: screen.x + halfScreenWidth,
      y: twoThirdScreenHeight + 24,
    });

    window.setSize({
      height: oneThirdScreenHeight,
      width: halfScreenWidth,
    });
  }
}

Key.on("keypad3", ["ctrl", "shift", "cmd"], bottomRightOneThirdHeight);

// -----------------------------------------------------------------------------
// middle one third = width: 33%, height: 100%, x: 33%, y: 0
// -----------------------------------------------------------------------------
function middleOneThird() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();
    let oneThirdScreenWidth = screen.width / 3;

    window.setTopLeft({
      x: screen.x + oneThirdScreenWidth,
      y: screen.y,
    });

    window.setSize({
      height: screen.height,
      width: oneThirdScreenWidth,
    });
  }
}

Key.on("keypad5", ["ctrl", "shift", "cmd"], middleOneThird);

// -----------------------------------------------------------------------------
// left one third = width: 33%, height: 100%, x: 0, y: 0
// -----------------------------------------------------------------------------
function leftOneThird() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();
    let oneThirdScreenWidth = screen.width / 3;

    window.setTopLeft({
      x: screen.x,
      y: screen.y,
    });

    window.setSize({
      height: screen.height,
      width: oneThirdScreenWidth,
    });
  }
}

Key.on("keypad4", ["ctrl", "shift", "cmd"], leftOneThird);

// -----------------------------------------------------------------------------
// right one third = width: 33%, height: 100%, x: 66%, y: 0
// -----------------------------------------------------------------------------
function rightOneThird() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();
    let oneThirdScreenWidth = screen.width / 3;
    let twoThirdScreenWidth = oneThirdScreenWidth * 2;

    window.setTopLeft({
      x: screen.x + twoThirdScreenWidth,
      y: screen.y,
    });

    window.setSize({
      height: screen.height,
      width: oneThirdScreenWidth,
    });
  }
}

Key.on("keypad6", ["ctrl", "shift", "cmd"], rightOneThird);

// -----------------------------------------------------------------------------
// middle two thirds = width: 66%, height: 100%, x: 16.5%, y: 0
// -----------------------------------------------------------------------------
function middleTwoThird() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();
    let oneThirdScreenWidth = screen.width / 3;
    let twoThirdScreenWidth = oneThirdScreenWidth * 2;

    window.setTopLeft({
      x: screen.x + oneThirdScreenWidth / 2,
      y: screen.y,
    });

    window.setSize({
      height: screen.height,
      width: twoThirdScreenWidth,
    });
  }
}

Key.on("keypad5", ["ctrl", "shift", "alt"], middleTwoThird);

// -----------------------------------------------------------------------------
// left two third = width: 66%, height: 100%, x: 0, y: 0
// -----------------------------------------------------------------------------
function leftTwoThird() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();
    let twoThirdScreenWidth = (screen.width / 3) * 2;

    window.setTopLeft({
      x: screen.x,
      y: screen.y,
    });

    window.setSize({
      height: screen.height,
      width: twoThirdScreenWidth,
    });
  }
}

Key.on("keypad4", ["ctrl", "shift", "alt"], leftTwoThird);

// -----------------------------------------------------------------------------
// right two third = width: 66%, height: 100%, x: 33%, y: 0
// -----------------------------------------------------------------------------
function rightTwoThird() {
  let window = Window.focused();

  if (window) {
    let screen = window.screen().flippedVisibleFrame();
    let oneThirdScreenWidth = screen.width / 3;
    let twoThirdScreenWidth = oneThirdScreenWidth * 2;

    window.setTopLeft({
      x: screen.x + oneThirdScreenWidth,
      y: screen.y,
    });

    window.setSize({
      height: screen.height,
      width: twoThirdScreenWidth,
    });
  }
}

Key.on("keypad6", ["ctrl", "shift", "alt"], rightTwoThird);
