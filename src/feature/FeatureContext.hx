package feature;

import main.MainContext;

class FeatureContext {
	public function new(main:MainContext) {
		trace("MainContext");

		var f1 = new Feature1();
		main.feature1Core.source = f1;
	}
}