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
datatype D0 = DC0(cf0: string)
datatype D1 = DC2(cf2: bool, cf3: bool, cf4: bool) | DC1(cf1: int) | DC3(cf5: D1)
datatype D2 = DC4(cf6: seq<int>)
datatype D3 = DC6(cf8: int, cf9: bool) | DC7(cf10: bool) | DC5(cf7: seq<bool>)
datatype D4 = DC9 | DC8(cf11: array<int>) | DC10(cf12: D4)
datatype D5 = DC12(cf14: bool, cf15: int, cf16: char) | DC11(cf13: set<bool>)
datatype D6 = DC13(cf17: array<bool>)
datatype D7 = DC15(cf19: seq<D3>, cf20: int, cf21: C1) | DC14(cf18: set<T0>) | DC16(cf22: D7)
datatype D8 = DC18(cf24: int, cf25: array<int>) | DC17(cf23: map<int, seq<bool>>) | DC19(cf26: D8)
datatype D9 = DC20(cf27: T0)
datatype D10 = DC22(cf29: array<int>, cf30: string) | DC21(cf28: array<map<C0, char>>)
datatype D11 = DC23(cf31: seq<string>)
trait T0 {
	const f16 : bool
	function fm2(p0: bool, p1: bool, globalState: GlobalState): set<bool> 
	method m0(globalState: GlobalState) returns (r0: int) 
}

trait T1 {
	function fm3(p0: int, p1: bool, globalState: GlobalState): bool 
	function fm4(p0: seq<seq<int>>, p1: bool, globalState: GlobalState): bool 
}

trait T2 extends T1 {
	const f17 : map<int, bool>
	const f18 : string
}

class GlobalState {
	const f0 : bool
	var f1 : char
	var f2 : bool
	var f3 : bool
	const f4 : bool
	const f5 : int
	const f6 : bool
	const f7 : map<int, bool>
	const f8 : array<int>
	const f9 : int
	var f10 : array<bool>
	const f11 : bool
	const f12 : seq<map<char, int>>
	const f13 : array<bool>
	const f14 : bool
	var f15 : bool
	constructor (f0 : bool, f1 : char, f2 : bool, f3 : bool, f4 : bool, f5 : int, f6 : bool, f7 : map<int, bool>, f8 : array<int>, f9 : int, f10 : array<bool>, f11 : bool, f12 : seq<map<char, int>>, f13 : array<bool>, f14 : bool, f15 : bool) {
		this.f0 := f0;
		this.f1 := f1;
		this.f2 := f2;
		this.f3 := f3;
		this.f4 := f4;
		this.f5 := f5;
		this.f6 := f6;
		this.f7 := f7;
		this.f8 := f8;
		this.f9 := f9;
		this.f10 := f10;
		this.f11 := f11;
		this.f12 := f12;
		this.f13 := f13;
		this.f14 := f14;
		this.f15 := f15;
	}
	
}

class C0 extends T1, T2 {
	var f21 : array<int>
	constructor (f21 : array<int>, f17 : map<int, bool>, f18 : string) {
		this.f21 := f21;
		this.f17 := f17;
		this.f18 := f18;
	}
	
	function fm3(p0: int, p1: bool, globalState: GlobalState): bool {
		false ==> true
	}
	function fm4(p0: seq<seq<int>>, p1: bool, globalState: GlobalState): bool {
		safeDivisionInt(997, --0x20b) == -71
	}
	function fm7(p0: seq<seq<int>>, p1: bool, p2: int, globalState: GlobalState): bool {
		(0xcd + 0x36c) !in ([|map[false := [-0x371]]|, -0x3b3, |(map v0 : int | (0x2a6 <= v0) && (v0 < 108) :: (v0 * |f17|) := (|{-355}|))|, |{!false, true, !true, false, false}|, |f18|] + [|[false]|])
	}
	function fm8(p0: int, p1: bool, p2: bool, p3: map<bool, string>, globalState: GlobalState): int {
		0x2c8
	}
}

class C1 extends T0 {
	constructor (f16 : bool) {
		this.f16 := f16;
	}
	
	function fm2(p0: bool, p1: bool, globalState: GlobalState): set<bool> {
		({f16} - {f16}) * (if (f16) then {f16} else {true})
	}
	function fm17(globalState: GlobalState): bool {
		!false
	}
	function fm18(p0: int, p1: int, p2: bool, globalState: GlobalState): bool {
		f16
	}
	method m0(globalState: GlobalState) returns (r0: int) {
		var i0 := 0;
		while (false)
			decreases 100 - i0
		{
			if (i0 >= 100) {
				break;
			}
			
			i0 := i0 + 1;
			var v0: map<bool, int> := map[f16 := -744];
			var v1 := -0x37f;
			v0 := v0[f16 := v1];
			var v2 := "sgdoq";
			var v3 := DC0(v2);
			var v4: seq<bool> := [false];
			var v5: map<seq<bool>, string> := map[v4 := v2];
			var v6: seq<string> := [v2, v2, "rmmkkho"];
			var v7 := 's';
			var v8: array<string> := new string[23] [v2, v2, v2, v2, if (f16) then "paaq" else v2, v2, v2, v3.cf0, v2, v2, v2, (if ([fm18(v1, v1, f16, globalState), f16] in v5) then v5[[fm18(v1, v1, f16, globalState), f16]] else seq(abs(61), i1  => ('i'))) + (seq(abs(-0x260), i2  => ('p'))), v2, v6[safeIndex(v1, |v6|)], v2, v2, v2, v2, v2, v2, v2, v2, fm19((map[v7 := "dr"])[v7 := v2[safeIndex(v1, |v2|) := v7]], globalState)];
			v8[safeIndex(615, v8.Length)] := v2;
			v8[safeIndex(615, v8.Length)] := v3.cf0;
			var v9: map<bool, bool> := map[f16 := f16];
			v9 := (if (f16) then v9 else v9) + (v9 + map[f16 := f16]);
			var v10: set<bool> := {!f16};
			var v11 := DC11({f16, f16});
			v10 := v11.cf13;
		}
		var v12 := "c";
		v12 := v12 + v12;
		var v13: array<bool> := new bool[14];
		var v14: seq<array<bool>> := [v13];
		var v15 := 0x1d2;
		globalState.f10 := v14[safeIndex(v15, |v14|)];
		var v16: array<seq<array<bool>>> := new seq<array<bool>>[28];
		v16[safeIndex(162, v16.Length)] := v14 + v14;
		v16[safeIndex(162, v16.Length)] := v14[safeIndex(v15, |v14|) := v13];
		var v17: array<set<bool>> := new set<bool>[12];
		var v18: set<bool> := {f16, false};
		v17[safeIndex(433, v17.Length)] := v18;
		v17[safeIndex(433, v17.Length)] := v18;
		var v19: set<int> := {|v18|};
		var v20: array<int> := new int[17];
		var v21: map<int, bool> := map[|v17[safeIndex(433, v17.Length)]| := f16];
		var v22: C0 := new C0(v20, v21, v12);
		var v23: array<set<int>> := new set<int>[21] [v19, v19, fm20(-0x272, globalState) - v19, v19 + v19, v19, {v15, |[v22, v22]|}, v19, v19 + v19, v19, v19, v19, v19, v19 * {v15}, {|v19|, 0x248, v15, v15, 0x39e}, v19, v19 + v19, v19, v19, {|v21|, v15}, if (f16) then v19 else {v15}, v19];
		forall i3 | 0 <= i3 < v23.Length {
			v23[i3] := {|"bo"|};
		}
		r0 := safeModuloInt(134, v15);
	}
}

class C2 extends T0 {
	const f22 : int
	const f23 : map<int, bool>
	constructor (f22 : int, f23 : map<int, bool>, f16 : bool) {
		this.f22 := f22;
		this.f23 := f23;
		this.f16 := f16;
	}
	
	function fm2(p0: bool, p1: bool, globalState: GlobalState): set<bool> {
		match DC1(-|DC11({f16}).cf13|) {
			case DC2(cf2, cf3, cf4) => {f16, cf4}
			case DC1(cf1) => {f16, false}
			case DC3(cf5) => {f16} + {f16}
		}
	}
	function fm12(p0: set<int>, p1: bool, p2: bool, p3: D3, globalState: GlobalState): bool {
		safeModuloInt(f22, f22) != f22
	}
	function fm13(globalState: GlobalState): set<int> {
		set v1 : int | v1 in (map v0 : int | v0 in map[f22 := "dkwbmmvc"] :: (v0 * f22) := (f16)) :: (v1 + -(-0x315 - --0x32b))
	}
	method m0(globalState: GlobalState) returns (r0: int) {
		r0 := if (-0x305 >= f22) then f22 else f22;
		r0 := f22;
		globalState.f3 := (f22 < f22) || true;
		for i0 := f22 to f22 {
			var v0 := "cqvesni";
			var v1: map<int, int> := map[f22 := |v0|];
			var v3: seq<int> := [i0, 0x18a];
			var v4: multiset<int> := multiset{|v3|, f22};
			var v5: array<map<int, int>> := new map<int, int>[15] [v1 + (map v2 : int | v2 in v4 :: (v2 * f22) := (f22)), v1, v1, map[f22 := i0], v1 + v1, v1, v1, map[i0 := f22] + v1, map[i0 := f22], v1, map[f22 := |f23|] + map[0x3cc := f22], v1, map[|v0| := i0], v1 + v1, v1];
			v5[safeIndex(937, v5.Length)] := v1;
			var v6 := 'r';
			var v7: set<int> := {f22, |(seq(abs(-0x86), i1  => ('r')))|, f22, |[v6, v6, v6]|};
			var v8: map<bool, bool> := map[fm0(-f22, v0, i0, globalState) := f16];
			var v9: seq<bool> := [f16, f16, f16, f16];
			v5[safeIndex(937, v5.Length)], globalState.f2 := v1, fm12(v7 - v7, !f16, !(if (f16 in v8) then v8[f16] else f16), DC5(v9), globalState);
			r0 := f22;
			var v10, v11, v12, v13 := m3(|v9|, 0x351, f22 != f22, v9, globalState);
			var v14: array<int> := new int[8];
			var v15: map<multiset<int>, bool> := map[v4 := v13];
			var v16: array<bool> := new bool[4] [|v15| <= -|v0|, v13, v9[safeIndex(-0x2b1, |v9|)], 0x347 > f22];
			v16[safeIndex(572, v16.Length)] := v13;
			var v17: map<map<int, bool>, array<int>> := map[f23 := v14];
			var v18: set<bool> := {true, !v11};
			v14, r0, v16[safeIndex(572, v16.Length)], v0 := if (map[-f22 := v11] in v17) then v17[map[-f22 := v11]] else v14, i0, f22 > fm14(v18, i0, v12, globalState), v0;
		}
		var v19: array<array<array<bool>>> := new array<array<bool>>[11];
		var v20: array<bool> := new bool[21](i2 => f16);
		var v21: map<bool, array<bool>> := map[f16 := v20];
		var v22: array<array<bool>> := new array<bool>[15] [v20, v20, if (f16 in v21) then v21[f16] else v20, v20, v20, v20, v20, v20, v20, v20, v20, v20, v20, v20, v20];
		v19[safeIndex(132, v19.Length)] := v22;
		var v23: map<bool, bool> := map[f16 := f16];
		var v24: array<int> := new int[15];
		var v25 := "n";
		v24[safeIndex(121, v24.Length)] := |v25|;
		v19[safeIndex(132, v19.Length)], v23, v24[safeIndex(121, v24.Length)], globalState.f2 := v22, v23, 724 + f22, f16 <== (f16 || f16);
		if (true) {
			var v26: array<D4> := new D4[7];
			var v27 := DC8(v24);
			v26[safeIndex(672, v26.Length)] := v27;
			v26[safeIndex(672, v26.Length)] := DC8(v24);
			var v28: C0 := new C0(v24, f23, v25);
			var v29: map<bool, string> := map[f16 := v25];
			var v30: map<C0, int> := map[v28 := v28.fm8(0x28d, f16, f16, v29, globalState)];
			var v31: seq<C0> := [v28, v28];
			v30 := v30[v31[safeIndex(f22, |v31|)] := f22];
			v20[safeIndex(556, v20.Length)] := if (!f16) then f16 else false;
			var v32 := DC0(v25);
			var v33 := 'g';
			var v34: map<string, bool> := map["ibuf" := !f16];
			v20[safeIndex(556, v20.Length)] := if (f16 <== f16) then v32.cf0[safeIndex(v24[safeIndex(121, v24.Length)], |v32.cf0|) := v33] !in v34 else f16;
			var v35: map<string, int> := map[v25 + "qgqnfxxu" := if (v20[safeIndex(556, v20.Length)]) then f22 else v24[safeIndex(121, v24.Length)]];
			v35 := v35[v25 := f22];
			var v36: seq<bool> := [v20[safeIndex(556, v20.Length)], v20[safeIndex(556, v20.Length)]];
			globalState.f2, r0, v24[safeIndex(121, v24.Length)], v24[safeIndex(121, v24.Length)], v24 := 0x1e2 != f22, f22, if (-v28.fm8(f22, f16, v20[safeIndex(556, v20.Length)], v29, globalState) <= v24[safeIndex(121, v24.Length)]) then |v25| else f22 * |v36|, 0x12f, v28.f21;
		} else {
			var v37 := DC13(v20);
			var v38: map<array<bool>, set<int>> := map[v37.cf17 := {v24[safeIndex(121, v24.Length)]}];
			var v39: seq<string> := ["y", v25];
			var v40: set<int> := {v24[safeIndex(121, v24.Length)], |v39|, f22, v24[safeIndex(121, v24.Length)]};
			v38 := v38[v20 := v40];
			var v41: map<int, set<int>> := map[f22 := v40];
			v41 := v41[f22 := v40];
			v20[safeIndex(943, v20.Length)] := f16;
			v20[safeIndex(943, v20.Length)] := f16;
			var v43: seq<bool> := [!!f16];
			var v44 := DC5(v43);
			v20[safeIndex(943, v20.Length)] := if ((if (v20[safeIndex(943, v20.Length)] in v23) then v23[v20[safeIndex(943, v20.Length)]] else v20[safeIndex(943, v20.Length)]) !in v23) then fm12(set v42 : int | v42 in map[v24[safeIndex(121, v24.Length)] := f22] :: (safeModuloInt(v42, |(seq(abs(403), i3  => ('m')))|)), f16, f16, v44, globalState) || f16 else f16;
			var v45 := 'd';
			globalState.f1 := v45;
		}
		
		r0 := v24[safeIndex(121, v24.Length)];
	}
	method m3(p0: int, p1: int, p2: bool, p3: seq<bool>, globalState: GlobalState) returns (r0: array<array<int>>, r1: bool, r2: bool, r3: bool) {
		var i0 := 0;
		while (p1 > f22)
			decreases 100 - i0
		{
			if (i0 >= 100) {
				break;
			}
			
			i0 := i0 + 1;
			var v0 := 0x1d7;
			var v1: array<int> := new int[6];
			var v2: seq<array<int>> := [v1];
			v0 := |v2|;
			var v3: map<bool, bool> := map[p2 := p2];
			var v4: array<bool> := new bool[20];
			globalState.f10 := if (if (p2 in v3) then v3[p2] else f16) then v4 else v4;
			var v5: set<int> := {|(seq(abs(0xd2), i1  => ('q')))|, f22};
			var v6 := DC5([f16]);
			v3 := v3[fm12(v5, f16, f16, v6, globalState) := p2];
			v4[safeIndex(626, v4.Length)] := p2;
			v4[safeIndex(626, v4.Length)] := f16;
		}
		var v7 := "molh";
		var v8: multiset<bool> := multiset{p2};
		globalState.f15 := fm0(p1, v7 + v7, |v8|, globalState);
		var v9: array<int> := new int[24];
		var v10 := new C0(v9, f23[-322 := f16], "nqwjvqmg" + v7);
		globalState.f15 := p2;
		var v11 := 0x102;
		v11 := f22;
		for i2 := safeModuloInt(p1, f22) to safeModuloInt(0x295, v11) {
			var v12 := 'm';
			var v13 := DC6(v11, v12 in "jpe");
			var v14: map<bool, string> := map[p2 := v7];
			v13 := if (if (f16) then p2 else p2) then v13 else DC6(v10.fm8(i2, f16, f16, v14, globalState), p3[safeIndex(p0, |p3|)]);
			if ((true <== f16) || p2) {
				r1 := (if (f16) then p2 else p2) !in ([p2, f16] + p3);
				v10.f21[safeIndex(460, v10.f21.Length)] := p0;
				var v15: array<map<bool, bool>> := new map<bool, bool>[9](i3 => if (f16) then map[p2 := f16] else map[f16 := f16]);
				v15[safeIndex(228, v15.Length)] := map[f16 := f16];
				var v16: map<seq<bool>, bool> := map[p3 + p3 := f16];
				var v17: array<bool> := new bool[18];
				v17[safeIndex(904, v17.Length)] := f16;
				var v18: map<bool, bool> := map[f16 := p2];
				v11, v10.f21[safeIndex(460, v10.f21.Length)], v15[safeIndex(228, v15.Length)], v16, v17[safeIndex(904, v17.Length)] := f22, p0, (v18 + v18) + map[p2 := v10.fm3(p0, f16, globalState)], fm15(globalState), false;
				var v19: array<char> := new char[28](i4 => v12);
				v19[safeIndex(323, v19.Length)] := v12;
				var v20: map<bool, int> := map[v17[safeIndex(904, v17.Length)] := v10.f21[safeIndex(460, v10.f21.Length)]];
				var v21 := DC0("sxamriept" + v7);
				v19[safeIndex(323, v19.Length)], v11, v20, v21 := v12, v10.f21[safeIndex(460, v10.f21.Length)] * i2, v20, DC0(v7 + v7);
				var v22: seq<int> := [v10.f21[safeIndex(460, v10.f21.Length)], i2];
				var v23: seq<seq<int>> := [v22, v22, v22, v22, v22];
				var v24: set<bool> := {f16, v17[safeIndex(904, v17.Length)]};
				var v25: map<int, int> := map[|v24| := |{p2, p3[safeIndex(i2, |p3|)]}|];
				var v26: set<bool> := {v10.fm7(v23, f16, |v25|, globalState), p2, true};
				var v27: map<set<bool>, bool> := map[v26 := false];
				v27 := v27 + (v27 + fm16(p0, f16, globalState));
				var v28: T0 := new C1(f16);
				var v29: set<T0> := {v28};
				var v30 := DC14(v29);
				var v31: map<int, T0> := map[f22 := v28];
				var v32: array<set<T0>> := new set<T0>[18] [v29 * {v28, v28}, v29, v29, if (v28.f16) then v29 else v29, v29, v29, v29 + v29, v29, {v28}, {v28} + v29, v29, v29, v29, v29, v30.cf18, {v28} * {v28, v28}, {if (0xdc in v31) then v31[0xdc] else v28, v28}, v30.cf18 * v29];
				v32[safeIndex(969, v32.Length)] := {v28, v28};
				v32[safeIndex(969, v32.Length)] := v29 * (v29 + v29);
			} else {
				r1 := p2;
				var v33 := new C1(v10.fm3(f22, p2, globalState));
				var v34: array<bool> := new bool[20];
				var v35: multiset<array<bool>> := multiset{v34};
				var v36: set<bool> := {false};
				v11 := safeModuloInt(|v35|, fm14(v36, f22, !true, globalState));
				v34[safeIndex(736, v34.Length)] := p0 !in (set v37 : int | (0x383 <= v37) && (v37 < 0x2b) :: (v37 * |(seq(abs(0x1f8), i5  => (v11)))|));
				v34[safeIndex(736, v34.Length)] := f16;
				v34[safeIndex(736, v34.Length)] := f16;
			}
			
			v11 := v11;
			var v38 := DC0(seq(abs(-0x144), i6  => (v12)));
			v11, r1 := safeModuloInt(p0, DC6(-p0, f16).cf8) * |v38.cf0|, f16 ==> f16;
		}
		var v39: array<array<int>> := new array<int>[11] [v9, v10.f21, if (p2) then v9 else v9, v9, v9, v9, v10.f21, DC8(v10.f21).cf11, v10.f21, v10.f21, v9];
		r0 := v39;
		r1 := f16;
		r2 := true <==> p2;
		r3 := !f16;
	}
}

class C3 extends T0, T1, T2 {
	var f19 : bool
	const f20 : map<int, seq<bool>>
	constructor (f19 : bool, f20 : map<int, seq<bool>>, f16 : bool, f17 : map<int, bool>, f18 : string) {
		this.f19 := f19;
		this.f20 := f20;
		this.f16 := f16;
		this.f17 := f17;
		this.f18 := f18;
	}
	
	function fm2(p0: bool, p1: bool, globalState: GlobalState): set<bool> {
		({f16} - {f19, f16, f19, f16}) - ({if (|f17| in f17) then f17[|f17|] else f19, f16, f19, f19} + {f16})
	}
	function fm3(p0: int, p1: bool, globalState: GlobalState): bool {
		f19
	}
	function fm4(p0: seq<seq<int>>, p1: bool, globalState: GlobalState): bool {
		true
	}
	function fm5(p0: bool, p1: bool, globalState: GlobalState): int {
		421
	}
	function fm6(p0: bool, p1: D0, p2: bool, p3: int, globalState: GlobalState): bool {
		!(|(if (f19) then multiset{0x224} else multiset{246, |map[f18 := |multiset{f16}|]|})| >= (|multiset{f16, f16}| * -0xd2))
	}
	method m0(globalState: GlobalState) returns (r0: int) {
		var v0 := 0x2dc;
		var v1 := DC1(v0);
		var v2 := 'k';
		var v3: set<char> := {v2};
		var v4: map<set<char>, char> := map[v3 := v2];
		var v5: map<bool, int> := map[f19 := |v4|];
		var v6: seq<int> := [|v5|, 805];
		var v7: seq<seq<int>> := [v6];
		var v8 := DC4(v6);
		var v9: seq<seq<int>> := [v6, v7[safeIndex(v0, |v7|)], v8.cf6];
		var v10: seq<bool> := [f16 && f19, v0 == -v1.cf1, fm4(v7, !f16, globalState)];
		var v11 := DC5(v10);
		v10 := v11.cf7;
		if (f16 || true) {
			var v12: array<seq<map<bool, int>>> := new seq<map<bool, int>>[23];
			var v13: seq<map<bool, int>> := [v5, v5];
			v12[safeIndex(507, v12.Length)] := v13;
			v12[safeIndex(507, v12.Length)] := seq(abs(0x2f6), i0  => (v5));
			r0 := -fm5(f16, true <==> f16, globalState);
			r0 := -(fm5(f19, f19, globalState) + v0);
			if (!f19) {
				var v14: map<int, string> := map[v0 := f18];
				v14 := v14[|f18| + -540 := f18];
				var v15: map<bool, bool> := map[if (f16) then true else f19 := false ==> f19];
				f19 := if ((if (f19) then f16 else f19) in v15) then v15[if (f19) then f16 else f19] else f16;
				var v16: set<string> := {seq(abs(0x339), i1  => ('s')), f18[safeIndex(v0, |f18|) := v2]};
				v16 := v16;
				r0 := v0 * v0;
				r0 := v6[safeIndex(fm5(f16, true, globalState) * v0, |v6|)];
			} else {
				var v17: array<int> := new int[17];
				var v18 := new C0(v17, f17 + f17[v0 := f16], seq(abs(0xfd), i2  => (v2)));
				var v19 := DC6(v0, f16);
				var v20: array<bool> := new bool[12] [f16, !f19, !fm4(v9, !v19.cf9, globalState), f19, f19, v19.cf9, f16, f19, false, f19, f19, f19];
				var v21: seq<array<bool>> := [v20];
				globalState.f3 := (if (f16) then v20 else v20) !in v21;
				v20[safeIndex(167, v20.Length)] := v18.fm4(v7, f19, globalState);
				v20[safeIndex(167, v20.Length)] := f16;
				v0 := v0;
				var v22: map<array<bool>, C0> := map[v20 := v18];
				v22 := v22[v20 := v18];
			}
			
			globalState.f15 := f16;
		} else {
			v0 := 629 - 0x2ab;
			var v23: array<int> := new int[13] [v0, v0, |f18|, v0, v0, v0, |f18|, v0, v0, v0, v0, v1.cf1, v0];
			var v24: T1 := new C0(v23, f17, f18);
			v24 := v24;
			v23[safeIndex(232, v23.Length)] := v0;
			globalState.f2, v23[safeIndex(232, v23.Length)] := f16, v0;
			r0 := -(safeModuloInt(|v10|, 285) + v0);
			var v25: array<seq<bool>> := new seq<bool>[23](i3 => v10);
			var v26: map<seq<int>, array<seq<bool>>> := map[v6 + v6 := v25];
			v26 := v26[v6 := v25];
		}
		
		var v27: array<int> := new int[7];
		var v28: C0 := new C0(v27, f17, "epit");
		var v29: multiset<C0> := multiset{v28};
		var v30 := DC6(v0, f19);
		globalState.f2 := (if (f16) then v0 else if (v28 in v29) then v29[v28] else 454) == v30.cf8;
		var i4 := 0;
		while (f19)
			decreases 100 - i4
		{
			if (i4 >= 100) {
				break;
			}
			
			i4 := i4 + 1;
			var v31: map<int, string> := map[v0 := f18];
			var v32: seq<set<array<int>>> := [{v27, v28.f21, v27, v28.f21, v27}];
			var v33: map<int, set<array<int>>> := map[|v31| := v32[safeIndex(v0, |v32|)]];
			var v34: seq<string> := [f18, "iykadirea"];
			var v35: set<array<int>> := {v28.f21};
			v33 := v33[safeDivisionInt(|v34|, v0) := v35 + v35];
			globalState.f2 := v0 != v0;
			globalState.f15 := |(fm9(f16, f19, fm5(f19, fm0(|f17|, f18, v0, globalState), globalState), "pxyjybxjm", globalState) + v5)| > (v0 * v0);
			v0 := v0;
		}
		var v36: array<array<int>> := new array<int>[5] [v28.f21, v28.f21, v27, v27, v27];
		v36[safeIndex(707, v36.Length)] := v27;
		var v37 := DC8(v28.f21);
		v36[safeIndex(707, v36.Length)] := v37.cf11;
		var v38: seq<string> := [f18, "ppyyofl"];
		var v39: array<string> := new string[3] [f18, v38[safeIndex(v0, |v38|)], f18];
		v39[safeIndex(626, v39.Length)] := fm10(f19, globalState);
		var v40: map<bool, string> := map[f16 := f18];
		v39[safeIndex(626, v39.Length)] := (if (f19 in v40) then v40[f19] else "itetgyy") + f18;
		r0 := v6[safeIndex(v0, |v6|)] + safeModuloInt(v0, -0x349);
	}
	method m1(p0: map<bool, multiset<int>>, globalState: GlobalState) returns (r0: int) {
		var i0 := 0;
		while (false)
			decreases 100 - i0
		{
			if (i0 >= 100) {
				break;
			}
			
			i0 := i0 + 1;
			var v0 := DC0(f18);
			var v1, v2 := m2(f16, v0, f16, globalState);
			globalState.f1 := 'a';
			var v3 := 0x3bf;
			var v4: multiset<int> := multiset{v3};
			var v5: multiset<int> := multiset{|v4|, |[v3, v3]|, v3, v3};
			var v6: seq<int> := [-v3, v3];
			r0 := v3 - (v3 + (if (|v6| in v5) then v5[|v6|] else v3));
			var v7: array<char> := new char[24];
			var v8 := 'k';
			v7[safeIndex(383, v7.Length)] := v8;
			v7[safeIndex(383, v7.Length)] := 'd';
		}
		var v9 := DC0(f18);
		var v10: seq<D0> := [v9, v9];
		var v11 := 685;
		var v12: map<int, int> := map[v11 := v11];
		var v13: seq<int> := [--v11, |v12|];
		var v14: map<bool, seq<D0>> := map[f16 || f19 := v10[safeIndex(|v13|, |v10|) := v9]];
		v14 := fm11(globalState) + v14;
		var v15: array<int> := new int[8] [v11, v11, v11, v11, v11, v11, v11, |f18|];
		var v16 := DC8(v15);
		var v17 := DC10(v16);
		match (v17) {
			case DC9() =>
				var v18, v19 := m2(fm4([seq(abs(0x38b), i1  => (v11)), v13, v13], f16, globalState), v9, f16, globalState);
				v15[safeIndex(396, v15.Length)] := v11;
				v15[safeIndex(396, v15.Length)] := safeDivisionInt(v11, v11) + (v11 + -v11);
				var v20: seq<bool> := [f16, f16, f19];
				var v21: array<bool> := new bool[10] [v15[safeIndex(396, v15.Length)] >= v11, f16, f19, !v18, !f19, v18, f16, -|multiset{v11, 0x21, v11, 0x46, v15[safeIndex(396, v15.Length)]}| >= |v20|, false <== !v18, true];
				v21[safeIndex(16, v21.Length)] := f19;
				var v22 := 'k';
				globalState.f3, globalState.f1, v21[safeIndex(16, v21.Length)] := if (map[|v13| := [f19]] == f20) then v18 else f16 && f16, v22, fm3(-|([v22] + f18)|, f19, globalState);
				var v23: array<string> := new string[19](i2 => f18 + f18);
				v23 := v23;
			case DC8(cf11) =>
				var v24 := new C0(v15, f17, f18 + f18);
				match (v17.(cf12 := v16)) {
					case DC9() =>
						globalState.f15 := f16;
						f19 := false;
						var v25: C0 := new C0(v24.f21, f17, f18);
						v25 := v24;
						globalState.f15 := false;
					case DC8(cf11) =>
						var v26: array<map<int, bool>> := new map<int, bool>[22](i3 => f17);
						v26[safeIndex(5, v26.Length)] := f17[v11 := f16] + f17;
						var v28: map<bool, int> := map[true := |(map v27 : int | v27 in v13 :: (safeModuloInt(v27, |f17|)) := ('u'))|];
						var v29: map<bool, string> := map[f19 := f18];
						v11, v26[safeIndex(5, v26.Length)] := v24.fm8(v24.fm8(|v13|, fm6(f16, DC0(f18), f19, v11, globalState), f19, map[f19 := f18], globalState), f16, fm3(|v28|, f16, globalState), v29, globalState), f17;
						var v30: set<bool> := {f19};
						var v31: seq<set<bool>> := [v30];
						v31 := v31;
						v26[safeIndex(5, v26.Length)] := v26[safeIndex(5, v26.Length)][-(-0x2d1 + 0x38c) := !f16];
						v11 := --(v11 - -|f18|);
					case DC10(cf12) =>
						var v32: set<bool> := {f16};
						var v33: map<int, bool> := map[|v32| + v13[safeIndex(v11, |v13|)] := f16 && f19];
						v33 := v33;
						var v34: C0 := new C0(v24.f21, v33, f18 + f18);
						v34 := v34;
						var v35: array<D3> := new D3[3](i4 => DC5([f16]));
						var v36: seq<bool> := [f19];
						var v37 := DC5(v36);
						v35[safeIndex(850, v35.Length)] := v37;
						var v38: map<string, bool> := map[f18 := f19];
						var v39 := 'x';
						v35[safeIndex(850, v35.Length)] := if (if (f18[safeIndex(v11, |f18|) := v39] in v38) then v38[f18[safeIndex(v11, |f18|) := v39]] else f19) then v37 else DC5(v36);
						r0 := v11;
				}
				
				var v40: map<int, map<int, int>> := map[v11 := v12];
				var v41: map<bool, int> := map[f19 := v11];
				var v42: seq<map<int, int>> := [v12, (if (|v41| in v40) then v40[|v41|] else map[v11 := v11]) + v12];
				v12 := v42[safeIndex(v11, |v42|)];
				globalState.f2 := if (f19) then f16 else f16;
			case DC10(cf12) =>
				v11 := 0x2bc + v13[safeIndex(v11, |v13|)];
				var v43: map<bool, bool> := map[f16 := f16];
				var v44: T0 := new C2(573, f17, f16);
				var v45: multiset<T0> := multiset{v44, v44};
				var v46: seq<bool> := [f16];
				var v47: array<bool> := new bool[28] [true, !(v43 != v43), v11 > -(if (v44 in v45) then v45[v44] else 678), v46[safeIndex(v11, |v46|)], f19, f16 && v44.f16, f19, v44.f16, v44.f16, f16, !v44.f16 || v44.f16, f16, |f18| > 74, v44.f16, f16, v44.f16, v44.f16, f19, f19, f16, f16, !v44.f16, f19, v44.f16, v44.f16, true, v44.f16, f16];
				v47[safeIndex(97, v47.Length)] := !f19;
				var v48: set<bool> := {f19};
				v47[safeIndex(97, v47.Length)] := !(v48 == v48);
				var v49 := "au";
				v15[safeIndex(656, v15.Length)] := v11;
				var v50: C1 := new C1(f19);
				var v51: multiset<int> := multiset{v11 - 0x2b0, safeDivisionInt(|f18|, |map[v11 := v50]|), v11};
				v49, v15[safeIndex(656, v15.Length)], v11, v46, v51 := "kx", --|{v15}|, v13[safeIndex(0x332, |v13|)], v46, v51 + v51;
				v47[safeIndex(97, v47.Length)] := f19;
		}
		
		r0, r0 := v11, -0x73;
		var v52: multiset<int> := multiset{-v11, v11, v11};
		v52 := (if (f19) then v52 else v52) * v52;
		var v53: array<D7> := new D7[11];
		var v54 := DC7(true);
		var v55: seq<D3> := [v54, v54, v54, v54, v54];
		var v56: C1 := new C1(f16);
		var v57 := DC15(v55, v11, v56);
		var v58 := DC16(v57);
		v53[safeIndex(48, v53.Length)] := v58.(cf22 := v57);
		v53[safeIndex(48, v53.Length)], r0 := v58, v11 * 0x3a;
		var v59: array<bool> := new bool[28] [f19, f19, f19, f16, true, !v56.fm17(globalState), f16, f16, f19, f19, f16, !f16, f16, true, f19, false, f16, !f16, f16, !f19, f19, f19, f16, f16, false, false, f16, f16];
		var v60: map<bool, int> := map[f19 := -v11];
		var v61: map<map<bool, int>, array<bool>> := map[v60 := v59];
		var v62: set<int> := {v11, v11, v11};
		var v63: seq<array<bool>> := [v59, v59, if ((map[f19 := v11])[f16 := |v62|] in v61) then v61[(map[f19 := v11])[f16 := |v62|]] else v59, v59];
		r0 := fm5(true, fm3(v11, f16, globalState), globalState) - (v11 + |v63|);
	}
	method m2(p0: bool, p1: D0, p2: bool, globalState: GlobalState) returns (r0: bool, r1: multiset<bool>) {
		var v0 := -714;
		v0 := v0;
		var v1 := new C1(!f19);
		var v2 := 'o';
		globalState.f1 := v2;
		if (p0) {
			globalState.f2 := p0;
			var v3: seq<int> := [v0, |(seq(abs(0x1cc), i0  => (f18[safeIndex(v0, |f18|)])))|];
			var v4: array<bool> := new bool[22](i1 => false);
			var v5: multiset<int> := multiset{|f18|, v0, |v3[safeIndex(v0, |v3|) := |map[v4 := f16]|]|};
			globalState.f2 := fm6(!p2, p1, v5 != multiset{-82}, v0, globalState);
			var v6: array<int> := new int[20](i2 => safeModuloInt(i2, v0));
			var v7: map<int, seq<int>> := map[v0 := v3];
			var v8 := DC1(v0);
			var v9 := DC3(v8);
			var v10 := DC1(v0);
			var v11: multiset<bool> := multiset{f19};
			var v12: map<multiset<bool>, bool> := map[v11 := p2];
			var v13: set<bool> := {p0, f19};
			r1, globalState.f1, v6, v7 := multiset{p2, f16}, fm21(p0, false, v9.(cf5 := DC2(f16, p0, f16)), v10, globalState), v6, (v7 + map[|f18| := [0x25a]]) + fm22(p0, if (v11[p0 := abs(fm14(v13, v0, !f16, globalState))] in v12) then v12[v11[p0 := abs(fm14(v13, v0, !f16, globalState))]] else true, globalState);
			var v14: map<int, bool> := map[|v3| := v3 in multiset{v3, v3}];
			v14 := v14[v0 := f16];
			var v15 := "epgkmbx";
			v15 := (v15 + "cato") + v15;
		} else {
			var v16 := v1.m0(globalState);
			var v17: array<char> := new char[11];
			v17 := v17;
			var v18: array<int> := new int[9](i3 => i3 * v16);
			v18[safeIndex(473, v18.Length)] := safeDivisionInt(v16, v0);
			v18[safeIndex(473, v18.Length)] := v0;
			if (p2 || (if (p2) then f19 else f19)) {
				var v19 := new C1(p2);
				var v20 := DC7(f16);
				var v21: seq<D3> := [v20, v20];
				var v22: seq<string> := [f18, f18];
				var v23 := DC15(v21, |v22|, v1);
				var v24 := DC16(v23);
				v24 := v24.(cf22 := v23);
				var v25: multiset<C1> := multiset{v19, if (p2) then v1 else v19, v1, v1, v1};
				var v26: set<bool> := {!p0};
				var v27: seq<int> := [|f18|];
				var v28 := DC6(0x2f4, !f16);
				var v29: set<int> := {v18[safeIndex(473, v18.Length)], -|(v26 + v19.fm2(fm4([v27, v27], p0, globalState), v28.cf9, globalState))|, -v18[safeIndex(473, v18.Length)]};
				r0, v25, v29, globalState.f15 := p0, v25, v29, !false;
				globalState.f2 := (true <==> !true) <== f19;
				var v30 := DC15(v21 + v21, v27[safeIndex(v18[safeIndex(473, v18.Length)], |v27|)], v19);
				var v31: array<bool> := new bool[17];
				var v32: C2 := new C2(v16, f17, p0);
				var v33: seq<bool> := [p2, f16];
				var v34: map<seq<bool>, C2> := map[v33[safeIndex(v32.f22, |v33|) := f19] := v32];
				var v35: set<C2> := {v32};
				var v36: map<string, bool> := map[f18 := p2];
				v30, globalState.f10, v0, globalState.f15, r0 := v30, v31, safeDivisionInt(v0 + v16, v0 + 453), (if (f16) then v32 else if ([f19, f16, p2, f19] in v34) then v34[[f19, f16, p2, f19]] else v32) in ({v32, v32} - v35), if (f18 in v36) then v36[f18] else |v26| !in {v18[safeIndex(473, v18.Length)]};
			} else {
				r0 := f19;
				var v37 := DC12(p0, -109, v2);
				var v38: map<map<int, bool>, bool> := map[f17 := f16];
				var v39: T0 := new C2(v18[safeIndex(473, v18.Length)] - v37.cf15, f17, v38 == v38);
				v39 := v39;
				var v40: array<seq<char>> := new seq<char>[5];
				v40[safeIndex(439, v40.Length)] := f18;
				v40[safeIndex(439, v40.Length)] := p1.cf0 + f18;
				var v41 := new C1(v39.f16);
				var v42: array<bool> := new bool[2];
				v42[safeIndex(288, v42.Length)] := f16;
				v42[safeIndex(288, v42.Length)] := f19 || f16;
			}
			
			var v43 := "xkcsbx";
			var v44: map<int, string> := map[fm14({p2, p2}, -v0, f19, globalState) := seq(abs(0x7e), i4  => (v2))];
			v43 := if (v0 in v44) then v44[v0] else f18;
		}
		
		var v45 := DC2(p0, f19, false);
		globalState.f15 := v45.cf3;
		var v46 := DC1(v0);
		var v47: array<C2> := new C2[13];
		var v48: C2 := new C2(v0, f17, false);
		v47[safeIndex(268, v47.Length)] := v48;
		var v49: array<D3> := new D3[21];
		var v50 := DC7(f16);
		v49[safeIndex(906, v49.Length)] := v50;
		var v51: set<bool> := {p0};
		var v52: map<bool, int> := map[f19 := v48.f22];
		var v53: map<bool, map<bool, int>> := map[f19 := v52];
		var v54: array<bool> := new bool[2] [p2, fm14(v51, |v53|, f19, globalState) == 0x1fa];
		v46, v47[safeIndex(268, v47.Length)], v49[safeIndex(906, v49.Length)], globalState.f10 := match v50 {
			case DC6(cf8, cf9) => v46
			case DC7(cf10) => DC1(v0)
			case DC5(cf7) => v46
		}, v48, DC7(f19), v54;
		var v55: set<int> := {v48.f22};
		var v56: seq<bool> := [true];
		var v57 := DC5(v56);
		r0 := !v48.fm12(v55, p0, f16, v57, globalState);
		var v58: multiset<bool> := multiset{f16};
		r1 := v58;
	}
}

function fm0(p0: int, p1: string, p2: int, globalState: GlobalState): bool {
	(if (!false) then map[--0x34 := "te"] else map[0x4d := "ipcy"]) != map[0x28a := "hejdc"]
}
function fm1(globalState: GlobalState): D0 {
	DC0("pbjlyyx")
}
function fm9(p0: bool, p1: bool, p2: int, p3: string, globalState: GlobalState): map<bool, int> {
	match DC9() {
		case DC9() => map[!false := |DC0("ysfi").cf0|]
		case DC8(cf11) => map[!true := 0x197]
		case DC10(cf12) => map[true := -0x33]
	}
}
function fm10(p0: bool, globalState: GlobalState): string {
	"lg" + "fqnae"
}
function fm11(globalState: GlobalState): map<bool, seq<D0>> {
	map[|"rsagxcxq"| < |[false]| := seq(abs(-682), i0  => (DC0(seq(abs(30), i1  => ('i')))))]
}
function fm14(p0: set<bool>, p1: int, p2: bool, globalState: GlobalState): int {
	safeDivisionInt(0x1e5, |multiset{---|[true]|}|) + |(DC5([false, true]).cf7 + [true, false, !false, !true])|
}
function fm15(globalState: GlobalState): map<seq<bool>, bool> {
	map[[true, DC2(false, true, !true).cf2] + [false] := |multiset{|"rfcerbvjj"|, |"xnwqeri"|}| < -|multiset{|(map v0 : int | (-76 <= v0) && (v0 < 0x1b6) :: (safeModuloInt(v0, 0x1e9)) := (map[|map[false := false]| := false]))|}|]
}
function fm16(p0: int, p1: bool, globalState: GlobalState): map<set<bool>, bool> {
	match DC17(map[0x36a := [!true]]) {
		case DC18(cf24, cf25) => map[{false, true} := false] + map[{true, true} := true]
		case DC17(cf23) => if (false) then map[{false} := false] else map[{false} := DC6(|[|[478]|, |map[-0x251 := false]|]|, false).cf9]
		case DC19(cf26) => map[{false, true} := !!true]
	}
}
function fm19(p0: map<char, string>, globalState: GlobalState): string {
	"qcvkq"
}
function fm20(p0: int, globalState: GlobalState): set<int> {
	{if (true) then |{'e'}| else |{|(seq(abs(0x100), i0  => ('i')))|}|, safeModuloInt(-558, 0x22e)}
}
function fm21(p0: bool, p1: bool, p2: D1, p3: D1, globalState: GlobalState): char {
	match DC3(DC3(DC2(true, !false, true))) {
		case DC2(cf2, cf3, cf4) => 'p'
		case DC1(cf1) => 's'
		case DC3(cf5) => 'd'
	}
}
function fm22(p0: bool, p1: bool, globalState: GlobalState): map<int, seq<int>> {
	map[0x15 := (seq(abs(0x200), i0  => (-0x66))) + (seq(abs(0x390), i1  => (|[|map[0x2de := !true]|, |{true}|, 0x7a, -|map[true := true]|, |multiset(seq(abs(916), i2  => (|[|['k', 'r', 'h']|]|)))|]|)))]
}
function fm23(p0: bool, p1: int, globalState: GlobalState): multiset<string> {
	multiset(DC23(["guk"]).cf31 + ["ditxkh", "iamed"]) + multiset{"hfx"}
}
function fm24(p0: bool, p1: int, globalState: GlobalState): seq<bool> {
	[false || false]
}
function fm25(p0: D3, globalState: GlobalState): map<int, bool> {
	map[|({true, false} * {false, true})| := !(map[true := true] != map[!true := false])]
}
function fm26(p0: bool, p1: int, p2: int, p3: bool, globalState: GlobalState): seq<int> {
	[|multiset{647}|, 0x1d2, |{|[false, true]|}|, 0x109, -0xe0] + [|{false}|, |map[!!false := false]|]
}
function fm27(p0: int, p1: bool, p2: bool, p3: bool, globalState: GlobalState): D5 {
	DC12(!true <==> true, 762, 'j')
}
function fm28(p0: string, p1: string, p2: bool, globalState: GlobalState): seq<D5> {
	match DC7(true) {
		case DC6(cf8, cf9) => [DC12(cf9, cf8, 'n'), DC12(false, cf8, 'k'), DC12(cf9, cf8, 'c')]
		case DC7(cf10) => [DC12(cf10, 0x348, 'x'), DC12(false, -992, 'g')] + [DC12(cf10, |map[cf10 := cf10]|, 'v'), DC12(cf10, 0x3b2, 'r')]
		case DC5(cf7) => [DC12(false, |multiset{false}|, 'j')]
	}
}
function fm29(p0: bool, globalState: GlobalState): set<string> {
	({"ynwsuwao", "duk"} * {"ipyhb"}) - (set v0 : string | v0 in [seq(abs(815), i0  => ('c'))] :: (v0))
}
method m4(p0: bool, globalState: GlobalState) returns (r0: bool) {
	var v0 := 530;
	var v1 := "yungiof";
	for i0 := v0 to |v1| {
		globalState.f15 := fm0(if (p0) then v0 else v0, v1, safeDivisionInt(i0, v0), globalState);
		var v2: seq<string> := [v1, v1, v1];
		var v3: set<bool> := {p0, p0, p0, false};
		var v4: array<int> := new int[7] [i0 - 0x85, i0, |v2|, |v3|, v0, i0, i0];
		v4[safeIndex(796, v4.Length)] := safeModuloInt(i0, i0);
		v4[safeIndex(796, v4.Length)], v0 := -0x131, 0x1ae;
		if (p0 <== p0) {
			var v5: array<bool> := new bool[11];
			var v6 := 'l';
			var v7: map<int, char> := map[i0 := v6];
			v5[safeIndex(284, v5.Length)] := v7 != v7;
			v5[safeIndex(284, v5.Length)] := p0;
			v5[safeIndex(284, v5.Length)] := p0;
			var v8: map<int, bool> := map[-v0 := p0];
			v8 := v8[v4[safeIndex(796, v4.Length)] := if (p0) then p0 else p0];
			globalState.f3 := !(p0 <==> v5[safeIndex(284, v5.Length)]);
			v4[safeIndex(796, v4.Length)] := v0;
		} else {
			var v9: map<int, bool> := map[v4[safeIndex(796, v4.Length)] := fm0(i0, v1, v0, globalState)];
			var v10: C0 := new C0(v4, v9, v1 + v1);
			v10 := new C0(v4, (map v11 : int | (0x1c2 <= v11) && (v11 < 0x219) :: (v11 * 701) := (false))[i0 := p0], v1);
			var v12: array<string> := new seq<char>[8](i1 => (seq(abs(0x6f), i2  => (DC12(p0, v4[safeIndex(796, v4.Length)], 'h').cf16)))[safeIndex(i0, |(seq(abs(0x6f), i2  => (DC12(p0, v4[safeIndex(796, v4.Length)], 'h').cf16)))|) := 'q']);
			var v13 := 'a';
			v12[safeIndex(893, v12.Length)] := v1[safeIndex(0x157, |v1|) := v13];
			v12[safeIndex(893, v12.Length)] := v1;
			globalState.f3 := p0;
			v4[safeIndex(796, v4.Length)] := v4[safeIndex(796, v4.Length)] * (if (p0) then v0 else i0);
			v4[safeIndex(796, v4.Length)] := |(if (p0 <==> p0) then if (p0) then v12[safeIndex(893, v12.Length)] else v12[safeIndex(893, v12.Length)] else (v12[safeIndex(893, v12.Length)] + v1)[safeIndex(-v0, |(v12[safeIndex(893, v12.Length)] + v1)|) := v13])|;
		}
		
		v4[safeIndex(796, v4.Length)] := v0;
	}
	globalState.f15 := v0 > v0;
	var v14: map<int, int> := map[v0 := |multiset{v0}|];
	var v15: map<int, bool> := map[|v14| := p0];
	var v16: T0 := new C2(v0, v15, p0);
	var v17: set<T0> := {v16, v16, v16, v16, v16};
	var v18 := DC14(v17);
	var v19 := DC16(v18);
	var v20: array<D7> := new D7[22] [v19.(cf22 := v18), v19, v19, v19.(cf22 := v18), v19, if (p0) then v19 else v19, v19, v19, v19, v19, v19, v19, v19, v19, v19, v19, v19, v19, v19, v19, v19, v19];
	v20[safeIndex(320, v20.Length)] := if (!false) then v19 else v19.(cf22 := v18);
	v20[safeIndex(320, v20.Length)] := v19;
	var v21: multiset<bool> := multiset{v16.f16, p0, v16.f16, true};
	var v22: map<map<multiset<bool>, int>, int> := map[map[v21 := v0] := v0];
	v22 := v22[map[v21 := v0] := v0];
	var i3 := 0;
	while (v0 != 0x227)
		decreases 100 - i3
	{
		if (i3 >= 100) {
			break;
		}
		
		i3 := i3 + 1;
		var v23 := DC10(DC9());
		match (v23) {
			case DC9() =>
				var v24: array<C2> := new C2[8];
				var v25: seq<bool> := [p0];
				var v26 := DC20(v16);
				var v27: map<int, T0> := map[v0 := v26.cf27];
				v24, v0, v0, v16 := v24, |v25|, safeModuloInt(safeDivisionInt(0x125, v0), v0), if (0x147 in v27) then v27[0x147] else v16;
				v0 := v0;
				v25 := fm24(p0, v0, globalState);
				var v29: multiset<map<int, int>> := multiset{v14, v14 + v14, map v28 : int | (0xbb <= v28) && (v28 < 0x2cd) :: (v28 + |multiset(seq(abs(0x3c3), i4  => (|[v0, v0, v0, 0x213, v0]|)))|) := (if (p0 in v21) then v21[p0] else v0)};
				v29 := multiset{v14};
			case DC8(cf11) =>
				var v30: seq<array<int>> := [cf11, cf11, cf11];
				v30 := v30;
				var v31: T2 := new C0(cf11, v15 + v15, v1);
				v31 := v31;
				v0 := v0 + v0;
				var v32: set<string> := {v1 + v31.f18};
				v32 := fm29(v16.f16 <==> v16.f16, globalState);
			case DC10(cf12) =>
				globalState.f15 := v16.f16;
				var v33: array<int> := new int[2] [v0, v0];
				var v34: C0 := new C0(v33, v15, seq(abs(0x39d), i5  => ('v')));
				var v35: seq<C0> := [v34, v34];
				var v36: array<C0> := new C0[6] [v35[safeIndex(v0, |v35|)], v35[safeIndex(v0, |v35|)], v34, v34, v34, v34];
				v36 := v36;
				var v37: array<bool> := new bool[22];
				var v38 := 'e';
				var v39: map<array<bool>, char> := map[v37 := v38];
				var v40: array<map<array<bool>, char>> := new map<array<bool>, char>[8] [v39, map[v37 := v38], v39, v39 + map[v37 := v38], v39, v39, v39, v39 + v39];
				v40[safeIndex(949, v40.Length)] := v39[v37 := v38];
				v40[safeIndex(949, v40.Length)] := v39;
				v37[safeIndex(225, v37.Length)] := !v16.f16;
				v37[safeIndex(225, v37.Length)] := -v0 != |[--0x83]|;
		}
		
		var v41: map<map<int, bool>, int> := map[v15 := v0];
		var v42: map<bool, int> := map[v16.f16 := v0];
		var v43: set<bool> := {v16.f16, v16.f16, p0, v16.f16, p0};
		var v44: map<bool, bool> := map[fm0(-v0, v1, v0, globalState) := !p0];
		var v45: array<int> := new int[5] [|v41|, |v42|, v0, fm14(v43, v0, if (!fm0(v0, v1, v0, globalState) in v44) then v44[!fm0(v0, v1, v0, globalState)] else v16.f16, globalState), v0];
		v45[safeIndex(70, v45.Length)] := v0;
		v45[safeIndex(70, v45.Length)] := v0;
		var v46: array<array<bool>> := new array<bool>[23];
		var v47: map<bool, array<array<bool>>> := map[v16.f16 := v46];
		v46 := if (v16.f16 in v47) then v47[v16.f16] else v46;
		var v48: C0 := new C0(v45, v15, v1);
		var v49: map<C0, array<int>> := map[v48 := v45];
		match (DC8(if (v48 in v49) then v49[v48] else v45)) {
			case DC9() =>
				v45[safeIndex(70, v45.Length)] := v0;
				var v50: array<seq<int>> := new seq<int>[8];
				var v51: seq<bool> := [v16.f16, v16.f16, v16.f16];
				var v52: multiset<int> := multiset{v0, v45[safeIndex(70, v45.Length)], v45[safeIndex(70, v45.Length)]};
				var v53: seq<int> := [|v52|];
				v50[safeIndex(669, v50.Length)] := ([|v51|, v0, v0, v0, v45[safeIndex(70, v45.Length)]] + v53)[safeIndex(-|v1|, |([|v51|, v0, v0, v0, v45[safeIndex(70, v45.Length)]] + v53)|) := v45[safeIndex(70, v45.Length)]];
				v50[safeIndex(669, v50.Length)] := v53;
				globalState.f15 := v48.fm3(safeModuloInt(v45[safeIndex(70, v45.Length)], v0), v16.f16, globalState);
				var v54 := new C1(false);
			case DC8(cf11) =>
				v0 := 511;
				globalState.f3, v45[safeIndex(70, v45.Length)] := (if (false) then v16.f16 else v48.fm4([seq(abs(844), i6  => (|{v0}|))], !v16.f16, globalState)) ==> v16.f16, --v45[safeIndex(70, v45.Length)];
				var v55: array<D4> := new D4[11](i7 => DC9());
				var v56: seq<array<D4>> := [v55, v55, v55];
				v55 := v56[safeIndex(v0, |v56|)];
				var v57: C2 := new C2(v0, map[v0 := v16.f16], v16.f16);
				var v58: map<C2, bool> := map[v57 := v45[safeIndex(70, v45.Length)] >= v45[safeIndex(70, v45.Length)]];
				globalState.f15 := if (v57 in v58) then v58[v57] else if (v16.f16) then v16.f16 else !v16.f16;
			case DC10(cf12) =>
				v0 := v45[safeIndex(70, v45.Length)];
				v0 := v0;
				v45[safeIndex(70, v45.Length)] := -110;
				globalState.f2 := v16.f16;
		}
		
	}
	var v59: array<map<C0, char>> := new map<C0, char>[7];
	var v60: map<bool, array<map<C0, char>>> := map[true := v59];
	var v61: array<array<map<C0, char>>> := new array<map<C0, char>>[13] [v59, v59, v59, v59, v59, v59, if (v16.f16 in v60) then v60[v16.f16] else v59, v59, v59, v59, v59, v59, v59];
	v61[safeIndex(163, v61.Length)] := v59;
	var v62: array<set<array<bool>>> := new set<array<bool>>[19];
	var v63: array<bool> := new bool[28];
	var v64: set<array<bool>> := {v63};
	v62[safeIndex(960, v62.Length)] := v64;
	var v65 := DC21(v59);
	v61[safeIndex(163, v61.Length)], v62[safeIndex(960, v62.Length)] := if (p0) then v59 else v65.cf28, v64 * (v64 * v64);
	var v66: map<bool, bool> := map[p0 := p0];
	r0 := if ((if (!!true) then v16.f16 else p0) in v66) then v66[if (!!true) then v16.f16 else p0] else v16.f16;
}
method Main() {
	var v0 := -0xfb;
	var v1 := true;
	var v2: map<int, bool> := map[v0 := v1];
	var v3: array<int> := new int[5] [|"tqued"|, v0, v0, v0, v0];
	var v4: seq<array<int>> := [v3, v3, v3];
	var v5: array<bool> := new bool[15];
	var v6 := 'f';
	var v7: map<char, int> := map[v6 := 0x121];
	var v8: seq<map<char, int>> := [v7];
	var globalState := new GlobalState(false, 'v', true, true, true, 0x3c7, false, v2[v0 := v1], v4[safeIndex(-v0, |v4|)], -0x38c, v5, true, v8, v5, false, true);
	var v9: seq<string> := [seq(abs(0x6a), i0  => (v6))];
	v9 := seq(abs(0x17f), i1  => ("xevkbiy"));
	v1 := v1 <==> v1;
	var v10: map<bool, bool> := map[v1 := v1];
	v10 := v10[v1 := false];
	var i2 := 0;
	while (fm0(0x142, seq(abs(0x3ba), i3  => (v6)), 0x1f1 + v0, globalState))
		decreases 100 - i2
	{
		if (i2 >= 100) {
			break;
		}
		
		i2 := i2 + 1;
		var v11: map<int, int> := map[0x11b := safeModuloInt(v0, v0)];
		v11 := v11[safeDivisionInt(v0, v0) := -v0];
		var v12 := "vldubf";
		var v13 := DC0(v12);
		v0 := v0 + |(v13.(cf0 := seq(abs(0x360), i4  => ('a')))).cf0|;
		match (fm1(globalState)) {
			case DC0(cf0) =>
				v5[safeIndex(528, v5.Length)] := v1 || fm0(v0, cf0, v0, globalState);
				v5[safeIndex(528, v5.Length)] := v1;
				var v14: array<seq<bool>> := new seq<bool>[8](i5 => [v1]);
				var v15: seq<bool> := [v5[safeIndex(528, v5.Length)]];
				v14[safeIndex(262, v14.Length)] := v15;
				v14[safeIndex(262, v14.Length)] := [v1, v1, v5[safeIndex(528, v5.Length)] ==> v1];
				var v16: array<map<bool, bool>> := new map<bool, bool>[9](i6 => map[v1 := v5[safeIndex(528, v5.Length)]]);
				v16[safeIndex(891, v16.Length)] := v10;
				v16[safeIndex(891, v16.Length)] := if (|cf0| > |cf0|) then v10 else map[v1 := v1];
				var v17: map<int, map<int, bool>> := map[v0 := v2];
				var v18: seq<map<int, bool>> := [v2, map[|v12| := v5[safeIndex(528, v5.Length)]]];
				var v19 := DC1(v0);
				var v20 := DC3(v19);
				var v21: seq<int> := [v0, v0];
				var v22 := DC1(v21[safeIndex(v0, |v21|)]);
				var v23 := new C2(v0, (if (v0 in v17) then v17[v0] else v18[safeIndex(v0, |v18|)]) + v2, !(fm21(v1, !v5[safeIndex(528, v5.Length)], v20, v22, globalState) in cf0));
		}
		
		var v24: set<int> := {v0};
		v0 := |(v24 - v24)|;
	}
	var v25: multiset<array<bool>> := multiset{v5};
	var v26 := m4(|v25| > v0, globalState);
	var i7 := 0;
	while (v1)
		decreases 100 - i7
	{
		if (i7 >= 100) {
			break;
		}
		
		i7 := i7 + 1;
		var v27: set<bool> := {v26};
		if (|v27| != safeModuloInt(v0, v0)) {
			v3 := v3;
			v5[safeIndex(822, v5.Length)] := v26;
			var v28 := "bma";
			var v29 := DC0(v28);
			var v30 := DC0(v29.cf0);
			var v31: multiset<string> := multiset{v29.cf0, v9[safeIndex(v0, |v9|)]};
			var v32: map<array<int>, bool> := map[v3 := true];
			var v33: multiset<int> := multiset{v0, v0};
			var v34: map<bool, multiset<int>> := map[true := v33];
			var v35: seq<bool> := [v1, v1, true];
			var v36: map<seq<bool>, bool> := map[v35 := v1];
			v5[safeIndex(822, v5.Length)], v31, v0, v0 := if (v3 in v32) then v32[v3] else v26 || v1, fm23(!v26, v0 - v0, globalState), |v34|, safeModuloInt(|v28|, |v36|);
			var v37 := new C0(v3, v2, "h");
			var v38 := new C0(v3, map[v0 := v1], v28);
			v0 := v0;
		} else {
			globalState.f3 := !v26;
			var v39 := "waie";
			globalState.f2 := !fm0(-v0 * v0, v39, v0, globalState);
			var v40: multiset<int> := multiset{|v2|};
			var v41: seq<bool> := [v1];
			v0, v0, v1 := v0, if ((if (|v41| in v40) then v40[|v41|] else |v39|) != v0) then -fm14(v27, v0, v1, globalState) else v0, v1;
			v0 := v0 - v0;
			var v42: multiset<bool> := multiset{v1, v1, !v26};
			var v43: map<char, bool> := map[v6 := v1];
			var v44: array<multiset<bool>> := new multiset<bool>[8] [v42, multiset(v41), v42[v1 := abs(|v43|)], multiset{v41[safeIndex(v0, |v41|)], v1, !v26, fm0(|v42|, "u", 0x26b, globalState), v1}, multiset(v41) * v42, v42, multiset{v26, v26} * v42, v42];
			v44 := v44;
		}
		
		v0 := 0x76;
		v5[safeIndex(981, v5.Length)] := v1;
		v5[safeIndex(981, v5.Length)] := v1;
		v5[safeIndex(981, v5.Length)] := v26;
	}
	var v45: map<bool, int> := map[v26 := v0];
	var v46: multiset<int> := multiset{v0};
	v45 := v45[fm0(v0, "j", 317, globalState) := if (v0 in v46) then v46[v0] else v0];
	var v47: C1 := new C1(v1);
	var v48: set<C1> := {v47};
	var v49: multiset<set<C1>> := multiset{v48};
	var v50 := DC9();
	match (if (v49 == v49) then v50 else v50) {
		case DC9() =>
			v5[safeIndex(481, v5.Length)] := v1;
			v5[safeIndex(481, v5.Length)] := v47.fm17(globalState);
			var v51: seq<int> := [v0];
			var v52: set<int> := {|v51|};
			var v53: seq<bool> := [v26];
			var v55 := "xwepl";
			var v57: array<set<int>> := new set<int>[25] [v52, v52 * {|v53|, v0, v0}, v52, v52, {v0, v0, |{v5[safeIndex(481, v5.Length)], !v5[safeIndex(481, v5.Length)], v26, v5[safeIndex(481, v5.Length)]}|, -|fm24(v1, v0, globalState)|, v0}, v52, {-v0}, v52, fm20(v0, globalState), v52, set v54 : int | v54 in v2 :: (v54 - 0x1bd), {|v53|, |v55|, v0}, v52 + v52, v52, v52 - v52, (set v56 : int | (27 <= v56) && (v56 < -937) :: (safeDivisionInt(v56, |v55|))) - v52, v52, {v0, v0, v0, v0}, fm20(v0, globalState), v52 + v52, fm20(v0, globalState), v52 * v52, v52, if (v26) then v52 else v52, v52];
			v57[safeIndex(946, v57.Length)] := v52 + v52;
			v57[safeIndex(946, v57.Length)] := v52;
			var v58 := DC6(v0, v5[safeIndex(481, v5.Length)]);
			var v59: array<bool> := new bool[18](i8 => v26);
			var v60: map<bool, array<bool>> := map[!(v58.cf9 && v26) := v59];
			globalState.f10 := if (v1 in v60) then v60[v1] else v59;
			var v61 := v47.m0(globalState);
		case DC8(cf11) =>
			var v62 := m4(v1, globalState);
			var v63: seq<bool> := [v62];
			var v64 := "nixitpvv";
			var v65: T2 := new C0(v4[safeIndex(v0, |v4|)], v2, v64);
			var v66: map<seq<bool>, T2> := map[v63 := v65];
			v66 := v66[v63 := v65];
			var v67 := DC17(map[176 := fm24(v62, v0, globalState)]);
			var v68 := new C3(v62, v67.cf23, v62, fm25(DC5(v63), globalState), v64);
			v9 := v9[safeIndex(0x3b3 - v0, |v9|) := v64];
		case DC10(cf12) =>
			v0 := v0;
			v3 := v3;
			v3 := v3;
			var v69 := DC2(true, !v26, v1);
			var v70 := DC3(v69);
			var v71 := DC3(v69);
			var v72: map<D1, bool> := map[v71 := true];
			var v73 := DC18(v0, v3);
			var v74: seq<int> := [-0x19d, v73.cf24, v0, v0];
			var v75: map<seq<int>, array<bool>> := map[v74 := v5];
			v5, v0, v0, v72 := if (fm26(v26, v0, 969, v1, globalState) in v75) then v75[fm26(v26, v0, 969, v1, globalState)] else v5, v0, safeDivisionInt(v0, v0), v72;
	}
	
	var i9 := 0;
	while (match v50 {
		case DC9() => v1
		case DC8(cf11) => v0 != v0
		case DC10(cf12) => if (v0 in v2) then v2[v0] else v1
	})
		decreases 100 - i9
	{
		if (i9 >= 100) {
			break;
		}
		
		i9 := i9 + 1;
		var v76: seq<bool> := [v26, v26];
		var v77 := DC5(v76);
		v77 := v77;
		if (v26) {
			globalState.f15 := v76 != v76;
			var v78 := new C1(v26 || !true);
			var v79 := v78.m0(globalState);
			var v80 := "txxxw";
			var v81: set<bool> := {v26, if (-v79 in v2) then v2[-v79] else !v1};
			v79 := -safeDivisionInt(|v80| - fm14(v81, v0, !v26, globalState), v79);
			v3[safeIndex(540, v3.Length)] := -v0;
			v3[safeIndex(272, v3.Length)] := |v76| + -fm14(v81, v79, if (v79 in v2) then v2[v79] else v1, globalState);
			var v82: map<int, char> := map[v0 - v0 := v80[safeIndex(v79, |v80|)]];
			v3[safeIndex(540, v3.Length)], globalState.f1, v3[safeIndex(272, v3.Length)] := v79 + v0, if (|v80| in v82) then v82[|v80|] else v6, 746;
		} else {
			var v83 := DC7(v1);
			var v84: seq<D3> := [v83, DC7(!v1), v83, v83, v83];
			var v85 := DC15(v84, -0x337, v47);
			v85 := v85;
			v3[safeIndex(91, v3.Length)] := safeModuloInt(0x129, |{v0, v0}|);
			var v86: array<seq<bool>> := new seq<bool>[9];
			v86[safeIndex(289, v86.Length)] := v76;
			var v87: set<int> := {v0};
			globalState.f3, v3[safeIndex(91, v3.Length)], v86[safeIndex(289, v86.Length)], v1, v47 := 0x2b2 in (if (v1) then v87 else v87), v0, v76, v26, v47;
			globalState.f1 := v6;
			globalState.f1 := 'x';
			var v89: seq<map<int, bool>> := [map[v3[safeIndex(91, v3.Length)] := !v26], map v88 : int | (31 <= v88) && (v88 < 0x154) :: (safeDivisionInt(v88, |map[{v76[safeIndex(|multiset{v26}|, |v76|)], v26, v1, v1, v26} := v0]|)) := (v1)];
			var v90 := new C2(v0, v89[safeIndex(v3[safeIndex(91, v3.Length)], |v89|)], v26);
		}
		
		var v91: map<char, bool> := map[v6 := v26];
		v0 := -(if (v1) then |v91| * v0 else v0);
		var v92 := "bmiasqp";
		v92 := v92;
	}
	var v93 := DC8(v3);
	var v94: seq<bool> := [v1];
	var v95 := DC5(v94);
	var v96: T1 := new C0(v93.cf11, fm25(v95, globalState), "jsufjad");
	v96 := v96;
	v1 := v0 <= -v0;
	globalState.f3 := (fm27(--v0, v1, v1, v26, globalState)).cf14;
	v0 := v0;
	if (v26) {
		globalState.f15 := v26;
		var v97: seq<array<bool>> := [v5, v5];
		var v98: array<array<bool>> := new array<bool>[12] [v5, v5, v5, v97[safeIndex(|v94|, |v97|)], v5, if (v1) then v5 else v5, v5, v5, v5, v5, v5, v5];
		v98 := v98;
		v5[safeIndex(833, v5.Length)] := v47.fm17(globalState);
		v5[safeIndex(833, v5.Length)] := v1;
		globalState.f15 := v1 <== !v1;
		if (v5[safeIndex(833, v5.Length)]) {
			var v100 := "adb";
			var v101: T2 := new C0(v3, map v99 : int | (621 <= v99) && (v99 < 0x290) :: (v99 - |"h"|) := (DC7(v26).cf10), v100);
			v101 := if (v0 > fm14({v1}, v0, v1, globalState)) then v101 else v101;
			var v102: map<int, seq<bool>> := map[v0 := v94[safeIndex(v0, |v94|) := true]];
			var v103 := new C3(v5[safeIndex(833, v5.Length)], v102, !(if (v26) then v1 else v1), v101.f17, "nskn");
			var v104: map<int, C3> := map[v0 := v103];
			var v105: seq<map<int, C3>> := [v104];
			var v106 := DC12(false, |v105|, v6);
			var v107: seq<D5> := [DC12(v101.fm3(v0, v103.f19, globalState), v0, v6), v106, if (v1) then v106 else v106, v106];
			v107 := v107 + fm28(v101.f18, v101.f18, v1, globalState);
			v0 := v0;
			var v108: multiset<bool> := multiset{v26, v5[safeIndex(833, v5.Length)]};
			v0 := |v108|;
		} else {
			v0 := safeDivisionInt(v0, v0);
			globalState.f2 := v26;
			v0 := -v0 + v0;
			var v109 := "frowj";
			var v110: set<bool> := {v1, !v1};
			var v111: map<int, seq<bool>> := map[fm14(v110, v0, v1, globalState) := [fm0(v0, v109, -0x1ed, globalState)]];
			var v112: seq<map<int, seq<bool>>> := [v111];
			var v113: C3 := new C3(v1, v112[safeIndex(v0, |v112|)], !v26, map[0x13f := v1], v109);
			var v114 := DC2(v113.f19, v113.f19, v5[safeIndex(833, v5.Length)]);
			var v115: array<C3> := new C3[8] [v113, v113, v113, v113, v113, v113, if (v114.cf4) then v113 else v113, v113];
			v115[safeIndex(977, v115.Length)] := v113;
			var v117: map<map<int, bool>, bool> := map[map v116 : int | (0x261 <= v116) && (v116 < 832) :: (safeDivisionInt(v116, -0x2c9)) := (v113.f19) := v113.f19];
			globalState.f1, globalState.f3, v109, v115[safeIndex(977, v115.Length)], v0 := v6, (DC12(v1, v0, v6).cf16 !in v109[safeIndex(v0, |v109|) := v6]) ==> (v2 !in v117), v109, v113, v0;
			var v118: seq<int> := [|v109|, v0, v0, v0];
			globalState.f3 := !!(v0 !in v118) !in v94;
		}
		
	} else {
		v0 := v0;
		var v119: map<bool, map<bool, int>> := map[v1 := v45];
		var v120: set<map<bool, int>> := {map[!v26 := v0], v45};
		v0 := |fm26(v1, |v119|, safeDivisionInt(|v120|, v0), v1, globalState)|;
		var v121: C2 := new C2(v0, map[v0 := v26], v0 != v0);
		v121 := v121;
		v5[safeIndex(229, v5.Length)] := true;
		v5[safeIndex(229, v5.Length)] := v1;
		if (v5[safeIndex(229, v5.Length)]) {
			globalState.f3 := v26;
			var v122: set<int> := {v0};
			var v123: multiset<set<int>> := multiset{v122, v122, v122};
			v123 := v123;
			var v124 := DC1(v0);
			var v125 := DC3(v124);
			globalState.f1 := fm21(v5[safeIndex(229, v5.Length)] <==> !v5[safeIndex(229, v5.Length)], v121.fm12(v122, v1, !v1, v95, globalState), v125, DC1(666), globalState);
			var v126: array<char> := new char[19];
			v126[safeIndex(982, v126.Length)] := v6;
			v126[safeIndex(982, v126.Length)] := if (v5[safeIndex(229, v5.Length)]) then v6 else v6;
			var v127: map<bool, array<int>> := map[false := v3];
			v127 := v127[false := v3];
		} else {
			var v128 := "idbjxigqk";
			var v129 := new C0(v3, v2, v128);
			var v130: set<int> := {v0, -0x110, v121.f22};
			var v131: seq<set<int>> := [v130];
			v131 := [v130 - v130];
			var v132: array<C0> := new C0[29];
			var v133: array<array<C0>> := new array<C0>[7] [v132, v132, v132, v132, v132, v132, v132];
			v133 := v133;
			v5[safeIndex(229, v5.Length)] := v5[safeIndex(229, v5.Length)];
			v0 := v121.f22;
		}
		
	}
	
	globalState.f3 := v1;
	var v134 := DC7(v26);
	var v135 := DC7(if (v26 in v10) then v10[v26] else v134.cf10);
	match (v134) {
		case DC6(cf8, cf9) =>
			var v136: array<map<C3, int>> := new map<C3, int>[10];
			var v137: map<int, seq<bool>> := map[cf8 := v94];
			var v138: set<bool> := {cf9, false, v1};
			var v139: C3 := new C3(cf9, v137, v1, v2, v9[safeIndex(|v138|, |v9|)]);
			var v140: map<C3, int> := map[v139 := v0];
			v136[safeIndex(647, v136.Length)] := v140;
			v136[safeIndex(647, v136.Length)] := (v140[v139 := -cf8])[v139 := -0x11b - v0];
			var v141: seq<T1> := [v96];
			globalState.f3 := |v141| >= -(v0 * -v0);
			var v142: seq<int> := [cf8];
			var v143: seq<int> := [fm14(v138, |v142|, !cf9, globalState)];
			var v144: array<multiset<int>> := new multiset<int>[8] [multiset{-v0}, v46, multiset(v142), v46, multiset{v0}, v46, v46, v46 - v46];
			v144[safeIndex(116, v144.Length)] := v46;
			v144[safeIndex(116, v144.Length)] := v46;
			v26 := v2 != v2;
		case DC7(cf10) =>
			v47 := v47;
			var v145: set<bool> := {v1};
			var v146: set<set<int>> := {{fm14(v145, v0, false, globalState)}};
			v146 := (if (cf10) then v146 else v146) * (v146 * v146);
			var v147: set<map<int, bool>> := {v2 + v2};
			v147 := {v2, (map[0x98 := v1])[v0 := v26], v2, map[v0 := v1], v2};
			globalState.f10 := v5;
		case DC5(cf7) =>
			var v148: map<string, int> := map["egtpgkvx" := v0];
			var v149 := "xb";
			var v150: seq<int> := [if (v149 in v148) then v148[v149] else -0x163];
			var v151: map<string, array<int>> := map[seq(abs(0x3aa), i10  => (v6)) := v3];
			var v152: map<int, array<int>> := map[|v150| := if (v149 in v151) then v151[v149] else v3];
			v152 := v152[v0 := v3];
			v3[safeIndex(905, v3.Length)] := |DC0(v149).cf0|;
			v3[safeIndex(905, v3.Length)] := v0;
			var v153: array<int> := new int[25](i11 => i11 * |{|v150|}|);
			var v154: map<array<int>, int> := map[v153 := |v149|];
			var v155: set<bool> := {v1, v26, v26, v1, v1};
			var v156: array<int> := new int[15] [|v150|, -v0, v0, v3[safeIndex(905, v3.Length)], v3[safeIndex(905, v3.Length)], |v154|, -v3[safeIndex(905, v3.Length)], v3[safeIndex(905, v3.Length)], v0, fm14(v155, v0, v1, globalState), v3[safeIndex(905, v3.Length)], v3[safeIndex(905, v3.Length)], |(seq(abs(668), i12  => ([v150[safeIndex(v3[safeIndex(905, v3.Length)], |v150|)]])))|, 303, v3[safeIndex(905, v3.Length)]];
			var v157: C0 := new C0(v153, v2, v149);
			v157 := v157;
			var v159 := DC19(DC17(map v158 : int | v158 in v2 :: (safeModuloInt(v158, v3[safeIndex(905, v3.Length)])) := (cf7)));
			var v160: set<D8> := {v159, v159};
			var v161: map<int, set<D8>> := map[v0 := v160];
			var v162: C2 := new C2(v3[safeIndex(905, v3.Length)], v2, !v26);
			v161 := v161[|{v162, v162, v162}| * v162.f22 := v160];
	}
	
	print v0, "\n";
	print v1, "\n";
	print v2 == map[-251 := true], "\n";
	print v3[0], "\n";
	print v3[1], "\n";
	print v3[2], "\n";
	print v3[3], "\n";
	print v3[4], "\n";
	print |v4|, "\n";
	print v5[1], "\n";
	print v5[3], "\n";
	print v5[6], "\n";
	print v5[8], "\n";
	print v5[12], "\n";
	print v6, "\n";
	print v7 == map['f' := 289], "\n";
	print v8 == [map['f' := 289]], "\n";
	print globalState.f0, "\n";
	print globalState.f1, "\n";
	print globalState.f2, "\n";
	print globalState.f3, "\n";
	print globalState.f4, "\n";
	print globalState.f5, "\n";
	print globalState.f6, "\n";
	print globalState.f7 == map[-251 := true], "\n";
	print globalState.f8[0], "\n";
	print globalState.f8[1], "\n";
	print globalState.f8[2], "\n";
	print globalState.f8[3], "\n";
	print globalState.f8[4], "\n";
	print globalState.f9, "\n";
	print globalState.f10[1], "\n";
	print globalState.f10[3], "\n";
	print globalState.f10[6], "\n";
	print globalState.f10[8], "\n";
	print globalState.f10[12], "\n";
	print globalState.f11, "\n";
	print globalState.f12 == [map['f' := 289]], "\n";
	print globalState.f13[1], "\n";
	print globalState.f13[3], "\n";
	print globalState.f13[6], "\n";
	print globalState.f13[8], "\n";
	print globalState.f13[12], "\n";
	print globalState.f14, "\n";
	print globalState.f15, "\n";
	print v9 == ["xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy", "xevkbiy"], "\n";
	print v10 == map[true := false], "\n";
	print i2, "\n";
	print |v25|, "\n";
	print v26, "\n";
	print i7, "\n";
	print v45 == map[true := 1], "\n";
	print v46 == multiset{118}, "\n";
	print |v48|, "\n";
	print |v49|, "\n";
	print i9, "\n";
	print v93.cf11[0], "\n";
	print v93.cf11[1], "\n";
	print v93.cf11[2], "\n";
	print v93.cf11[3], "\n";
	print v93.cf11[4], "\n";
	print v94 == [true], "\n";
	print v95.cf7 == [true], "\n";
	print v134.cf10, "\n";
	print v135.cf10, "\n";
}