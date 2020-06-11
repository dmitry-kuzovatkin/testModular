package init;

class InitContext {
	public var userInfo = new UserInfo();
	public var performerInfo = new PerformerInfo();

	public function new() {
		trace("InitContext");
		trace(userInfo);
		trace(performerInfo);
	}
}