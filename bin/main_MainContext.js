(function ($hx_exports, $global) { "use-strict";
var $s = $global.$hx_scope, $_;
var feature_Feature1, feature_Feature2, Require = $s.a;
var feature_Feature3 = function() {
	console.log("src/feature/Feature3.hx:5:","Feature3");
};
var feature_FeatureXCore = function() {
	console.log("src/feature/FeatureXCore.hx:6:","Feature1Core");
};
var main_MainContext = function() {
	console.log("src/main/MainContext.hx:10:","MainContext");
	this.featureXCore = new feature_FeatureXCore();
};
main_MainContext.prototype = {
	load: function() {
		Require.module("feature1").then(function(_i) {
			var _ = feature_Feature1 = $s.feature_Feature1;
			return _i;
		}).then(function(_1) {
			console.log("src/main/MainContext.hx:19:","Feature1 classes Loaded");
			console.log("src/main/MainContext.hx:20:",new feature_Feature1());
		});
		Require.module("feature2").then(function(_i1) {
			var _2 = feature_Feature2 = $s.feature_Feature2;
			return _i1;
		}).then(function(_3) {
			console.log("src/main/MainContext.hx:23:","Feature2 classes Loaded");
			console.log("src/main/MainContext.hx:24:",new feature_Feature2());
		});
	}
};
var __map_reserved = {};
$s.main_MainContext = main_MainContext; $s.b = feature_Feature3; 
})(typeof exports != "undefined" ? exports : typeof window != "undefined" ? window : typeof self != "undefined" ? self : this, typeof window != "undefined" ? window : typeof global != "undefined" ? global : typeof self != "undefined" ? self : this);
