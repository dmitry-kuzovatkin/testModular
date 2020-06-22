package main;

import feature.*;
import init.InitContext;

class MainContext {
	public var featureXCore:FeatureXCore;

	public function new() {
		trace("MainContext");

		featureXCore = new FeatureXCore();



	}
	public function load() {
		Bundle.load(Feature1, "feature_Feature1").then(function(_) {
			trace("Feature1 classes Loaded");
			trace(new Feature1());
		});
		Bundle.load(Feature2, "feature_Feature2").then(function(_) {
			trace("Feature2 classes Loaded");
			trace(new Feature2());
		});
	}
}