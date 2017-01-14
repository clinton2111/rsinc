/*! restsecinc - v1.0.0 - 2017-01-15 */(function() {
  console.log('From app.JS');

}).call(this);

(function() {
  (function() {
    var console, length, method, methods, noop, results;
    method = void 0;
    noop = function() {};
    methods = ['assert', 'clear', 'count', 'debug', 'dir', 'dirxml', 'error', 'exception', 'group', 'groupCollapsed', 'groupEnd', 'info', 'log', 'markTimeline', 'profile', 'profileEnd', 'table', 'time', 'timeEnd', 'timeline', 'timelineEnd', 'timeStamp', 'trace', 'warn'];
    length = methods.length;
    console = window.console = window.console || {};
    results = [];
    while (length--) {
      method = methods[length];
      if (!console[method]) {
        results.push(console[method] = noop);
      } else {
        results.push(void 0);
      }
    }
    return results;
  })();

}).call(this);
