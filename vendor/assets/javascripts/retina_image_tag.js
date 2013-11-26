if (("; "+document.cookie).indexOf("; devicePixelRatio=")<0) {
  document.cookie = 'devicePixelRatio= ' + window.devicePixelRatio;
  if (window.devicePixelRatio != 1) window.location.reload();
}
