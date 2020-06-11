package main;

import feature.Feature1Core;
import feature.FeatureContext;
import init.InitContext;

class MainContext {
	public var feature1Core:Feature1Core;

	public function new() {
		trace("MainContext");

		feature1Core = new Feature1Core();

		Bundle.loadLib("feature", ["feature.FeatureContext"]).then(function(_) {
			trace("FeatureContext classes Loaded");
			trace(new FeatureContext(this));
		});

	}
}