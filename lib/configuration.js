// -*- Mode: JavaScript; tab-width: 2; indent-tabs-mode: nil; -*-
// vim:set ft=javascript ts=2 sw=2 sts=2 cindent:
var Configuration = (function(window, undefined) {
    var abbrevsOn = true;
    var textBackgrounds = "striped";
    var svgWidth = '100%';
    var rapidModeOn = false;
    var confirmModeOn = true;
    var autorefreshOn = false;
    var typeCollapseLimit = 30;
    
    var visual = {
      margin: { x: 5, y: 1 },
      arcTextMargin: 10,
      boxSpacing: 15,
      curlyHeight: 10,
      arcSpacing: 40, //10;
      arcStartHeight: 70, //23; //25;
    }

    return {
      abbrevsOn: abbrevsOn,
      textBackgrounds: textBackgrounds,
      visual: visual,
      svgWidth: svgWidth,
      rapidModeOn: rapidModeOn,
      confirmModeOn: confirmModeOn,
      autorefreshOn: autorefreshOn,
      typeCollapseLimit: typeCollapseLimit,
    };
})(window);
