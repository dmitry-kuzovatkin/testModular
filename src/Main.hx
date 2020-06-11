package;

import stream.*;
import init.*;
import main.*;
import feature.*;

class Main {
    static function main() {
		trace("Haxe is great!");
		var initial = new InitContext();
		var stream = new StreamContext();
		var main:MainContext;

		var loadMain:Void->Void;

		loadMain = function() {
			Bundle.loadLib("maincontext", ["main.MainContext"]).then(function(_) {
				trace("MainContext classes Loaded");
				main = new MainContext();
			});
		}
		loadMain();
	}
}