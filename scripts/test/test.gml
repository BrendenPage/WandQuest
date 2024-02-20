class Main {
	static function rollD6() {
		return Std.random(6) + 1;
	}
	static inline function main() {
		trace("You rolled " + rollD6() + "!");
	}
}