(function(t, e) {
	"use strict";
	if (typeof define === "function" && define.amd) {
		define("Checkbix", e)
	} else if (typeof exports === "object") {
		exports = module.exports = e()
	} else {
		t.Checkbix = e()
	}
})(this, function() {
	"use strict";
	var t = {};
	var e;
	var a = {
		initClass : "checkbix"
	};
	var r = function(t, e, a) {
		if (Object.prototype.toString.call(t) === "[object Object]") {
			for ( var r in t) {
				if (Object.prototype.hasOwnProperty.call(t, r)) {
					e.call(a, t[r], r, t)
				}
			}
		} else {
			for (var n = 0, i = t.length; n < i; n++) {
				e.call(a, t[n], n, t)
			}
		}
	};
	var n = function(t, e) {
		var a = {};
		r(t, function(e, r) {
			a[r] = t[r]
		});
		r(e, function(t, r) {
			a[r] = e[r]
		});
		return a
	};
	var i = function() {
		var t = document.querySelectorAll("." + e.initClass);
		for (var a = 0; a < t.length; a++) {
			var r = t[a].getAttribute("data-size") ? t[a]
					.getAttribute("data-size") : "";
			var n = t[a].getAttribute("data-arialabel") ? t[a]
					.getAttribute("data-arialabel") : "";
			t[a].insertAdjacentHTML("afterend", '<label aria-label="' + n
					+ '" role="checkbox" for="' + t[a].id + '" class="'
					+ e.initClass + '"><span class="' + r + '"></span>'
					+ t[a].getAttribute("data-text") + "</label>")
		}
	};
	t.destroy = function() {
		if (!e)
			return;
		document.removeEventListener("click", i, false);
		e = null
	};
	t.init = function(r) {
		t.destroy();
		e = n(a, r || {});
		document.addEventListener("DOMContentLoaded", i, false)
	};
	return t
});