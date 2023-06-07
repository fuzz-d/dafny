// RUN: %dafny /noVerify /compile:4 /compileTarget:cs "%s" > "%t"
// RUN: %exits-with 3 %dafny /noVerify /compile:4 /compileTarget:java "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:py "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:js "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:go "%s" >> "%t"
// RUN: %diff "%s.expect" "%t"

function abs(x: int): int {
	if (x < 0) then -1 * x else x
}
function safeIndex(x: int, length: int): int 
	requires length > 0
{
	if (x < 0) then 0 else if (x >= length) then x % length else x
}
function safeDivisionInt(x1: int, x2: int): int {
	if (x2 == 0) then x1 else x1 / x2
}
function safeModuloInt(x1: int, x2: int): int {
	if (x2 == 0) then x1 else x1 % x2
}
datatype D0 = DC1 | DC2(cf1: int, cf2: int, cf3: bool, cf4: bool, cf5: bool) | DC3(cf6: int, cf7: int, cf8: int) | DC0(cf0: bool)
datatype D1 = DC5(cf10: int) | DC4(cf9: map<bool, int>)
datatype D2 = DC7(cf12: multiset<C0>, cf13: array<int>, cf14: int, cf15: int, cf16: bool) | DC8(cf17: bool, cf18: int, cf19: int, cf20: int) | DC6(cf11: map<int, seq<int>>) | DC9(cf21: D2)
datatype D3 = DC11(cf23: bool) | DC10(cf22: seq<seq<int>>)
datatype D4 = DC12(cf24: T1)
datatype D5 = DC14(cf26: bool, cf27: bool, cf28: bool, cf29: array<bool>, cf30: bool) | DC13(cf25: map<int, bool>) | DC15(cf31: D5)
datatype D6 = DC17(cf33: bool, cf34: int, cf35: int) | DC18(cf36: int, cf37: int) | DC16(cf32: T0)
datatype D7 = DC20(cf39: bool) | DC19(cf38: C0)
datatype D8 = DC22 | DC21(cf40: map<int, C2>)
datatype D9 = DC24(cf42: set<C1>) | DC23(cf41: char)
datatype D10 = DC26(cf44: bool) | DC25(cf43: seq<string>)
datatype D11 = DC27(cf45: map<bool, bool>)
trait T0 {
	const f4 : bool
	function fm3(p0: bool, globalState: GlobalState): bool 
	function fm4(globalState: GlobalState): int 
}

trait T1 extends T0 {
	const f5 : array<seq<bool>>
	const f6 : int
	method m0(globalState: GlobalState) returns (r0: bool, r1: map<int, bool>, r2: bool) 
	method m1(p0: int, p1: int, globalState: GlobalState) returns (r0: map<int, int>, r1: array<multiset<T0>>, r2: int) 
}

class GlobalState {
	const f0 : bool
	const f1 : string
	const f2 : int
	var f3 : int
	constructor (f0 : bool, f1 : string, f2 : int, f3 : int) {
		this.f0 := f0;
		this.f1 := f1;
		this.f2 := f2;
		this.f3 := f3;
	}
	
}

class C0 {
	constructor () {
	}
	
	function fm7(p0: int, p1: bool, p2: set<bool>, globalState: GlobalState): bool {
		([false, false, !true] == [false, !false, !false, false, !false]) ==> true
	}
}

class C1 extends T0, T1 {
	constructor (f4 : bool, f5 : array<seq<bool>>, f6 : int) {
		this.f4 := f4;
		this.f5 := f5;
		this.f6 := f6;
	}
	
	function fm3(p0: bool, globalState: GlobalState): bool {
		f4
	}
	function fm4(globalState: GlobalState): int {
		-(f6 * f6)
	}
	method m0(globalState: GlobalState) returns (r0: bool, r1: map<int, bool>, r2: bool) {
		globalState.f3 := 0x2a2;
		var v0: array<int> := new int[22](i0 => safeModuloInt(i0, f6));
		v0[safeIndex(128, v0.Length)] := f6 + f6;
		var v1 := 'w';
		var v2: multiset<int> := multiset{f6};
		v0[safeIndex(911, v0.Length)] := |(v2 - v2)|;
		var v3: seq<int> := [f6];
		var v5: set<bool> := {f4};
		var v6: seq<set<bool>> := [v5, v5];
		var v7: map<int, bool> := map[|v6| := f4];
		var v8: set<int> := {f6};
		var v9: map<bool, set<int>> := map[f4 := v8];
		var v10: seq<set<int>> := [v8, if (f4 in v9) then v9[f4] else v8];
		v0[safeIndex(128, v0.Length)], v1, v0[safeIndex(911, v0.Length)] := safeModuloInt(0x174, f6), fm6(if (f4) then |(set v4 : int | v4 in v3 :: (v4 * |map[|map[true := false]| := |map[0x27 := false]|]|))| else |v7|, f6, v10[safeIndex(-f6, |v10|)] * v8, f6, globalState), f6;
		globalState.f3 := f6 * v0[safeIndex(128, v0.Length)];
		var v11 := "qeu";
		for i1 := v0[safeIndex(128, v0.Length)] to |v11| {
			var v12: map<char, int> := map[v1 := 0x221];
			r0 := f4 <== (|v12| == 0x2ca);
			var v13 := new C0();
			var v14 := new C0();
			var v15: seq<string> := [v11, v11];
			v15 := (v15 + v15) + (([v11])[safeIndex(|v8|, |[v11]|) := v11] + v15);
		}
		var v16 := DC0(!fm1(f4, -v0[safeIndex(128, v0.Length)], globalState));
		globalState.f3 := match v16 {
			case DC1() => f6
			case DC2(cf1, cf2, cf3, cf4, cf5) => cf1
			case DC3(cf6, cf7, cf8) => cf6
			case DC0(cf0) => f6 * f6
		};
		var v17: array<array<bool>> := new array<bool>[12];
		var v18 := DC2(v0[safeIndex(128, v0.Length)], v0[safeIndex(128, v0.Length)], f4, f4, fm3(false, globalState));
		var v19: array<bool> := new bool[26] [f4, true, (v18.(cf3 := f4)).cf5, f4, f4, true, f4, f4, f4, f4, f4, f4, f4, fm1(f4, v0[safeIndex(128, v0.Length)], globalState), f4, true, f4, f4, f4, f4, f4, f4, f4, f4, f4, f4];
		v17[safeIndex(614, v17.Length)] := v19;
		var v20: map<bool, array<bool>> := map[f4 := v19];
		v17[safeIndex(614, v17.Length)] := if (f4 in v20) then v20[f4] else v19;
		r0 := f4;
		r1 := v7;
		var v21: seq<bool> := [f4, f4, f4 <==> f4];
		r2 := v21[safeIndex(safeDivisionInt(v0[safeIndex(128, v0.Length)], |v21|), |v21|)];
	}
	method m1(p0: int, p1: int, globalState: GlobalState) returns (r0: map<int, int>, r1: array<multiset<T0>>, r2: int) {
		var v0: array<multiset<int>> := new multiset<int>[4];
		var v1: multiset<int> := multiset{p1, p0, f6};
		v0[safeIndex(160, v0.Length)] := v1;
		var v2 := DC5(f6);
		v0[safeIndex(160, v0.Length)] := match v2 {
			case DC5(cf10) => v1
			case DC4(cf9) => v1
		};
		var v3 := 'e';
		var v4: seq<char> := [v3, v3];
		var v5 := DC2(0x1a1, p1, f4, f4, f4);
		var v6: seq<bool> := [f4];
		var v7: array<bool> := new bool[11] [!(|v4| <= f6), v5.cf5, f4, f4, f4, f4, f4, f4, f4, f4 <== !f4, v6 == v6];
		v7[safeIndex(417, v7.Length)] := !(fm0(f4, f4, f4, f4, globalState) <= p0);
		var v8: seq<seq<bool>> := [v6, v6];
		v7[safeIndex(417, v7.Length)], v8, r2 := !true, (v8 + v8) + (v8 + v8), f6;
		var v9: array<D0> := new D0[18];
		v9[safeIndex(327, v9.Length)] := v5;
		v9[safeIndex(327, v9.Length)], v3 := v5, match DC3(|v1|, |v4|, p0) {
			case DC1() => v3
			case DC2(cf1, cf2, cf3, cf4, cf5) => v3
			case DC3(cf6, cf7, cf8) => v3
			case DC0(cf0) => v3
		};
		v4 := (seq(abs(0x1cf), i0  => (v3))) + v4;
		var v10: array<D1> := new D1[24](i1 => DC4(map[f4 := f6]));
		var v11: set<array<bool>> := {v7, v7};
		var v12: map<bool, int> := map[v7[safeIndex(417, v7.Length)] := |v11|];
		var v13: seq<map<bool, int>> := [v12];
		var v14 := DC4(v13[safeIndex(p1, |v13|)]);
		v10[safeIndex(650, v10.Length)] := v14;
		v10[safeIndex(650, v10.Length)] := v14;
		var v15 := DC0(v7[safeIndex(417, v7.Length)]);
		v15 := v15;
		var v16: map<int, int> := map[829 := f6];
		r0 := v16;
		var v17: array<multiset<T0>> := new multiset<T0>[28];
		r1 := v17;
		r2 := p1;
	}
	method m2(p0: char, p1: int, globalState: GlobalState) returns (r0: seq<bool>, r1: bool, r2: char, r3: array<D0>) {
		var v0 := new C0();
		var v1: array<bool> := new bool[20](i0 => f4);
		v1[safeIndex(770, v1.Length)] := f4 && f4;
		var v2: array<int> := new int[10];
		var v3: map<bool, int> := map[f4 := p1];
		v2[safeIndex(306, v2.Length)] := -safeModuloInt(-f6, |v3|);
		var v4: map<int, bool> := map[p1 := f4];
		v1[safeIndex(709, v1.Length)] := if (f6 in v4) then v4[f6] else f4;
		var v5: multiset<bool> := multiset{f4, f4};
		var v6 := DC0(f4);
		var v7 := DC2(f6, |v5|, f4, v6.cf0, f4);
		var v8: seq<bool> := [f4, false, !f4];
		v1[safeIndex(770, v1.Length)], r1, v2[safeIndex(306, v2.Length)], v1, v1[safeIndex(709, v1.Length)] := f4, (v5[f4 := abs(v7.cf2)] * v5) != (if (f4) then multiset(v8) else multiset(v8)), p1, v1, !f4;
		v1[safeIndex(770, v1.Length)] := f6 != f6;
		var v9 := "cvrgdejya";
		var v10: seq<int> := [f6];
		for i1 := |(v9 + v9)| to v10[safeIndex(0x1c1, |v10|)] {
			if (!true) {
				var v11: map<string, bool> := map[v9 + (seq(abs(0x39f), i2  => ('q'))) := v1[safeIndex(770, v1.Length)]];
				globalState.f3 := |v11|;
				v1[safeIndex(770, v1.Length)] := v1[safeIndex(770, v1.Length)];
				v1[safeIndex(770, v1.Length)] := f4;
				v1[safeIndex(770, v1.Length)] := v2[safeIndex(306, v2.Length)] < |v9|;
				var v12: map<int, map<int, string>> := map[i1 := fm8(f4, 0x345, f4, globalState)];
				globalState.f3 := |((if (f6 in v12) then v12[f6] else map[v2[safeIndex(306, v2.Length)] := v9]) + map[v2[safeIndex(306, v2.Length)] := v9])|;
			} else {
				v1[safeIndex(770, v1.Length)] := v1[safeIndex(770, v1.Length)];
				var v13: map<bool, bool> := map[false := p1 < |v8|];
				globalState.f3 := |v13|;
				v1[safeIndex(770, v1.Length)] := f4;
				var v14: set<bool> := {v1[safeIndex(770, v1.Length)], v1[safeIndex(770, v1.Length)]};
				v1[safeIndex(770, v1.Length)] := v0.fm7(v2[safeIndex(306, v2.Length)], i1 <= v2[safeIndex(306, v2.Length)], {f4} + v14, globalState);
				var v15: multiset<int> := multiset{i1};
				var v16: map<int, seq<int>> := map[v2[safeIndex(306, v2.Length)] := v10];
				var v17: map<int, seq<int>> := map[|v15| := fm9(seq(abs(0x204), i3  => ('p')), 0x169, f4, if (i1 in v16) then v16[i1] else v10, globalState)];
				var v18 := DC6(v16);
				v16 := v18.cf11 + v17;
			}
			
			var v19: set<seq<int>> := {v10, v10};
			var v21 := DC5(|(v19 - (set v20 : seq<int> | v20 in [v10[safeIndex(509, |v10|) := v2[safeIndex(306, v2.Length)]]] :: (v20)))|);
			match (v21) {
				case DC5(cf10) =>
					f5[safeIndex(579, f5.Length)] := v8;
					f5[safeIndex(579, f5.Length)] := v8;
					var v22: array<char> := new char[2];
					var v23: map<array<char>, bool> := map[v22 := f4];
					v23 := v23[v22 := fm3(f4, globalState)];
					var v24: set<int> := {p1};
					var v25 := DC8(f4, p1, -i1, |(v24 * v24)|);
					v25 := v25;
					v1[safeIndex(770, v1.Length)] := false;
				case DC4(cf9) =>
					globalState.f3 := v2[safeIndex(306, v2.Length)];
					globalState.f3 := v2[safeIndex(306, v2.Length)];
					var v26: seq<C0> := [v0];
					var v27 := DC7(multiset(v26), v2, f6, i1, f4);
					var v28 := DC8(v27.cf16, |v5|, p1, v2[safeIndex(306, v2.Length)]);
					var v29: set<int> := {0x2bb, |v4|};
					var v30: map<D2, int> := map[v28 := fm4(globalState) + -|v29|];
					var v32: map<D2, seq<int>> := map[v28 := v10];
					v30 := map v31 : D2 | v31 in v32 :: (v31) := (i1);
					v2[safeIndex(306, v2.Length)] := -p1;
			}
			
			var v33: array<D2> := new D2[21](i4 => DC8(f4, v2[safeIndex(306, v2.Length)], |{!f4}|, |[f4, f4]|));
			var v34: multiset<int> := multiset{p1};
			var v35 := DC8(f4, -|map[i1 := false]|, i1, -(if (i1 in v34) then v34[i1] else v2[safeIndex(306, v2.Length)]));
			v33[safeIndex(314, v33.Length)] := v35;
			v33[safeIndex(314, v33.Length)] := DC8(f4, safeDivisionInt(i1, v2[safeIndex(306, v2.Length)]), p1, |(map v36 : int | v36 in fm9("ssgjwix", v2[safeIndex(306, v2.Length)], f4, v10, globalState) :: (v36 + -p1) := (f6))|);
			v5 := fm10(f4, fm0(f4, f4, f4, f4, globalState), !(v1[safeIndex(770, v1.Length)] in v8), globalState);
		}
		globalState.f3, v2[safeIndex(306, v2.Length)] := 0x236, match v7 {
			case DC1() => |{p1, f6, |v9|, |{seq(abs(0x169), i5  => (p0)), seq(abs(-872), i6  => (p0))}|, v2[safeIndex(306, v2.Length)]}|
			case DC2(cf1, cf2, cf3, cf4, cf5) => |DC4(v3).cf9|
			case DC3(cf6, cf7, cf8) => f6
			case DC0(cf0) => |(v9 + "ngv")|
		};
		var v37 := DC8(v1[safeIndex(770, v1.Length)], v2[safeIndex(306, v2.Length)], p1, f6);
		var v38 := DC5(v37.cf19);
		v38 := match v37 {
			case DC7(cf12, cf13, cf14, cf15, cf16) => v38
			case DC8(cf17, cf18, cf19, cf20) => v38
			case DC6(cf11) => DC5(v2[safeIndex(306, v2.Length)])
			case DC9(cf21) => v38
		};
		r0 := v8 + v8;
		r1 := true;
		r2 := p0;
		var v39: multiset<int> := multiset{-|multiset{v4}|};
		var v40: multiset<seq<int>> := multiset{seq(abs(-593), i7  => (v2[safeIndex(306, v2.Length)]))};
		var v41: array<D0> := new D0[29] [v7, DC2(v2[safeIndex(306, v2.Length)], v2[safeIndex(306, v2.Length)], f4, f4, f4), DC2(|v39|, v2[safeIndex(306, v2.Length)], f4, false, f4), v7, v7, v7, v7, v7, v7.(cf4 := true, cf1 := if (v10 in v40) then v40[v10] else |v10|, cf3 := true), v7, DC2(p1, f6, f4, v1[safeIndex(770, v1.Length)], f4), DC2(p1, 560, v1[safeIndex(770, v1.Length)], v1[safeIndex(770, v1.Length)], v1[safeIndex(770, v1.Length)]), fm11(globalState), v7, v7, v7, v7, v7, v7, v7.(cf5 := f4, cf4 := v1[safeIndex(770, v1.Length)], cf3 := v1[safeIndex(770, v1.Length)], cf2 := v2[safeIndex(306, v2.Length)]), v7, v7, v7, v7, v7, v7.(cf5 := f4), v7, v7, v7.(cf3 := f4, cf5 := f4)];
		r3 := v41;
	}
}

class C2 extends T0, T1 {
	const f7 : char
	constructor (f7 : char, f4 : bool, f5 : array<seq<bool>>, f6 : int) {
		this.f7 := f7;
		this.f4 := f4;
		this.f5 := f5;
		this.f6 := f6;
	}
	
	function fm3(p0: bool, globalState: GlobalState): bool {
		f4 <==> f4
	}
	function fm4(globalState: GlobalState): int {
		if (|(seq(abs(-0x36e), i0  => (f7)))| == f6) then f6 else f6 * |map[f6 := {f4, false, false}]|
	}
	function fm5(p0: string, p1: bool, p2: char, p3: map<int, bool>, globalState: GlobalState): multiset<bool> {
		multiset{f4, f4, if (f4) then f4 else DC2(f6, f6, f4, true, f4).cf3, "g" == "kl", f4}
	}
	method m0(globalState: GlobalState) returns (r0: bool, r1: map<int, bool>, r2: bool) {
		if (!(safeModuloInt(f6, f6) != 791)) {
			if (f4) {
				var v0 := "iv";
				var v1: seq<string> := [v0, v0, (v0 + v0)[safeIndex(f6, |(v0 + v0)|) := f7], v0];
				var v2: seq<seq<string>> := [v1 + v1, seq(abs(-0x8b), i0  => (v0[safeIndex(|[f7, 'k']|, |v0|) := f7])), [v0], v1, v1 + v1];
				var v3: map<int, bool> := map[f6 := f4];
				var v4: map<bool, int> := map[f4 := |v3|];
				var v5 := DC4(v4);
				var v6: seq<int> := [|v5.cf9|, f6];
				var v7: map<seq<int>, bool> := map[v6[safeIndex(-0x15f, |v6|) := f6] := f4];
				v1 := v2[safeIndex(|v7|, |v2|)];
				var v8: array<int> := new int[7] [|(v0 + v0)|, f6, -(f6 * f6), f6, |(if (f4) then v0 else v0)[safeIndex(f6, |(if (f4) then v0 else v0)|) := f7]|, 0x370, |v3|];
				v8[safeIndex(81, v8.Length)] := f6;
				v8[safeIndex(81, v8.Length)] := f6;
				var v9: array<char> := new char[7];
				var v10 := DC0(f4);
				v9[safeIndex(474, v9.Length)] := if ((v10.(cf0 := f4)).cf0) then v0[safeIndex(v8[safeIndex(81, v8.Length)], |v0|)] else f7;
				v9[safeIndex(474, v9.Length)] := f7;
				var v11 := new C1(f4, f5, f6);
				var v12: array<bool> := new bool[24];
				v12[safeIndex(472, v12.Length)] := f4 || f4;
				v12[safeIndex(472, v12.Length)] := f4;
			} else {
				var v13: array<bool> := new bool[22](i1 => f4);
				v13[safeIndex(671, v13.Length)] := !f4 <==> f4;
				v13[safeIndex(671, v13.Length)] := f4;
				var v14: seq<int> := [f6];
				v14 := v14[safeIndex(f6, |v14|) := f6 + f6];
				r2 := v13[safeIndex(671, v13.Length)];
				var v15: set<bool> := {!v13[safeIndex(671, v13.Length)], v13[safeIndex(671, v13.Length)]};
				var v16: map<set<bool>, int> := map[v15 + {!v13[safeIndex(671, v13.Length)]} := f6];
				globalState.f3 := if (v15 in v16) then v16[v15] else f6;
				r0 := v13[safeIndex(671, v13.Length)];
			}
			
			r0 := f4;
			var v17: array<string> := new string[9];
			var v18: seq<array<string>> := [v17];
			var v19: array<array<string>> := new array<string>[29] [v17, v17, v17, v17, v17, v17, v17, v17, v17, v17, v18[safeIndex(f6, |v18|)], v17, v17, if (f4) then v17 else v17, if (f4) then v17 else v17, v17, v17, v17, v17, v17, v17, if (f4) then v17 else v17, v17, v17, v17, v17, v17, v17, v17];
			v19[safeIndex(794, v19.Length)] := v17;
			var v20 := DC1();
			var v21: set<D0> := {v20, v20};
			var v22: multiset<D0> := multiset{v20};
			v19[safeIndex(794, v19.Length)], r2, v21 := v17, f4, (set v23 : D0 | v23 in v22 :: (v23)) - v21;
			var v24: map<bool, bool> := map[false := f4];
			var v25: array<bool> := new bool[5](i2 => f4);
			v25[safeIndex(632, v25.Length)] := f4;
			var v26 := "wdnik";
			v24, v25[safeIndex(632, v25.Length)], v26, r2, v25 := v24, !f4, "fhbku", f4, v25;
			var v27: set<int> := {f6};
			var v28: array<char> := new char[4] [f7, fm6(f6, -|v26|, v27, f6, globalState), f7, f7];
			v28[safeIndex(602, v28.Length)] := f7;
			v28[safeIndex(602, v28.Length)] := f7;
		} else {
			var v29: array<bool> := new bool[3] [f4, f4, f4];
			v29[safeIndex(739, v29.Length)] := f4 || f4;
			var v30: map<int, bool> := map[0xa4 := f4];
			var v31: set<bool> := {f4};
			var v32 := DC8(f4, |v30|, |v31|, f6);
			var v33: map<bool, int> := map[f4 := f6];
			globalState.f3, r2, v29[safeIndex(739, v29.Length)], r2 := safeModuloInt(0x1c7, fm0(v32.cf17, f4, !false, f4, globalState)), f4, f4, f4 in v33;
			var v34: array<int> := new int[1];
			v34[safeIndex(509, v34.Length)] := -f6;
			var v35 := "efmkt";
			var v36: seq<string> := [v35, v35];
			v34[safeIndex(509, v34.Length)] := |v36| * f6;
			var v37: set<int> := {f6};
			v37 := v37;
			var v38: seq<int> := [f6];
			var v39: seq<seq<int>> := [(v38[safeIndex(v34[safeIndex(509, v34.Length)], |v38|) := |[v29[safeIndex(739, v29.Length)]]|])[safeIndex(f6, |v38[safeIndex(v34[safeIndex(509, v34.Length)], |v38|) := |[v29[safeIndex(739, v29.Length)]]|]|) := f6]];
			var v40 := DC10(v39);
			var v41: seq<seq<seq<int>>> := [v39, v39];
			var v42: T0 := new C1(true, f5, v34[safeIndex(509, v34.Length)]);
			var v43: multiset<T0> := multiset{v42, v42, v42};
			var v44: array<seq<seq<int>>> := new seq<seq<int>>[18] [([v38, v38])[safeIndex(f6, |[v38, v38]|) := v38[safeIndex(v34[safeIndex(509, v34.Length)], |v38|) := |v35|]] + [v38], v39, v39, v39, v39, v39, v39, v39, v39, [v38, v38] + v39, v40.cf22, v39, v39[safeIndex(v34[safeIndex(509, v34.Length)], |v39|) := v38], v39, v39 + v39, v39, (v41[safeIndex(f6, |v41|)])[safeIndex(f6, |v41[safeIndex(f6, |v41|)]|) := v38], [[|v43|]]];
			v44[safeIndex(686, v44.Length)] := v39 + (seq(abs(0x63), i3  => (v38)));
			v44[safeIndex(686, v44.Length)] := [v39[safeIndex(v34[safeIndex(509, v34.Length)], |v39|)]];
			var v45 := DC3(f6, f6 * fm0(v29[safeIndex(739, v29.Length)], v29[safeIndex(739, v29.Length)], v29[safeIndex(739, v29.Length)], v42.f4, globalState), fm4(globalState));
			match (v45) {
				case DC1() =>
					globalState.f3 := v38[safeIndex(f6, |v38|)];
					v31 := v31;
					globalState.f3 := safeDivisionInt(-0x34, f6 * f6);
					var v46: C0 := new C0();
					var v47: multiset<C0> := multiset{v46};
					v47 := v47;
				case DC2(cf1, cf2, cf3, cf4, cf5) =>
					var v48: multiset<int> := multiset{-cf2, 55};
					var v49: set<multiset<int>> := {v48};
					var v50 := new C1(v48 in v49, f5, cf1);
					var v51: map<bool, T0> := map[v42.f4 := v42];
					var v52: array<D2> := new D2[24] [v32, v32.(cf17 := !cf5, cf19 := cf1), v32, v32, v32, DC8(v29[safeIndex(739, v29.Length)], f6, -|v51[!cf3 := v42]|, cf1), v32, fm12(globalState), fm12(globalState), DC8(v42.f4, -f6, -cf2, v34[safeIndex(509, v34.Length)]), fm12(globalState), fm12(globalState), DC8(f4, 896, 838, 926), v32, v32, v32.(cf18 := f6, cf19 := cf1), fm12(globalState), v32, v32, v32, v32, fm12(globalState), v32, v32];
					v52[safeIndex(463, v52.Length)] := v32;
					var v53: map<int, int> := map[|(seq(abs(-0x2bf), i4  => ('f')))| := cf1];
					var v54: C0 := new C0();
					var v55: map<map<int, int>, map<C0, int>> := map[v53 := map[v54 := |v35|]];
					var v56: map<C0, int> := map[v54 := |v35|];
					v52[safeIndex(463, v52.Length)] := v32.(cf19 := DC2(|(if (v53 in v55) then v55[v53] else v56)|, cf2, cf5, cf5, false).cf1);
					r0 := fm1(v42.f4 <==> f4, |v35|, globalState);
					v29[safeIndex(739, v29.Length)] := cf5;
				case DC3(cf6, cf7, cf8) =>
					var v57: map<seq<int>, bool> := map[[cf8, f6, cf7] + v38 := f4];
					v57 := v57[v38 := v42.fm3(false, globalState)];
					var v58: array<array<bool>> := new array<bool>[15];
					var v59: map<array<array<bool>>, int> := map[v58 := cf7];
					v59 := v59[v58 := cf8];
					cf7 := cf8;
					var v60: array<array<int>> := new array<int>[16];
					v60[safeIndex(448, v60.Length)] := v34;
					v60[safeIndex(448, v60.Length)] := v34;
				case DC0(cf0) =>
					r2 := (v34[safeIndex(509, v34.Length)] - fm0(v29[safeIndex(739, v29.Length)], false, v42.f4, f4, globalState)) <= v34[safeIndex(509, v34.Length)];
					v30 := v30[-f6 := cf0];
					v34[safeIndex(509, v34.Length)] := v34[safeIndex(509, v34.Length)];
					var v61: T1 := new C1(f4, f5, 854 - v34[safeIndex(509, v34.Length)]);
					v61 := new C1(false, f5, -v38[safeIndex(v34[safeIndex(509, v34.Length)], |v38|)]);
			}
			
		}
		
		if (f4) {
			var v62 := DC1();
			v62 := v62;
			r2 := f6 >= f6;
			var v63: array<bool> := new bool[7](i5 => f4);
			v63[safeIndex(461, v63.Length)] := fm3(f4, globalState);
			v63[safeIndex(461, v63.Length)] := safeModuloInt(f6, f6) <= fm0(f4, f4, fm3(f4, globalState), f4, globalState);
			if (f4) {
				var v64 := new C0();
				v63[safeIndex(461, v63.Length)] := false;
				var v65: array<D2> := new D2[13];
				var v66: array<int> := new int[7];
				v65[safeIndex(602, v65.Length)] := DC7((multiset{v64})[v64 := abs(-f6)], v66, f6, f6, !f4);
				var v67: multiset<C0> := multiset{v64};
				var v68 := DC7(v67, v66, f6, f6, !f4);
				v65[safeIndex(602, v65.Length)] := v68;
				var v69: map<int, int> := map[f6 := -f6];
				var v70: array<char> := new char[22](i6 => f7);
				var v71: map<int, array<char>> := map[f6 := v70];
				var v72: seq<int> := [f6, |v71|, f6];
				var v73 := DC3(|v69|, safeDivisionInt(f6, f6), f6 - v72[safeIndex(f6, |v72|)]);
				v73 := v73;
				var v74 := new C1(v63[safeIndex(461, v63.Length)], f5, f6);
			} else {
				var v75: multiset<int> := multiset{f6, f6};
				var v76: set<int> := {f6, if (f6 in v75) then v75[f6] else 0x18c, f6, f6};
				var v77 := "pi";
				var v78: T0 := new C1(v63[safeIndex(461, v63.Length)], f5, f6);
				var v79: seq<T0> := [v78, v78];
				var v80 := DC2(|v79|, f6, v63[safeIndex(461, v63.Length)], v63[safeIndex(461, v63.Length)], v78.f4);
				v76 := fm13("ydyaqrwnm", |(v77 + v77)|, v80, globalState);
				var v81: C0 := new C0();
				var v82: multiset<C0> := multiset{v81, v81, v81, v81};
				var v83: array<int> := new int[1](i7 => i7 - -f6);
				var v84 := DC7(v82 + v82, v83, f6, f6, v63[safeIndex(461, v63.Length)]);
				var v85: seq<C0> := [v81, v81];
				var v86: seq<bool> := [v63[safeIndex(461, v63.Length)], v78.f4];
				var v87: map<int, array<bool>> := map[f6 := v63];
				var v88: map<bool, map<int, array<bool>>> := map[v86[safeIndex(|v86|, |v86|)] := v87];
				v84 := DC7(v82 + multiset(v85), v83, |(if (v78.f4 in v88) then v88[v78.f4] else map[f6 := v63])|, v78.fm4(globalState), if (v63[safeIndex(461, v63.Length)]) then v63[safeIndex(461, v63.Length)] else v78.f4);
				var v89: map<array<int>, int> := map[v83 := f6];
				var v90: T1 := new C1(true, f5, |v77|);
				var v91 := DC12(v90);
				var v92: set<T1> := {v90};
				v89 := if (v91.cf24 in v92) then v89 else v89;
				v83[safeIndex(432, v83.Length)] := safeModuloInt(|(seq(abs(-0x379), i8  => (v90.f6)))|, |v85|);
				v83[safeIndex(432, v83.Length)] := f6;
				var v93: C1 := new C1(v90.f4, f5, v83[safeIndex(432, v83.Length)]);
				var v94 := DC0(v78.fm3(false, globalState));
				var v95: multiset<C1> := multiset{v93};
				var v96: seq<multiset<C1>> := [v95];
				var v97: array<D0> := new D0[18] [v80, v80, v80, v80, v80, v80, v80, v80, DC2(|v96[safeIndex(v83[safeIndex(432, v83.Length)], |v96|)]|, f6, v90.f4, v78.f4, true), v80, v80, v80, v80, v80, v80, v80, v80, DC2(v83[safeIndex(432, v83.Length)], f6, !true, f4, v90.f4)];
				var v98: seq<int> := [0x14a, v83[safeIndex(432, v83.Length)]];
				var v99: map<seq<int>, int> := map[v98 := |v86|];
				v93, v94, v97, v77, v63[safeIndex(461, v63.Length)] := v93, fm14(map[v98 := v90.f6] + v99, globalState), if (if (v90.f4) then v63[safeIndex(461, v63.Length)] else f4) then v97 else v97, fm15(globalState), v63[safeIndex(461, v63.Length)];
			}
			
			v63[safeIndex(461, v63.Length)] := fm3(f4, globalState);
		} else {
			var v100 := new C1(f6 == f6, f5, f6 - 0x170);
			var v101 := DC5(f6);
			globalState.f3 := v101.cf10;
			var v102 := DC8(f4, f6, 0x1c6, f6);
			var v103: seq<int> := [f6, v102.cf18, 0x3c8, f6, f6];
			var v104: multiset<seq<int>> := multiset{seq(abs(0x3ad), i9  => (f6)), v103};
			v104 := v104 - v104;
			var v105: array<bool> := new bool[9](i10 => f4);
			v105[safeIndex(312, v105.Length)] := f4;
			v105[safeIndex(312, v105.Length)] := f4 ==> !f4;
			var v106: array<int> := new int[13](i11 => i11 - -0x30b);
			v106[safeIndex(574, v106.Length)] := --f6;
			var v107 := "r";
			var v108: seq<bool> := [v105[safeIndex(312, v105.Length)]];
			globalState.f3, v106[safeIndex(574, v106.Length)], v107 := safeDivisionInt(f6, |[v108, v108]|), f6, v107;
		}
		
		if (f6 >= safeDivisionInt(-0xf2, f6)) {
			var v109: seq<bool> := [f4];
			var v110: C0 := new C0();
			var v111: map<C0, int> := map[v110 := f6];
			var v112 := new C1(v109[safeIndex(f6, |v109|)], if (f4) then f5 else f5, |v111|);
			if (f4 <== fm1(f4, f6, globalState)) {
				var v113 := "bywj";
				v113 := v113 + v113;
				v113 := fm15(globalState);
				var v114 := DC11(fm1(f4, f6, globalState));
				v114 := v114;
				var v115: map<bool, bool> := map[f4 := f4];
				var v116: array<bool> := new bool[29] [if (f4) then f4 else f4, f4, f4, f4, f4, f4 in v109, f4, f4 ==> f4, f4, if (f4) then f4 else true, if (f4 in v115) then v115[f4] else true, f4 <== true, f4 || v109[safeIndex(f6, |v109|)], !f4 || f4, f4, if (f4 in v115) then v115[f4] else f4, f4, f4, f4, f4, false, false, true, f4, f4, f4, false, f4, f4];
				v116 := v116;
				var v117: array<array<array<int>>> := new array<array<int>>[8];
				var v118: array<array<int>> := new array<int>[29];
				v117[safeIndex(102, v117.Length)] := v118;
				var v119: map<bool, C0> := map[!f4 := v110];
				var v120: array<C0> := new C0[6] [v110, v110, v110, v110, if (f4 in v119) then v119[f4] else v110, v110];
				var v121: map<int, array<C0>> := map[f6 := v120];
				var v122: seq<array<array<int>>> := [v118, v118];
				v117[safeIndex(102, v117.Length)], v121 := v122[safeIndex(f6, |v122|)], v121;
			} else {
				r0 := f4;
				var v123: map<bool, bool> := map[f4 := f4];
				var v124 := DC8(f4, |[f4, fm1(f4, 690, globalState), if ((if (!f4 in v123) then v123[!f4] else f4) in v123) then v123[if (!f4 in v123) then v123[!f4] else f4] else f4]|, 0x3cc, f6);
				var v125: seq<int> := [f6];
				var v126: set<bool> := {fm3(f4, globalState), f4};
				r2 := v110.fm7(safeModuloInt(f6, -v124.cf18), !(f6 != |v125|), v126, globalState);
				v109 := v109;
				globalState.f3 := f6;
				var v127 := DC2(f6, |multiset{v112}|, f4, false, f4);
				r2, r0 := fm3(f4, globalState), !v112.fm3(v127.cf3, globalState);
			}
			
			globalState.f3 := f6;
			var v128: map<int, bool> := map[f6 := f4];
			var v129: map<map<int, bool>, int> := map[DC13(v128).cf25 := safeDivisionInt(f6, f6)];
			var v130: seq<int> := [f6];
			var v131: map<seq<int>, map<map<int, bool>, int>> := map[v130 := v129];
			v129 := if (v130 in v131) then v131[v130] else v129 + v129;
			if (f4) {
				var v132: seq<char> := [f7];
				globalState.f3 := safeModuloInt(f6, |v132|);
				globalState.f3 := f6;
				var v133 := DC13(v128);
				var v135: multiset<C1> := multiset{v112};
				var v136: multiset<int> := multiset{|v135|};
				var v137: map<int, multiset<int>> := map[f6 := v136];
				r2 := (fm16(v133, f6, f4, globalState) + (map v134 : int | (107 <= v134) && (v134 < 0xc2) :: (v134 + 385) := (multiset{f6, |v130|, f6}))) == v137;
				r2 := f4 || f4;
				var v138: map<bool, int> := map[f4 := f6];
				var v139: seq<map<bool, int>> := [v138, map[f4 := |[f6]|], v138, v138, v138];
				v139, r2 := v139 + (v139 + v139[safeIndex(fm0(f4, false, f4, f4, globalState), |v139|) := v138]), f4;
			} else {
				var v140 := "sktrh";
				var v141: set<bool> := {"m" == v140};
				v141 := v141;
				r2 := f4;
				var v142: multiset<int> := multiset{f6, f6, |multiset{f4}|, f6, if (f4) then 731 else -0x398};
				v142 := (v142 - multiset{fm0(true, f4, f4, !(if (f6 in v128) then v128[f6] else f4), globalState), f6}) * v142;
				var v143: array<array<int>> := new array<int>[17];
				globalState.f3, globalState.f3, r2, v143 := f6, f6 - fm0(f4, !f4, f4, !f4, globalState), f4, v143;
				var v144: array<int> := new int[29];
				v144[safeIndex(103, v144.Length)] := f6;
				v144[safeIndex(103, v144.Length)] := safeModuloInt(-safeModuloInt(506, f6), f6);
			}
			
		} else {
			globalState.f3 := fm0(f4, !f4, f4, f4, globalState);
			var v145: array<int> := new int[19];
			v145 := v145;
			r2 := f4;
			r0 := f6 <= f6;
			var v146 := 'p';
			v146 := f7;
		}
		
		var v147: multiset<bool> := multiset{f4};
		if (!(|v147| != f6)) {
			var v148 := DC0(true);
			match (v148) {
				case DC1() =>
					var v149: array<bool> := new bool[14];
					v149[safeIndex(117, v149.Length)] := f4;
					r2, v149[safeIndex(117, v149.Length)] := f4, f4;
					var v150: C0 := new C0();
					var v151: map<bool, C0> := map[v149[safeIndex(117, v149.Length)] := v150];
					var v152: seq<C0> := [v150];
					var v153: seq<int> := [f6];
					var v154: multiset<int> := multiset{f6, f6};
					var v155: seq<C0> := [v152[safeIndex(v153[safeIndex(|v154|, |v153|)], |v152|)]];
					var v156: map<map<bool, C0>, int> := map[v151 + (map[v149[safeIndex(117, v149.Length)] := v150])[v149[safeIndex(117, v149.Length)] := v152[safeIndex(f6, |v152|)]] := f6];
					var v157: seq<map<bool, C0>> := [v151];
					v156 := v156[v157[safeIndex(f6, |v157|)] := f6 * f6];
					var v158: seq<bool> := [f4, v148.cf0, f4];
					var v159: seq<bool> := [v158[safeIndex(f6, |v158|)]];
					v158 := v158;
					v149[safeIndex(117, v149.Length)] := |(seq(abs(0x12d), i12  => ('c')))| == f6;
				case DC2(cf1, cf2, cf3, cf4, cf5) =>
					cf4 := cf4 <==> cf5;
					cf5 := cf5;
					var v160: array<bool> := new bool[24](i13 => (seq(abs(167), i14  => (f7))) == "qwbhi");
					v160[safeIndex(704, v160.Length)] := f4;
					v160[safeIndex(704, v160.Length)] := f4;
					var v161: map<bool, bool> := map[v148.cf0 := cf4];
					var v162: seq<map<bool, bool>> := [v161];
					cf5 := v162 == v162;
				case DC3(cf6, cf7, cf8) =>
					var v163 := "lfspkvl";
					v163 := if (f4) then v163 else seq(abs(417), i15  => (f7));
					cf8 := f6;
					var v164: set<int> := {-603, cf8};
					var v165: seq<set<int>> := [v164, v164, v164];
					v165 := (v165 + [v164, set v166 : int | (840 <= v166) && (v166 < 0x2ac) :: (safeModuloInt(v166, |v164|))]) + (seq(abs(-0x21f), i16  => (v164)));
					r0 := !f4;
				case DC0(cf0) =>
					globalState.f3 := f6;
					var v167 := "tbglfawa";
					globalState.f3 := f6 - (f6 - |v167|);
					var v168: array<bool> := new bool[3] [cf0, f4, cf0];
					var v169: set<array<bool>> := {v168};
					var v170: T1 := new C1(cf0, f5, fm0(f4, f4, !cf0, true, globalState));
					var v171 := DC12(v170);
					var v172: seq<D4> := [v171];
					v168[safeIndex(457, v168.Length)] := v170.f4;
					var v173: seq<seq<D4>> := [v172, [DC12(v170)]];
					v169, v172, v168[safeIndex(457, v168.Length)], globalState.f3 := v169 - v169, v173[safeIndex(f6, |v173|)], f4 && f4, v170.f6 - f6;
					var v174: seq<array<bool>> := [v168];
					var v175: map<bool, seq<array<bool>>> := map[fm1(v168[safeIndex(457, v168.Length)], f6, globalState) := v174];
					globalState.f3 := safeDivisionInt(v170.f6, 0x36c) + |(if (v168[safeIndex(457, v168.Length)] in v175) then v175[v168[safeIndex(457, v168.Length)]] else v174)|;
			}
			
			var v176: T0 := new C1(f4, f5, f6);
			var v177 := DC16(v176);
			var v178: seq<T0> := [v176, v177.cf32, v176, v176];
			var v179: map<bool, seq<T0>> := map[f4 := v178];
			var v180: array<int> := new int[4];
			var v181: map<int, int> := map[f6 := f6];
			v180[safeIndex(426, v180.Length)] := |v181| * f6;
			var v182: map<int, map<bool, seq<T0>>> := map[safeModuloInt(0x2ab, -f6) := v179];
			v179, r2, globalState.f3, v180[safeIndex(426, v180.Length)] := if (f6 in v182) then v182[f6] else map[v176.f4 := v178] + v179, v176.f4, f6, safeDivisionInt(f6, -f6);
			var v183: array<array<bool>> := new array<bool>[7];
			var v184: array<bool> := new bool[12] [f4, v176.f4, fm3(true, globalState), !v176.f4, f4, f4, f4, f4, f4, f4, f4, f4];
			v183[safeIndex(503, v183.Length)] := v184;
			var v185 := 't';
			v183[safeIndex(503, v183.Length)], v185, globalState.f3 := v184, if (f4 <==> f4) then f7 else v185, v180[safeIndex(426, v180.Length)] + v180[safeIndex(426, v180.Length)];
			var v186 := DC18(0xa0, v180[safeIndex(426, v180.Length)]);
			var v187: set<bool> := {v176.f4};
			var v188: seq<set<bool>> := [v187];
			var v189: seq<bool> := [f4, v176.f4];
			var v190: multiset<set<bool>> := multiset{v187, v187 + v188[safeIndex(|v189|, |v188|)], v187 + v187, {f4, f4, v176.fm3(v176.f4, globalState)}};
			globalState.f3, globalState.f3, r0, v180[safeIndex(426, v180.Length)] := v186.cf37, -|v190|, true, 0x19;
			v180[safeIndex(426, v180.Length)] := -(if (if (f4) then v176.f4 else v176.f4) then fm0(v176.f4, f4, v176.f4, f4, globalState) else f6 * f6);
		} else {
			var v191: array<int> := new int[11];
			v191[safeIndex(629, v191.Length)] := f6;
			v191[safeIndex(629, v191.Length)] := f6;
			globalState.f3 := fm4(globalState);
			r0 := f4 && f4;
			if (f4) {
				globalState.f3 := f6;
				var v192 := new C0();
				var v193: multiset<int> := multiset{safeModuloInt(f6, 94)};
				var v194 := "njnivc";
				var v195: set<bool> := {!true};
				var v196: multiset<set<bool>> := multiset{v195};
				var v197: map<char, int> := map[f7 := v191[safeIndex(629, v191.Length)]];
				v191[safeIndex(629, v191.Length)], v193, v194, globalState.f3, r2 := fm4(globalState), v193, v194, fm0(v196 != v196, fm1(f4, -(if (v194[safeIndex(f6, |v194|)] in v197) then v197[v194[safeIndex(f6, |v194|)]] else v191[safeIndex(629, v191.Length)]), globalState), f4, f4, globalState), f4;
				var v198: seq<bool> := [!false];
				var v199: set<int> := {f6};
				var v200 := DC8(fm1(!f4, v191[safeIndex(629, v191.Length)], globalState), -|v198| + f6, -v191[safeIndex(629, v191.Length)] + v191[safeIndex(629, v191.Length)], |({v191[safeIndex(629, v191.Length)], f6} - v199)|);
				var v201: seq<seq<bool>> := [v198];
				var v202: seq<int> := [|v193|];
				var v203: map<int, char> := map[v202[safeIndex(204, |v202|)] := f7];
				r0, v191, v200, r0, v191[safeIndex(629, v191.Length)] := f4, v191, v200, false, |multiset(if (!f4) then (if (true) then [f4] else v201[safeIndex(f6, |v201|)])[safeIndex(|v203|, |(if (true) then [f4] else v201[safeIndex(f6, |v201|)])|) := f4] else [true])|;
				globalState.f3 := safeDivisionInt(|{|v194|}|, v191[safeIndex(629, v191.Length)]);
			} else {
				globalState.f3 := v191[safeIndex(629, v191.Length)];
				var v204 := "htgxq";
				var v205: map<int, int> := map[|v204| * v191[safeIndex(629, v191.Length)] := -v191[safeIndex(629, v191.Length)]];
				v205 := v205;
				var v206: seq<int> := [0x262];
				var v207: map<bool, int> := map[f4 := |v206|];
				var v208 := DC2(231, 0x34, true, f4, f4);
				var v209 := DC17(f4, f6, v191[safeIndex(629, v191.Length)]);
				var v210: seq<bool> := [f4, f4];
				var v211: array<bool> := new bool[27] [true, f4 ==> f4, f4, f4 !in v207, f4, f4, (v208.(cf3 := f4)).cf4, f4, f4, f4, f4, f4, f4, f4, !f4, f4, f4, !f4, f4, true, v209.cf33, f4, !fm1(f4, v191[safeIndex(629, v191.Length)], globalState), f4 ==> f4, f4, !v210[safeIndex(v191[safeIndex(629, v191.Length)], |v210|)], f4];
				var v212: array<C0> := new C0[11];
				var v213: C0 := new C0();
				v212[safeIndex(653, v212.Length)] := v213;
				var v214: seq<C0> := [v213];
				r0, r2, v211, v212[safeIndex(653, v212.Length)], r0 := f4, !f4 && !f4, v211, v214[safeIndex(f6, |v214|)], ((if (f6 in v205) then v205[f6] else -fm4(globalState)) >= f6) <==> true;
				v204 := v204;
				var v215 := DC11(f4);
				v215 := v215;
			}
			
			var v216: array<bool> := new bool[23](i17 => f4);
			v216[safeIndex(199, v216.Length)] := f4;
			var v217 := DC11(f4);
			var v218 := DC14(v217.cf23, f4, !false, v216, f4);
			v216[safeIndex(199, v216.Length)] := v218.cf26;
		}
		
		if (f4 || (if (false) then f4 else f4)) {
			var v219: C0 := new C0();
			var v220: map<C0, bool> := map[if (false) then v219 else DC19(v219).cf38 := f4];
			var v221: seq<bool> := [f4];
			v220 := v220[v219 := f4 !in v221];
			r2 := fm3(f4, globalState);
			var v222: map<int, int> := map[349 := 0x1cb];
			globalState.f3 := safeModuloInt(|v222|, f6) * (f6 - f6);
			r2 := false;
			var v223: array<char> := new char[4](i18 => f7);
			var v224: map<bool, array<char>> := map[f4 := v223];
			v224 := v224[false := v223];
		} else {
			r2 := f4;
			var v225: seq<bool> := [f4, f4];
			var v226 := "pypgydry";
			r2 := !!((if (f4) then v225[safeIndex(|v226|, |v225|)] else f4) && f4);
			globalState.f3 := --f6;
			globalState.f3 := f6;
			globalState.f3 := f6;
		}
		
		var v227: seq<int> := [f6];
		r2 := (v227 + v227) == v227;
		r0 := fm3(fm3(f4, globalState), globalState);
		var v228: C0 := new C0();
		var v229: map<int, C0> := map[f6 := v228];
		var v230: map<int, bool> := map[|v229| := f4];
		r1 := v230;
		r2 := f4;
	}
	method m1(p0: int, p1: int, globalState: GlobalState) returns (r0: map<int, int>, r1: array<multiset<T0>>, r2: int) {
		var v0 := DC5(f6);
		v0 := v0;
		var i0 := 0;
		while (fm1(f4, p0, globalState))
			decreases 100 - i0
		{
			if (i0 >= 100) {
				break;
			}
			
			i0 := i0 + 1;
			var v1: T0 := new C1(f4, f5, f6);
			var v2: multiset<T0> := multiset{v1, v1};
			var v3: multiset<int> := multiset{|(v2 + v2)|, 0x2b5, p0};
			var v4: map<int, multiset<int>> := map[p1 := v3];
			var v5: map<int, multiset<int>> := map[p1 := if (fm0(f4, v1.f4, f4, f4, globalState) in v4) then v4[fm0(f4, v1.f4, f4, f4, globalState)] else v3];
			var v6 := "uoinpf";
			v3 := if (|(v6 + v6)| in v5) then v5[|(v6 + v6)|] else multiset{p1, f6};
			var v7 := false;
			v7 := v1.f4;
			var v8: array<T1> := new T1[17];
			var v9: T1 := new C1(v7, f5, f6);
			v8[safeIndex(449, v8.Length)] := v9;
			v8[safeIndex(449, v8.Length)] := v9;
			var v10: set<bool> := {v9.f4};
			v7, r2, v10 := f4, safeDivisionInt(-p1, f6), (v10 - v10) + v10;
		}
		var v11: array<int> := new int[2];
		v11[safeIndex(64, v11.Length)] := p1;
		var v12 := "bmdt";
		var v13: seq<int> := [|v12|, p0, f6];
		v11[safeIndex(64, v11.Length)] := |v13| + -0x2a3;
		var v14: seq<array<int>> := [v11];
		v14 := v14;
		var v15: array<bool> := new bool[9] [f4, fm1(f4, v11[safeIndex(64, v11.Length)], globalState), if (f4) then f4 else f4, false, f7 in v12, v11[safeIndex(64, v11.Length)] < v13[safeIndex(fm4(globalState), |v13|)], f4, f4, f4];
		forall i1 | 0 <= i1 < v15.Length {
			v15[i1] := if (f6 != 0x6f) then f7 in v12 else false;
		}
		globalState.f3 := -(f6 * (v11[safeIndex(64, v11.Length)] - -0x300));
		var v16: map<int, int> := map[p0 := v11[safeIndex(64, v11.Length)]];
		var v17: T1 := new C1(f4, f5, f6);
		var v18: map<int, T1> := map[f6 := v17];
		r0 := v16[if (f4) then p0 else v11[safeIndex(64, v11.Length)] := |(v18 + v18)|];
		var v19: T0 := new C1(v17.f4, f5, p1);
		var v20: seq<T0> := [v19];
		var v21: multiset<T0> := multiset{v20[safeIndex(p0, |v20|)], v19, v19, v19, v19};
		var v22: array<multiset<T0>> := new multiset<T0>[4] [v21, v21[v19 := abs(p0)], v21, v21];
		var v23: map<string, array<multiset<T0>>> := map[v12 + v12 := v22];
		r1 := if (v12 in v23) then v23[v12] else v22;
		var v24: multiset<int> := multiset{p1, f6, v17.f6, v17.f6, f6};
		r2 := if (v19.fm3(v17.f4, globalState)) then p1 else |v24|;
	}
}

function fm0(p0: bool, p1: bool, p2: bool, p3: bool, globalState: GlobalState): int {
	safeModuloInt(-|[|"eswxcfwes"|]|, 0x134)
}
function fm1(p0: bool, p1: int, globalState: GlobalState): bool {
	if (|{|[true]|}| >= |multiset{|[false]|}|) then [|multiset{false}|, |[0x178]|] !in map[seq(abs(0x1d8), i0  => (0x3e3)) := true] else true
}
function fm2(globalState: GlobalState): seq<string> {
	if (true || !DC8(false, 0x28, 714, 0x22d).cf17) then ["diuh"] else DC25([seq(abs(-0x1e2), i0  => ('t')), "pmk"]).cf43
}
function fm6(p0: int, p1: int, p2: set<int>, p3: int, globalState: GlobalState): char {
	match DC11(false) {
		case DC11(cf23) => 'g'
		case DC10(cf22) => 'x'
	}
}
function fm8(p0: bool, p1: int, p2: bool, globalState: GlobalState): map<int, string> {
	map v0 : int | (0x3e7 <= v0) && (v0 < 0x1a) :: (v0 - 939) := (seq(abs(570), i0  => ('g')))
}
function fm9(p0: string, p1: int, p2: bool, p3: seq<int>, globalState: GlobalState): seq<int> {
	seq(abs(0x348), i0  => (-|((seq(abs(0x3dd), i1  => ('p'))) + (seq(abs(0x136), i2  => ('f'))))|))
}
function fm10(p0: bool, p1: int, p2: bool, globalState: GlobalState): multiset<bool> {
	(multiset{false} - multiset{false, false, false}) + (multiset{false, true} * multiset{true})
}
function fm11(globalState: GlobalState): D0 {
	DC2(|multiset{true}| - -|[!true]|, -0x120, |"setc"| < 0x215, map[false := false] == map[false := false], -0x374 < |multiset{0x112, |multiset{0x3d8}|, |DC13(map[|(map v0 : int | v0 in (map v1 : int | (348 <= v1) && (v1 < -0xc3) :: (v1 * -0x3bc) := (|"nlbysjc"|)) :: (safeDivisionInt(v0, 0x31f)) := (-284))| := false]).cf25|, DC8(false, -0x129, 0x269, |DC27(map[false := true]).cf45|).cf18}|)
}
function fm12(globalState: GlobalState): D2 {
	DC8(false, -|([true, false] + [false])|, --540, 0x1e6 + 0x1df)
}
function fm13(p0: string, p1: int, p2: D0, globalState: GlobalState): set<int> {
	if (true) then set v0 : int | v0 in (seq(abs(702), i0  => (|(seq(abs(313), i1  => ('e')))|))) :: (v0 * |{true, !!!false, !true}|) else {|{262}|, 0x3c6} - (set v1 : int | v1 in multiset{0x14b} :: (v1 - 0x10c))
}
function fm14(p0: map<seq<int>, int>, globalState: GlobalState): D0 {
	DC0(if (true) then false else true)
}
function fm15(globalState: GlobalState): string {
	"ueyo"
}
function fm16(p0: D5, p1: int, p2: bool, globalState: GlobalState): map<int, multiset<int>> {
	(map[|DC13(map[-0x258 := false]).cf25| := multiset([|"qbplbly"|])] + map[|"vqqq"| := multiset{0x398, -0xd4}]) + (if (false) then map[-809 := multiset([|[true]|])] else map[0x39 := multiset(seq(abs(-0x13f), i0  => (-|map[false := |"jmv"|]|)))])
}
function fm17(globalState: GlobalState): map<bool, bool> {
	map[|multiset{DC25(["fdoithx"])}| == |map[true := --|"e"|]| := if (false) then !!!true else true]
}
function fm18(p0: int, p1: char, p2: string, p3: bool, globalState: GlobalState): seq<set<bool>> {
	seq(abs(0xb9), i0  => ({false} + {false}))
}
function fm19(p0: bool, p1: bool, p2: int, globalState: GlobalState): map<int, int> {
	map[0x3cf := |({"qkygr"} * {seq(abs(0x191), i0  => ('t'))})|]
}
method Main() {
	var v0 := "nv";
	var globalState := new GlobalState(true, v0, 0x330, -0x152);
	var v1: array<bool> := new bool[27](i0 => true);
	var v2 := false;
	v1[safeIndex(723, v1.Length)] := if (v2) then v2 else v2;
	var v3 := 0x99;
	v1[safeIndex(723, v1.Length)] := v3 >= safeDivisionInt(v3, v3);
	var v4: map<set<array<bool>>, int> := map[{v1} := v3];
	var v5: set<array<bool>> := {v1, v1};
	v4 := v4[v5 := v3];
	var v6: array<array<int>> := new array<int>[18];
	var v7: array<int> := new int[20](i1 => safeModuloInt(i1, -v3));
	v6[safeIndex(868, v6.Length)] := v7;
	v6[safeIndex(868, v6.Length)] := v7;
	if (safeDivisionInt(v3, v3) in ((set v8 : int | (429 <= v8) && (v8 < 445) :: (safeModuloInt(v8, 897))) + {v3})) {
		var v9 := 't';
		var v10: seq<int> := [v3];
		var v11: map<int, char> := map[v3 := v9];
		var v12: map<char, seq<int>> := map[v9 := v10 + [|v11|, 0x1ce]];
		v12 := v12[v9 := v10];
		var v13: seq<bool> := [v1[safeIndex(723, v1.Length)]];
		var v14: map<bool, bool> := map[v2 := v13[safeIndex(v3, |v13|)]];
		v1[safeIndex(723, v1.Length)] := v3 < |v14|;
		v1[safeIndex(723, v1.Length)] := v3 >= |v13|;
		v3 := v3;
		globalState.f3 := if (v2) then |"xhdu"| else fm0(v1[safeIndex(723, v1.Length)], v1[safeIndex(723, v1.Length)], v1[safeIndex(723, v1.Length)], v1[safeIndex(723, v1.Length)], globalState);
	} else {
		v7[safeIndex(211, v7.Length)] := v3;
		var v15: multiset<bool> := multiset{!true, v2};
		var v16: seq<multiset<bool>> := [v15];
		var v17: map<int, int> := map[|map[fm1(v1[safeIndex(723, v1.Length)], |multiset(v16)|, globalState) := v2]| := v3];
		v7[safeIndex(211, v7.Length)] := safeDivisionInt(v3, |v17|);
		v6[safeIndex(868, v6.Length)] := new int[4](i2 => i2 + v3);
		v0 := v0;
		v2 := !!(v7[safeIndex(211, v7.Length)] <= |v0|);
		var v18 := 'e';
		var v19: multiset<char> := multiset{if (v1[safeIndex(723, v1.Length)]) then v18 else v18, v18, v18};
		v19 := v19;
	}
	
	for i3 := v3 to v3 {
		var v20 := 'e';
		var v21: seq<bool> := [v2, v1[safeIndex(723, v1.Length)]];
		var v22: map<char, int> := map[v20 := |v21|];
		var v23: multiset<bool> := multiset{v2, v1[safeIndex(723, v1.Length)]};
		var v24: map<int, int> := map[v3 := if (v20 in v22) then v22[v20] else |v23|];
		var v25: map<char, map<int, int>> := map[v20 := v24];
		globalState.f3 := |(if (fm1(v1[safeIndex(723, v1.Length)], i3, globalState)) then v25 + v25 else map[v20 := v24])|;
		var v26: map<bool, int> := map[v2 := 795];
		var v27: multiset<map<bool, int>> := multiset{v26};
		globalState.f3 := if ((v26 + v26) in v27) then v27[v26 + v26] else v3;
		var v28: array<seq<string>> := new seq<string>[12];
		var v29: seq<string> := [v0];
		var v30: seq<seq<string>> := [v29, v29[safeIndex(4, |v29|) := seq(abs(0x17f), i4  => (v20))], v29];
		v28[safeIndex(388, v28.Length)] := v30[safeIndex(|[v1[safeIndex(723, v1.Length)]]|, |v30|)] + v29;
		v28[safeIndex(388, v28.Length)] := fm2(globalState);
		var v31 := new C0();
	}
	var v32: map<int, int> := map[v3 := v3];
	var i5 := 0;
	while (v3 < (|v32| - |fm15(globalState)|))
		decreases 100 - i5
	{
		if (i5 >= 100) {
			break;
		}
		
		i5 := i5 + 1;
		var v33: multiset<bool> := multiset{v1[safeIndex(723, v1.Length)], v2};
		var v34 := DC0(v2);
		var v35 := 'f';
		var v36: array<seq<bool>> := new seq<bool>[22];
		var v37: C2 := new C2(v35, v1[safeIndex(723, v1.Length)], v36, v3);
		var v38 := DC21(map[v3 := v37]);
		v6[safeIndex(868, v6.Length)][safeIndex(50, v6[safeIndex(868, v6.Length)].Length)] := if ((v34.(cf0 := v1[safeIndex(723, v1.Length)])).cf0 in v33) then v33[(v34.(cf0 := v1[safeIndex(723, v1.Length)])).cf0] else |v38.cf40|;
		v6[safeIndex(868, v6.Length)][safeIndex(50, v6[safeIndex(868, v6.Length)].Length)] := v3;
		v1[safeIndex(723, v1.Length)] := v1[safeIndex(723, v1.Length)];
		var v39 := new C0();
		v6[safeIndex(868, v6.Length)][safeIndex(50, v6[safeIndex(868, v6.Length)].Length)] := safeModuloInt(0xbe, v6[safeIndex(868, v6.Length)][safeIndex(50, v6[safeIndex(868, v6.Length)].Length)]);
	}
	var v40 := 'v';
	var v41: array<seq<bool>> := new seq<bool>[24](i6 => [false, v1[safeIndex(723, v1.Length)], v1[safeIndex(723, v1.Length)], v1[safeIndex(723, v1.Length)]]);
	var v42: C2 := new C2(v40, false, v41, v3);
	var v43: map<C2, int> := map[v42 := v3];
	var v44: seq<bool> := [true, false, v1[safeIndex(723, v1.Length)], true];
	var v45: array<map<C2, int>> := new map<C2, int>[21] [v43 + v43, v43[v42 := v3], v43[v42 := v3], v43, v43, v43, v43, v43, map[v42 := v3] + v43, map[v42 := v3] + v43, map[v42 := v3], v43, map[v42 := |"tvmsxg"|], v43, v43, v43 + v43, (map[v42 := -v3])[v42 := -v3], if (v1[safeIndex(723, v1.Length)]) then v43 else v43, map[v42 := v3] + map[v42 := |v44|], (map[v42 := v3])[v42 := v3], v43[v42 := v42.fm4(globalState)]];
	v45[safeIndex(587, v45.Length)] := v43;
	v45[safeIndex(587, v45.Length)] := v43 + v43;
	var v46: seq<string> := [v0, v0];
	v0 := v0 + v46[safeIndex(v3, |v46|)];
	v7[safeIndex(914, v7.Length)] := v3;
	v7[safeIndex(914, v7.Length)] := |fm15(globalState)| * safeModuloInt(v3, v3);
	var v47: seq<int> := [-0x10e];
	var v48: multiset<bool> := multiset{v1[safeIndex(723, v1.Length)], v2};
	var v49 := DC17(true, v47[safeIndex(v3, |v47|)], if (v2 in v48) then v48[v2] else v3);
	if (v49.cf33) {
		var v50: C0 := new C0();
		var v51: multiset<C0> := multiset{v50, v50};
		var v52 := DC7(v51, v6[safeIndex(868, v6.Length)], v7[safeIndex(914, v7.Length)], v7[safeIndex(914, v7.Length)], v2);
		var v53 := DC9(v52);
		var v54: set<D2> := {v53, DC9(v52)};
		var v55: map<set<D2>, string> := map[v54 := v46[safeIndex(v7[safeIndex(914, v7.Length)], |v46|)]];
		var v56 := DC2(v7[safeIndex(914, v7.Length)], v7[safeIndex(914, v7.Length)], v1[safeIndex(723, v1.Length)], v1[safeIndex(723, v1.Length)], v1[safeIndex(723, v1.Length)]);
		var v57: set<D0> := {v56};
		v55, v49, v57, v2 := v55[v54 := v0 + fm15(globalState)], if (v2) then v49 else v49, v57, v1[safeIndex(723, v1.Length)] && v2;
		if (v3 > v3) {
			var v58 := new C2(v42.f7, v2, v41, -v3);
			v7[safeIndex(914, v7.Length)] := safeModuloInt(v3, -(v7[safeIndex(914, v7.Length)] + |v44[safeIndex(v3, |v44|) := v1[safeIndex(723, v1.Length)]]|));
			var v59, v60, v61 := v42.m0(globalState);
			var v62: map<C2, bool> := map[v42 := v1[safeIndex(723, v1.Length)]];
			var v63, v64, v65 := v58.m1(|v62| * 651, -0x3aa, globalState);
			var v66: map<char, int> := map[v40 := v65];
			v66 := v66[v42.f7 := -(v3 - v7[safeIndex(914, v7.Length)])];
		} else {
			var v67, v68, v69 := v42.m1(v7[safeIndex(914, v7.Length)], v3, globalState);
			var v70: map<char, string> := map[v42.f7 := (seq(abs(0x1d7), i7  => (v42.f7))) + v0];
			v70 := v70[if (v1[safeIndex(723, v1.Length)]) then v42.f7 else v40 := v0];
			var v71: map<int, bool> := map[v3 := !v2];
			v71 := v71;
			v3 := -|((seq(abs(-0xdc), i8  => (v42.f7))) + v0)| * -|"c"|;
			v47 := v47;
		}
		
		var v73: multiset<char> := multiset{v42.f7, v42.f7};
		var v74: map<bool, bool> := map[map[v42.f7 := v44[safeIndex(611, |v44|)]] != (map v72 : char | v72 in v73 :: (v72) := (v1[safeIndex(723, v1.Length)])) := v2 || v1[safeIndex(723, v1.Length)]];
		v74 := fm17(globalState);
		var v75: multiset<array<bool>> := multiset{v1};
		v2 := v3 > (if (v1 in v75) then v75[v1] else -v7[safeIndex(914, v7.Length)]);
		v1[safeIndex(723, v1.Length)] := v1[safeIndex(723, v1.Length)];
	} else {
		v2 := v2;
		var v76: map<string, char> := map[v0 := v40];
		v76 := v76[v0 := 'v'];
		var v77 := new C1(v1[safeIndex(723, v1.Length)], v41, -0x275 - v7[safeIndex(914, v7.Length)]);
		v7[safeIndex(914, v7.Length)] := v7[safeIndex(914, v7.Length)];
		var v78: multiset<array<int>> := multiset{v7};
		var v79: map<bool, multiset<array<int>>> := map[!v1[safeIndex(723, v1.Length)] := v78];
		v78 := if (v44[safeIndex(v3, |v44|)] in v79) then v79[v44[safeIndex(v3, |v44|)]] else v78 + v78;
	}
	
	v2 := v42.fm3(v1[safeIndex(723, v1.Length)], globalState);
	var v80, v81, v82 := v42.m0(globalState);
	var v83: T1 := new C1(v2, v41, -v3);
	var v84 := DC12(v83);
	var v85 := DC1();
	var v86: set<D0> := {v85};
	v83, v0, v82, v1[safeIndex(723, v1.Length)] := v84.cf24, fm15(globalState), if (if (v83.f4) then v1[safeIndex(723, v1.Length)] else v1[safeIndex(723, v1.Length)]) then v83.f4 else v82, (v86 * v86) == v86;
	var v87: array<char> := new char[21];
	v87 := v87;
	globalState.f3 := fm0(v2, v82, v1[safeIndex(723, v1.Length)], v83.fm3(v82, globalState), globalState);
	if (v1[safeIndex(723, v1.Length)] || v44[safeIndex(v7[safeIndex(914, v7.Length)], |v44|)]) {
		v82 := v80;
		v3 := 469;
		match (DC3(v83.f6, -v7[safeIndex(914, v7.Length)], v7[safeIndex(914, v7.Length)])) {
			case DC1() =>
				v3, v42 := if (v2) then v83.f6 else v83.f6, v42;
				v80 := v82;
				var v88: C0 := new C0();
				var v89: seq<C0> := [v88, v88, v88, v88];
				v89 := v89 + v89;
				var v90: map<bool, int> := map[v1[safeIndex(723, v1.Length)] := v83.f6];
				var v91 := DC18(v83.f6, v83.f6);
				v7[safeIndex(914, v7.Length)] := (|"xg"| + |v90|) * v91.cf36;
			case DC2(cf1, cf2, cf3, cf4, cf5) =>
				var v92: seq<seq<set<bool>>> := [fm18(v7[safeIndex(914, v7.Length)], v40, seq(abs(-0x1b5), i9  => (v42.f7)), v83.fm3(true, globalState), globalState)];
				globalState.f3, v1[safeIndex(723, v1.Length)] := v83.f6 - |v92[safeIndex(|v0|, |v92|)]|, cf5 <== (v83.f6 < cf1);
				cf5 := if (-0xcf in v81) then v81[-0xcf] else cf4;
				var v93 := new C1(if (v2) then v2 else v82, v83.f5, |fm19(cf4, v83.f4, v83.f6, globalState)|);
				var v94: map<C1, char> := map[v93 := 'v'];
				v40 := if (v93 in v94) then v94[v93] else v42.f7;
			case DC3(cf6, cf7, cf8) =>
				cf8 := v3;
				var v95: map<int, char> := map[|(seq(abs(-0x385), i10  => ('k')))| := DC23(v42.f7).cf41];
				var v96: set<bool> := {v83.f4};
				v95 := v95[|v96| := v42.f7];
				var v97: C1 := new C1(v83.f4, v83.f5, v3);
				var v98: array<C1> := new C1[10] [v97, v97, v97, v97, v97, v97, v97, v97, v97, v97];
				var v99: map<int, C1> := map[v3 := v97];
				v98[safeIndex(992, v98.Length)] := if (|(seq(abs(0x2ec), i11  => (v40)))| in v99) then v99[|(seq(abs(0x2ec), i11  => (v40)))|] else v97;
				v98[safeIndex(992, v98.Length)] := v97;
				globalState.f3 := cf7;
			case DC0(cf0) =>
				var v100, v101, v102 := v42.m0(globalState);
				var v103: set<array<int>> := {v6[safeIndex(868, v6.Length)], v6[safeIndex(868, v6.Length)], v6[safeIndex(868, v6.Length)]};
				v103 := if (!v2) then v103 else {v7, v6[safeIndex(868, v6.Length)], v7, v6[safeIndex(868, v6.Length)], v6[safeIndex(868, v6.Length)]};
				cf0 := v82;
				var v104, v105, v106 := v42.m1(v83.f6, v47[safeIndex(-v3, |v47|)] * v3, globalState);
		}
		
		globalState.f3 := v83.f6;
		var v107 := new C1(v2, v83.f5, v3);
	} else {
		var v108, v109, v110 := v42.m1(fm0(true, v82, v83.f4, v82, globalState), -safeModuloInt(v83.f6, v83.fm4(globalState)), globalState);
		var v111: T0 := new C1(v1[safeIndex(723, v1.Length)], v83.f5, v7[safeIndex(914, v7.Length)]);
		var v112: seq<T0> := [v111];
		v111, v47, v3, globalState.f3, globalState.f3 := v111, (v47 + v47) + v47, -v111.fm4(globalState), |map[v1 := v112[safeIndex(v83.f6, |v112|)]]| - |v0|, v110;
		if (v82) {
			v110 := -0x66;
			var v113: seq<array<int>> := [v7, v6[safeIndex(868, v6.Length)], v7];
			v113 := v113;
			var v115 := DC18(|(map v114 : string | v114 in [v0] :: (v114) := (false))|, |v81|);
			var v116 := DC5(v110);
			var v117 := DC3(v83.f6, safeDivisionInt(v115.cf36, v7[safeIndex(914, v7.Length)]), v116.cf10);
			v117 := DC3(v3, -(-712 + v83.f6), safeModuloInt(v110, v110));
			v3, v1[safeIndex(723, v1.Length)], v110, v110, globalState.f3 := v110, v42.fm3(v1[safeIndex(723, v1.Length)], globalState), 0x3a, v111.fm4(globalState) - v83.f6, 0x3ce;
			var v118: multiset<int> := multiset{0x290 * v83.f6, v83.f6};
			v118, v7[safeIndex(914, v7.Length)] := v118, v110;
		} else {
			var v119: map<array<bool>, bool> := map[v1 := v83.f4];
			v119 := v119[v1 := true <==> !v82];
			var v120, v121, v122 := v42.m1(212, v83.f6, globalState);
			v1[safeIndex(723, v1.Length)] := v2;
			v1 := new bool[9];
			v82 := v83.f4;
		}
		
		v80 := v2;
		var v123 := new C0();
	}
	
	print v0, "\n";
	print globalState.f0, "\n";
	print globalState.f1, "\n";
	print globalState.f2, "\n";
	print globalState.f3, "\n";
	print v1[0], "\n";
	print v1[1], "\n";
	print v1[2], "\n";
	print v1[3], "\n";
	print v1[4], "\n";
	print v1[5], "\n";
	print v1[6], "\n";
	print v1[7], "\n";
	print v1[8], "\n";
	print v1[9], "\n";
	print v1[10], "\n";
	print v1[11], "\n";
	print v1[12], "\n";
	print v1[13], "\n";
	print v1[14], "\n";
	print v1[15], "\n";
	print v1[16], "\n";
	print v1[17], "\n";
	print v1[18], "\n";
	print v1[19], "\n";
	print v1[20], "\n";
	print v1[21], "\n";
	print v1[22], "\n";
	print v1[23], "\n";
	print v1[24], "\n";
	print v1[25], "\n";
	print v1[26], "\n";
	print v2, "\n";
	print v3, "\n";
	print |v4|, "\n";
	print |v5|, "\n";
	print v6[4][0], "\n";
	print v6[4][1], "\n";
	print v6[4][2], "\n";
	print v6[4][3], "\n";
	print v7[0], "\n";
	print v7[1], "\n";
	print v7[2], "\n";
	print v7[3], "\n";
	print v7[4], "\n";
	print v7[5], "\n";
	print v7[6], "\n";
	print v7[7], "\n";
	print v7[8], "\n";
	print v7[9], "\n";
	print v7[10], "\n";
	print v7[11], "\n";
	print v7[12], "\n";
	print v7[13], "\n";
	print v7[14], "\n";
	print v7[15], "\n";
	print v7[16], "\n";
	print v7[17], "\n";
	print v7[18], "\n";
	print v7[19], "\n";
	print v32 == map[153 := 153], "\n";
	print i5, "\n";
	print v40, "\n";
	print v41[0] == [false, true, true, true], "\n";
	print v41[1] == [false, true, true, true], "\n";
	print v41[2] == [false, true, true, true], "\n";
	print v41[3] == [false, true, true, true], "\n";
	print v41[4] == [false, true, true, true], "\n";
	print v41[5] == [false, true, true, true], "\n";
	print v41[6] == [false, true, true, true], "\n";
	print v41[7] == [false, true, true, true], "\n";
	print v41[8] == [false, true, true, true], "\n";
	print v41[9] == [false, true, true, true], "\n";
	print v41[10] == [false, true, true, true], "\n";
	print v41[11] == [false, true, true, true], "\n";
	print v41[12] == [false, true, true, true], "\n";
	print v41[13] == [false, true, true, true], "\n";
	print v41[14] == [false, true, true, true], "\n";
	print v41[15] == [false, true, true, true], "\n";
	print v41[16] == [false, true, true, true], "\n";
	print v41[17] == [false, true, true, true], "\n";
	print v41[18] == [false, true, true, true], "\n";
	print v41[19] == [false, true, true, true], "\n";
	print v41[20] == [false, true, true, true], "\n";
	print v41[21] == [false, true, true, true], "\n";
	print v41[22] == [false, true, true, true], "\n";
	print v41[23] == [false, true, true, true], "\n";
	print v42.f7, "\n";
	print |v43|, "\n";
	print v44 == [true, false, true, true], "\n";
	print |v45[0]|, "\n";
	print |v45[1]|, "\n";
	print |v45[2]|, "\n";
	print |v45[3]|, "\n";
	print |v45[4]|, "\n";
	print |v45[5]|, "\n";
	print |v45[6]|, "\n";
	print |v45[7]|, "\n";
	print |v45[8]|, "\n";
	print |v45[9]|, "\n";
	print |v45[10]|, "\n";
	print |v45[11]|, "\n";
	print |v45[12]|, "\n";
	print |v45[13]|, "\n";
	print |v45[14]|, "\n";
	print |v45[15]|, "\n";
	print |v45[16]|, "\n";
	print |v45[17]|, "\n";
	print |v45[18]|, "\n";
	print |v45[19]|, "\n";
	print |v45[20]|, "\n";
	print v46 == ["nv", "nv"], "\n";
	print v47 == [-270], "\n";
	print v48 == multiset{true, false}, "\n";
	print v49.cf33, "\n";
	print v49.cf34, "\n";
	print v49.cf35, "\n";
	print v80, "\n";
	print v81 == map[1 := false], "\n";
	print v82, "\n";
	print v83.f5[0] == [false, true, true, true], "\n";
	print v83.f5[1] == [false, true, true, true], "\n";
	print v83.f5[2] == [false, true, true, true], "\n";
	print v83.f5[3] == [false, true, true, true], "\n";
	print v83.f5[4] == [false, true, true, true], "\n";
	print v83.f5[5] == [false, true, true, true], "\n";
	print v83.f5[6] == [false, true, true, true], "\n";
	print v83.f5[7] == [false, true, true, true], "\n";
	print v83.f5[8] == [false, true, true, true], "\n";
	print v83.f5[9] == [false, true, true, true], "\n";
	print v83.f5[10] == [false, true, true, true], "\n";
	print v83.f5[11] == [false, true, true, true], "\n";
	print v83.f5[12] == [false, true, true, true], "\n";
	print v83.f5[13] == [false, true, true, true], "\n";
	print v83.f5[14] == [false, true, true, true], "\n";
	print v83.f5[15] == [false, true, true, true], "\n";
	print v83.f5[16] == [false, true, true, true], "\n";
	print v83.f5[17] == [false, true, true, true], "\n";
	print v83.f5[18] == [false, true, true, true], "\n";
	print v83.f5[19] == [false, true, true, true], "\n";
	print v83.f5[20] == [false, true, true, true], "\n";
	print v83.f5[21] == [false, true, true, true], "\n";
	print v83.f5[22] == [false, true, true, true], "\n";
	print v83.f5[23] == [false, true, true, true], "\n";
	print v83.f6, "\n";
	print v83.f4, "\n";
	print v84.cf24.f5[0] == [false, true, true, true], "\n";
	print v84.cf24.f5[1] == [false, true, true, true], "\n";
	print v84.cf24.f5[2] == [false, true, true, true], "\n";
	print v84.cf24.f5[3] == [false, true, true, true], "\n";
	print v84.cf24.f5[4] == [false, true, true, true], "\n";
	print v84.cf24.f5[5] == [false, true, true, true], "\n";
	print v84.cf24.f5[6] == [false, true, true, true], "\n";
	print v84.cf24.f5[7] == [false, true, true, true], "\n";
	print v84.cf24.f5[8] == [false, true, true, true], "\n";
	print v84.cf24.f5[9] == [false, true, true, true], "\n";
	print v84.cf24.f5[10] == [false, true, true, true], "\n";
	print v84.cf24.f5[11] == [false, true, true, true], "\n";
	print v84.cf24.f5[12] == [false, true, true, true], "\n";
	print v84.cf24.f5[13] == [false, true, true, true], "\n";
	print v84.cf24.f5[14] == [false, true, true, true], "\n";
	print v84.cf24.f5[15] == [false, true, true, true], "\n";
	print v84.cf24.f5[16] == [false, true, true, true], "\n";
	print v84.cf24.f5[17] == [false, true, true, true], "\n";
	print v84.cf24.f5[18] == [false, true, true, true], "\n";
	print v84.cf24.f5[19] == [false, true, true, true], "\n";
	print v84.cf24.f5[20] == [false, true, true, true], "\n";
	print v84.cf24.f5[21] == [false, true, true, true], "\n";
	print v84.cf24.f5[22] == [false, true, true, true], "\n";
	print v84.cf24.f5[23] == [false, true, true, true], "\n";
	print v84.cf24.f6, "\n";
	print v84.cf24.f4, "\n";
	print v86 == {DC1()}, "\n";
}