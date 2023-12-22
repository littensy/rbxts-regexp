type RegExpExecArray = Array<string> & { index?: number; input?: string; n: number };

interface RegExp {
	(pattern: RegExp | string, flags?: string): RegExp;

	exec(this: RegExp, input: string): RegExpExecArray | undefined;

	test(this: RegExp, input: string): boolean;
}

declare const RegExp: RegExp;

export = RegExp;
