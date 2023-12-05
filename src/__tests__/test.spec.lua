return function()
	local RegExp = require("../init")
	type RegExp = RegExp.RegExp

	local JestGlobals = (require)("@pkg/@jsdotlua/jest-globals")
	local jestExpect = JestGlobals.expect

	it("returns true when the regex matches", function()
		local re: RegExp = RegExp("a")
		jestExpect(re:test("a")).toEqual(true)
	end)

	it("returns false when the regex does not match", function()
		local re: RegExp = RegExp("a")
		jestExpect(re:test("b")).toEqual(false)
	end)
end
