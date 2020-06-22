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

		var assemble:Void->Void;
		var loadMain:Void->Void;
		var main:MainContext;

		loadMain = function() {
			Bundle.load(MainContext, "maincontext").then(function(_) {
				trace("MainContext classes Loaded");
				main = new MainContext();
				assemble();
			});


		}
		assemble = function assemble() {
			main.load();
		}

		loadMain();
	}
}