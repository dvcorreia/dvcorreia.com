export function renderMascot(mascotElem: HTMLDivElement) {
  const eyes = mascotElem.querySelectorAll(".eye");
  const eyeRect = eyes[0].getBoundingClientRect();

  const mascotRect = mascotElem.getBoundingClientRect();

  function eyesFollow(this: Document, ev: MouseEvent) {
    requestAnimationFrame(() => {
      const xPos = ev.pageX;
      const yPos = ev.pageY;

      const xDiff = (eyeRect.x + eyeRect.width / 2) - xPos;
      const yDiff = (eyeRect.y + eyeRect.height / 2) - yPos;

      const angle = Math.atan2(yDiff, xDiff) * 180 / Math.PI;

      mascotElem.style.setProperty("--eye-angle", angle.toFixed(2) + "deg");

      // tilting the face relative to the mouse cursor
      const mouseXRelativeToContainer = xPos - mascotRect.x - mascotRect.width / 2;
      const mouseYRelativeToContainer = yPos - mascotRect.y - mascotRect.height / 2;

      const containerXAngle = 60 * (mouseXRelativeToContainer / window.innerWidth);
      const containerYAngle = -1 * 60 * (mouseYRelativeToContainer / window.innerHeight);

      mascotElem.style.setProperty("--x-angle", containerXAngle.toFixed(2) + "deg");
      mascotElem.style.setProperty("--y-angle", containerYAngle.toFixed(2) + "deg");
    });
  }

  document.addEventListener("mousemove", eyesFollow);
}
