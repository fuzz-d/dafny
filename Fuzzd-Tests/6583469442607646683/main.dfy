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
datatype D0 = DC1(cf1: bool) | DC0(cf0: bool)
datatype D1 = DC3(cf3: bool, cf4: int, cf5: int, cf6: bool) | DC4(cf7: bool, cf8: char, cf9: seq<map<int, int>>, cf10: seq<int>, cf11: int) | DC2(cf2: array<bool>) | DC5(cf12: D1)
datatype D2 = DC7(cf14: array<bool>, cf15: int, cf16: int, cf17: int) | DC6(cf13: string)
datatype D3 = DC9(cf19: int, cf20: array<bool>, cf21: D2, cf22: array<multiset<int>>, cf23: seq<bool>) | DC10(cf24: int) | DC11(cf25: int, cf26: bool, cf27: multiset<bool>) | DC8(cf18: map<int, int>)
datatype D4 = DC13 | DC14 | DC12(cf28: seq<seq<char>>) | DC15(cf29: D4)
datatype D5 = DC17(cf31: int, cf32: int, cf33: int, cf34: bool) | DC16(cf30: map<int, C1>) | DC18(cf35: D5)
datatype D6 = DC19(cf36: T1)
datatype D7 = DC21(cf38: bool, cf39: bool) | DC22(cf40: bool, cf41: int, cf42: bool) | DC20(cf37: map<bool, bool>) | DC23(cf43: D7)
trait T0 {
	const f7 : seq<int>
	var f8 : int
	function fm8(p0: int, p1: string, p2: D3, p3: int, globalState: GlobalState): char 
	function fm9(p0: int, p1: int, p2: int, p3: int, globalState: GlobalState): string 
}

trait T1 extends T0 {
	function fm10(p0: bool, p1: char, p2: bool, p3: seq<seq<char>>, globalState: GlobalState): int 
	function fm11(globalState: GlobalState): int 
}

class GlobalState {
	const f0 : int
	const f1 : int
	var f2 : int
	const f3 : int
	const f4 : string
	const f5 : seq<int>
	constructor (f0 : int, f1 : int, f2 : int, f3 : int, f4 : string, f5 : seq<int>) {
		this.f0 := f0;
		this.f1 := f1;
		this.f2 := f2;
		this.f3 := f3;
		this.f4 := f4;
		this.f5 := f5;
	}
	
}

class C0 extends T1 {
	var f9 : int
	constructor (f9 : int, f7 : seq<int>, f8 : int) {
		this.f9 := f9;
		this.f7 := f7;
		this.f8 := f8;
	}
	
	function fm10(p0: bool, p1: char, p2: bool, p3: seq<seq<char>>, globalState: GlobalState): int {
		safeDivisionInt(f9, 548)
	}
	function fm11(globalState: GlobalState): int {
		match DC6(seq(abs(-0x1e8), i0  => ('n'))) {
			case DC7(cf14, cf15, cf16, cf17) => -(cf16 * cf16)
			case DC6(cf13) => |f7|
		}
	}
	function fm8(p0: int, p1: string, p2: D3, p3: int, globalState: GlobalState): char {
		'f'
	}
	function fm9(p0: int, p1: int, p2: int, p3: int, globalState: GlobalState): string {
		"liavlgri" + ("tai" + (seq(abs(-0x251), i0  => ('g'))))
	}
	function fm12(p0: bool, p1: bool, p2: multiset<bool>, p3: set<multiset<bool>>, globalState: GlobalState): seq<bool> {
		([true, false] + [true, !true]) + (if (false) then [true, DC1(true).cf1, true, false, true] else [true])
	}
	function fm13(globalState: GlobalState): int {
		|(map[true := |(set v0 : int | (0x16b <= v0) && (v0 < 112) :: (v0 + |"cogyby"|))|] + map[false := f9])| - safeDivisionInt(f9, -934)
	}
}

class C1 {
	const f6 : int
	constructor (f6 : int) {
		this.f6 := f6;
	}
	
	function fm5(p0: bool, p1: char, globalState: GlobalState): int {
		|map[|map[f6 := "htaysu"]| := |map[f6 := false]|]| - f6
	}
	function fm6(p0: set<bool>, globalState: GlobalState): int {
		f6 * |map[|[f6, f6]| := seq(abs(0x10d), i0  => (|[f6, f6]|))]|
	}
	method m1(p0: int, p1: int, globalState: GlobalState) returns (r0: bool, r1: bool, r2: seq<int>, r3: char) {
		var v0 := true;
		var v1: map<int, bool> := map[p1 := v0];
		var v2: map<bool, bool> := map[v0 := f6 in v1];
		var v3: seq<int> := [f6, f6];
		var v4: map<int, seq<int>> := map[0x3e6 := v3];
		v2 := v2[(if (p1 in v4) then v4[p1] else [f6]) == v3 := v0];
		var v5: array<array<bool>> := new array<bool>[13];
		v5 := v5;
		var v6 := DC3(true, 0xfa, 0x283, v0);
		var v7 := DC5(v6);
		match (v7) {
			case DC3(cf3, cf4, cf5, cf6) =>
				r1 := (p1 <= f6) <==> !v0;
				cf6 := cf6;
				cf6 := |v1| == 0xdd;
				if (cf3) {
					var v8 := "xbdc";
					v8 := v8;
					var v9: map<multiset<int>, int> := map[multiset(v3) := p1];
					var v10, v11, v12, v13 := m0(p1 <= |v9|, globalState);
					globalState.f2 := f6;
					var v14 := DC0(v0);
					var v15: map<D0, bool> := map[v14 := cf6];
					var v16 := 'd';
					cf6, r1, v12 := !(cf6 || !(if (cf6) then false else if (v14 in v15) then v15[v14] else v0)), v0 || fm0(v0, v16, globalState), f6;
					var v17 := DC1(true);
					var v18: set<int> := {f6};
					var v19: map<char, int> := map['k' := |v18|];
					v17 := v17.(cf1 := v16 !in v19);
				} else {
					var v20 := "lskr";
					var v21 := 'x';
					var v22 := DC6("ijtg");
					var v23: set<int> := {p1};
					var v24: array<string> := new string[25] [v20 + v20, (seq(abs(-0x12e), i0  => ('s'))) + (seq(abs(0x138), i1  => ('u'))), ("eblp")[safeIndex(798, |"eblp"|) := v21], v20, v20, v20, v20, v20, v22.cf13, v20, v20, v20, v20[safeIndex(p1, |v20|) := v21], v20, v20[safeIndex(cf5, |v20|) := v21] + v20, v20 + v20, v20, "qftobyxni", v20, v22.cf13, seq(abs(-0x2b7), i2  => (v20[safeIndex(cf4, |v20|)])), fm7(-v3[safeIndex(|v23|, |v3|)], cf4, globalState), seq(abs(0x3cc), i3  => (v21)), "ikdc", v20 + (seq(abs(0x2f0), i4  => (v21)))];
					v24[safeIndex(813, v24.Length)] := v20;
					v24[safeIndex(813, v24.Length)] := v20 + (v20 + v20);
					r1 := !v0;
					var v25: array<bool> := new bool[29];
					v25[safeIndex(684, v25.Length)] := v0;
					v25[safeIndex(684, v25.Length)] := v0;
					v20 := v24[safeIndex(813, v24.Length)];
					var v26: map<int, int> := map[p1 := 0x329];
					var v27 := DC8(v26);
					var v28 := DC0(v0);
					var v29: map<D0, int> := map[v28 := p1];
					var v30: seq<map<D0, int>> := [v29];
					v25[safeIndex(684, v25.Length)], r2, r0, cf4, r1 := cf6, v3, (f6 >= |v27.cf18|) <== cf3, fm5(cf5 !in [cf5], fm2(cf4, v30, globalState), globalState), if (cf3) then cf4 <= p1 else cf6;
				}
				
			case DC4(cf7, cf8, cf9, cf10, cf11) =>
				r0 := true;
				var v31 := "g";
				r1 := !((if (v0) then 'c' else 'q') !in v31);
				match (v7) {
					case DC3(cf3, cf4, cf5, cf6) =>
						v0 := cf3;
						var v32: map<bool, char> := map[cf7 := cf8];
						v32 := v32 + v32;
						var v33 := DC1(cf7);
						var v34: seq<D0> := [v33];
						var v35: array<char> := new char[10];
						var v36: map<array<char>, bool> := map[v35 := v0];
						var v37: seq<bool> := [if (v35 in v36) then v36[v35] else cf3];
						var v38: map<int, seq<bool>> := map[-|(v34 + v34)| := v37];
						var v39: map<bool, seq<bool>> := map[fm0(cf7, cf8, globalState) := v37];
						v38 := v38[f6 := if (cf6 in v39) then v39[cf6] else v37];
						globalState.f2 := cf11;
					case DC4(cf7, cf8, cf9, cf10, cf11) =>
						globalState.f2 := -(if (true) then 0x2c5 else safeDivisionInt(p0, f6));
						var v40 := DC0(cf7);
						var v41: map<D0, int> := map[v40 := |[p0]|];
						var v42: seq<map<D0, int>> := [v41];
						v2 := (v2 + v2[cf7 := cf7])[fm0(cf7, fm2(0x244, v42, globalState), globalState) := false];
						cf7 := v0;
						cf8 := cf8;
					case DC2(cf2) =>
						globalState.f2 := |v31|;
						var v43: map<bool, D1> := map[v0 := DC2(cf2)];
						var v44: set<map<bool, D1>> := {v43};
						var v45 := DC4(cf7, cf8, cf9, v3, p0);
						var v46: array<int> := new int[16] [|(v44 * v44)|, p0, f6, |v31|, --p1, safeModuloInt(p0, f6), p0, cf11, -v45.cf11, fm1(cf11, cf7, globalState), f6, p1, p1, cf11, p1 * p1, safeModuloInt(p0, f6)];
						v46[safeIndex(422, v46.Length)] := p1;
						v46[safeIndex(422, v46.Length)] := f6 + p1;
						v46[safeIndex(422, v46.Length)] := -(v46[safeIndex(422, v46.Length)] - safeModuloInt(f6, f6));
						var v47, v48, v49, v50 := m0(cf7 ==> v0, globalState);
					case DC5(cf12) =>
						var v51: array<D0> := new D0[26];
						var v52: array<array<D0>> := new array<D0>[2] [v51, v51];
						v52[safeIndex(490, v52.Length)] := v51;
						v52[safeIndex(490, v52.Length)] := new D0[6](i5 => DC0(cf7));
						var v53: set<bool> := {v0};
						var v54: seq<set<bool>> := [v53, v53];
						var v55: set<set<bool>> := {v54[safeIndex(p1, |v54|)]};
						v55 := v55;
						v31 := v31;
						cf11 := p1 + --f6;
				}
				
				var v56: multiset<bool> := multiset{true};
				var v57 := DC11(|v31|, true, v56);
				var v58: map<bool, string> := map[v57.cf26 := seq(abs(0x9b), i6  => ('l'))];
				var v59: multiset<int> := multiset{f6, -593};
				var v60: map<bool, int> := map[v0 := p0];
				var v61: map<int, int> := map[|v59| := |[|v60|]|];
				var v62: array<int> := new int[18] [p0, if (cf7) then |(if (v0 in v58) then v58[v0] else v31)| else p0, safeModuloInt(f6, cf11), p0, f6, |"trqm"|, p0, cf11, f6, |v61| + (if (cf11 in v61) then v61[cf11] else p1), safeModuloInt(p0, f6), f6 * -p1, f6, |v31| * p0, 0x65, p0, p1 - |v56|, p0];
				v62[safeIndex(717, v62.Length)] := 903;
				var v63: multiset<multiset<bool>> := multiset{v56, multiset{v0}};
				var v64: set<seq<int>> := {v3};
				v62[safeIndex(717, v62.Length)] := |(v59[|v63| := abs(-914)] - multiset{p0, p1})| * |v64|;
			case DC2(cf2) =>
				var v65 := "ifkw";
				var v66: map<int, string> := map[f6 := v65];
				v66 := v66[|v3| := v65];
				globalState.f2 := p0;
				var v67, v68, v69, v70 := m0(f6 < p0, globalState);
				var v71: set<bool> := {false, v0};
				v67 := (-p1 - |v71|) >= safeModuloInt(-0x3dc, v68);
			case DC5(cf12) =>
				var v72 := "gjynm";
				v72 := seq(abs(961), i7  => ('d'));
				var v73 := 'r';
				var v74 := DC0(!true);
				var v75: map<D0, int> := map[v74 := -0x283];
				var v76: seq<map<D0, int>> := [v75];
				var v77: array<char> := new char[8] [v73, if (v0) then fm2(|fm7(p1, p1, globalState)|, v76, globalState) else v73, v73, v73, v73, v73, v73, fm2(p0, v76, globalState)];
				v77[safeIndex(355, v77.Length)] := if (v0) then v73 else v73;
				v77[safeIndex(355, v77.Length)], v0 := v73, !(v74.cf0 && (v0 && v0));
				var v78: seq<bool> := [v0, v0];
				var v79: map<bool, map<char, bool>> := map[v78[safeIndex(p0, |v78|)] := (map[v77[safeIndex(355, v77.Length)] := true])[v77[safeIndex(355, v77.Length)] := v0]];
				var v80: map<char, bool> := map[v77[safeIndex(355, v77.Length)] := v0];
				v79 := map[v0 || v0 := v80];
				var v81: multiset<bool> := multiset{v0, true};
				match (DC11(fm6({v0}, globalState), v0, v81).(cf25 := p1)) {
					case DC9(cf19, cf20, cf21, cf22, cf23) =>
						var v82: map<int, int> := map[p0 := |v78|];
						var v83: multiset<char> := multiset{v77[safeIndex(355, v77.Length)]};
						var v84: multiset<map<int, int>> := multiset{v82 + v82, v82, map[cf19 := |map[v0 := v0]|], if (v0) then map[|v78| := |v83|] else map[p1 := |v3|], v82};
						v84 := v84;
						v81 := v81;
						v5 := v5;
						v81 := v81;
					case DC10(cf24) =>
						cf24 := -safeDivisionInt(-p0, p1);
						var v85: map<int, int> := map[cf24 := p0];
						v1 := v1[safeModuloInt(cf24, if (p0 in v85) then v85[p0] else cf24) := v0];
						var v86: array<int> := new int[26](i8 => i8 * p0);
						v86[safeIndex(536, v86.Length)] := safeDivisionInt(-fm5(v0, v73, globalState), cf24);
						v86[safeIndex(536, v86.Length)] := 5;
						v72 := v72 + v72;
					case DC11(cf25, cf26, cf27) =>
						var v87: seq<seq<int>> := [v3];
						var v88 := new C0(p1, v87[safeIndex(cf25, |v87|)], |v72|);
						r0 := safeModuloInt(f6, v88.f9) > |v72|;
						v88 := v88;
						var v89: array<int> := new int[9];
						v89[safeIndex(735, v89.Length)] := v88.f9 - f6;
						v73, v0, globalState.f2, v77[safeIndex(355, v77.Length)], v89[safeIndex(735, v89.Length)] := v77[safeIndex(355, v77.Length)], v0, f6, fm2(v88.f9, v76 + (seq(abs(0x4b), i9  => (v75))), globalState), -cf25;
					case DC8(cf18) =>
						var v90 := new C0(|v3|, v3, p0);
						var v91: array<bool> := new bool[28];
						var v92: seq<seq<char>> := [seq(abs(-882), i10  => (v77[safeIndex(355, v77.Length)]))];
						v73, v0, v91 := v73, if (v90.fm10(v0, v73, v0, DC12(v92).cf28, globalState) in v1) then v1[v90.fm10(v0, v73, v0, DC12(v92).cf28, globalState)] else if (v0) then v0 else true, v91;
						v77[safeIndex(355, v77.Length)] := v77[safeIndex(355, v77.Length)];
						v0, v90 := v0, v90;
				}
				
		}
		
		var v93: array<int> := new int[14](i12 => safeModuloInt(i12, -p0));
		forall i11 | 0 <= i11 < v93.Length {
			v93[i11] := i11 + p1;
		}
		var v94: array<bool> := new bool[8](i13 => v0);
		var v95 := "dd";
		var v96 := DC6(v95);
		var v97: array<multiset<int>> := new multiset<int>[10];
		var v98: seq<bool> := [v0, !v0];
		var v99 := DC9(p1, v94, v96, v97, v98);
		var v100 := DC7(v99.cf20, 0x50, p0, p0);
		var v101 := DC10(v100.cf17 - p0);
		v94[safeIndex(696, v94.Length)] := v0;
		r1, v101, v94[safeIndex(696, v94.Length)], r0, v95 := v0, if (f6 < f6) then v101 else DC10(f6), v0, v0, "inxvc";
		globalState.f2 := -0xfe;
		r0 := v0;
		r1 := false || v94[safeIndex(696, v94.Length)];
		r2 := v3;
		var v102 := 'i';
		var v103: map<bool, char> := map[v94[safeIndex(696, v94.Length)] := v102];
		r3 := if (-p1 != f6) then v102 else if (v94[safeIndex(696, v94.Length)] in v103) then v103[v94[safeIndex(696, v94.Length)]] else v102;
	}
}

class C2 extends T0 {
	constructor (f7 : seq<int>, f8 : int) {
		this.f7 := f7;
		this.f8 := f8;
	}
	
	function fm8(p0: int, p1: string, p2: D3, p3: int, globalState: GlobalState): char {
		'c'
	}
	function fm9(p0: int, p1: int, p2: int, p3: int, globalState: GlobalState): string {
		DC6("i").cf13
	}
	function fm18(p0: bool, globalState: GlobalState): int {
		if (!('b' !in "raxysdui")) then f8 else if (!false) then f8 else |f7|
	}
	method m3(p0: bool, p1: array<C1>, p2: seq<array<int>>, p3: map<int, bool>, globalState: GlobalState) {
		var v0: map<char, bool> := map['s' := true];
		var v1 := 'j';
		var v2: multiset<bool> := multiset{if (v1 in v0) then v0[v1] else p0};
		v2 := v2;
		var v3: array<int> := new int[7] [f8, f8, safeModuloInt(f8, f8), f8, safeDivisionInt(f8, f8), f8, f8];
		v3[safeIndex(752, v3.Length)] := f8;
		var v4: map<int, array<int>> := map[f8 := v3];
		v3[safeIndex(752, v3.Length)] := safeDivisionInt(-f8, |v4|) + f8;
		var v5: multiset<int> := multiset{|(seq(abs(0x3dd), i0  => (f8)))|};
		var v6 := "ydpjhgb";
		if (f8 != (if (v3[safeIndex(752, v3.Length)] in v5) then v5[v3[safeIndex(752, v3.Length)]] else |v6|)) {
			var v7: array<bool> := new bool[18];
			v7 := v7;
			var v8 := true;
			v8, v8 := v8 <== p0, v8;
			var v9, v10, v11, v12 := m0(v8 && v8, globalState);
			globalState.f2 := f8;
			v11 := v11;
		} else {
			v6 := v6;
			var v13: seq<D4> := [DC14()];
			var v14 := DC14();
			v13 := v13 + ((seq(abs(0x301), i1  => (DC14()))) + [v14, v14, v14, v14, v14]);
			var v15 := false;
			var v16: map<bool, int> := map[true := |v6|];
			v15 := if ((v3[safeIndex(752, v3.Length)] + v3[safeIndex(752, v3.Length)]) in p3) then p3[v3[safeIndex(752, v3.Length)] + v3[safeIndex(752, v3.Length)]] else map[p0 := f8] == v16;
			globalState.f2 := f8;
			var v17, v18, v19, v20 := m0(v15, globalState);
		}
		
		var v21: seq<bool> := [p0];
		v21 := v21;
		var v22 := new C1(safeDivisionInt(v3[safeIndex(752, v3.Length)], 0xf8));
		v3[safeIndex(752, v3.Length)] := v22.f6;
	}
}

class C3 extends T0 {
	const f10 : int
	const f11 : C1
	constructor (f10 : int, f11 : C1, f7 : seq<int>, f8 : int) {
		this.f10 := f10;
		this.f11 := f11;
		this.f7 := f7;
		this.f8 := f8;
	}
	
	function fm8(p0: int, p1: string, p2: D3, p3: int, globalState: GlobalState): char {
		if (|"cgjlce"| < f11.f6) then if (!!false) then 'c' else 'd' else if (true) then 'b' else 'l'
	}
	function fm9(p0: int, p1: int, p2: int, p3: int, globalState: GlobalState): string {
		"peh"
	}
	function fm15(p0: char, p1: bool, p2: int, p3: int, globalState: GlobalState): char {
		match DC15(DC12(seq(abs(0x1c), i0  => (['r', 'l'])))) {
			case DC13() => 'p'
			case DC14() => 'g'
			case DC12(cf28) => if (false) then 'p' else 'i'
			case DC15(cf29) => 'v'
		}
	}
	function fm16(globalState: GlobalState): string {
		seq(abs(943), i0  => ('x'))
	}
	method m2(globalState: GlobalState) returns (r0: multiset<int>, r1: int) {
		var v0: array<int> := new int[12];
		var v1 := false;
		var v2 := DC17(f10, f10, f11.f6, v1);
		var v3: map<int, bool> := map[|f7[safeIndex(f11.f6, |f7|) := f10]| := v2.cf34];
		var v4: seq<bool> := [v1, v1, v1];
		var v5 := "i";
		var v6: map<multiset<bool>, string> := map[multiset(v4) := v5];
		var v7: map<bool, bool> := map[!v1 := v1];
		var v8: multiset<bool> := multiset{if (false in v7) then v7[false] else v1, !v1};
		var v9: seq<string> := [if (v8 in v6) then v6[v8] else v5, seq(abs(0xd6), i0  => ('f'))];
		var v10: T1 := new C0(f10, f7, 0x206);
		var v11 := DC10(f11.f6);
		v0 := new int[15] [f11.f6, |fm17(v3, f11.f6, v1, v9[safeIndex(f8, |v9|)], globalState)|, |map[true := v10]|, f8, f10, v10.fm11(globalState), f7[safeIndex(f11.f6, |f7|)], f11.f6 - f8, |"sjg"|, --safeModuloInt((v11.(cf24 := 0x3a8)).cf24, f11.f6), f11.f6, f10, |[v0]|, |[v1]|, -safeDivisionInt(f11.f6, f10)];
		v0[safeIndex(179, v0.Length)] := f11.f6;
		v0[safeIndex(179, v0.Length)] := f11.f6;
		var i1 := 0;
		while (safeDivisionInt(v0[safeIndex(179, v0.Length)], f8) == f11.f6)
			decreases 100 - i1
		{
			if (i1 >= 100) {
				break;
			}
			
			i1 := i1 + 1;
			var v12 := new C0(v10.f8, f7, v0[safeIndex(179, v0.Length)]);
			v1 := v1 <==> !!v1;
			var v13: map<bool, int> := map[v1 := f11.f6];
			globalState.f2 := |v13|;
			v0[safeIndex(179, v0.Length)] := f11.f6;
		}
		var v14 := new C1(if (v1 in v8) then v8[v1] else f10);
		var v15: map<bool, array<int>> := map[!!v1 := v0];
		var v16: map<bool, array<int>> := map[|(seq(abs(0x266), i2  => ('b')))| !in f7 := if (!v4[safeIndex(f11.f6, |v4|)] in v15) then v15[!v4[safeIndex(f11.f6, |v4|)]] else v0];
		v15 := v15[!(v1 <==> v1) := v0];
		for i3 := v0[safeIndex(179, v0.Length)] to f10 {
			v1 := v1;
			var v17: array<D2> := new D2[9];
			var v18: array<bool> := new bool[12];
			var v19 := DC7(v18, v10.f8, |v5|, v10.f8);
			v17[safeIndex(336, v17.Length)] := v19;
			var v20: T0 := new C2(v10.f7, f10);
			var v21: map<T0, int> := map[v20 := v14.f6];
			v17[safeIndex(336, v17.Length)] := v19.(cf16 := f11.f6, cf15 := safeModuloInt(if (v20 in v21) then v21[v20] else v10.f8, v0[safeIndex(179, v0.Length)]), cf17 := v14.f6);
			var v22 := 'm';
			var v23: seq<map<int, int>> := [map[if (v1 in v8) then v8[v1] else fm1(i3, v1, globalState) := f10]];
			var v24 := DC4(v1, v22, v23, f7[safeIndex(i3, |f7|) := 0x210] + v10.f7, v10.f8);
			v24 := v24;
			var v25 := new C2(v10.f7[safeIndex(v0[safeIndex(179, v0.Length)], |v10.f7|) := v10.f8], |v5|);
		}
		var v26: multiset<int> := multiset{-367};
		var v27: multiset<int> := multiset{if (v0[safeIndex(179, v0.Length)] in v26) then v26[v0[safeIndex(179, v0.Length)]] else -f11.f6, v14.f6};
		r0 := (multiset(f7) * v27) + v26;
		r1 := f10;
	}
}

function fm0(p0: bool, p1: char, globalState: GlobalState): bool {
	if (if (!true) then true else true) then !!(true || true) else true
}
function fm1(p0: int, p1: bool, globalState: GlobalState): int {
	|(if (false || false) then [!false] else [false, !true, false])|
}
function fm2(p0: int, p1: seq<map<D0, int>>, globalState: GlobalState): char {
	'n'
}
function fm3(p0: bool, p1: set<seq<bool>>, globalState: GlobalState): map<bool, int> {
	map[false := |"ncq"|] + (map[true := 382] + map[true := |"mce"|])
}
function fm4(globalState: GlobalState): seq<map<bool, char>> {
	if (false) then if (!false) then [map[DC22(!false, 0x15b, true).cf42 := 'j']] else [map[!!true := 'y']] else [map[false := 'q']]
}
function fm7(p0: int, p1: int, globalState: GlobalState): string {
	((seq(abs(0x3e0), i0  => ('q'))) + "vrcprlrp") + ("tifiq" + (seq(abs(-0x2a8), i1  => ('n'))))
}
function fm14(p0: int, p1: int, p2: bool, p3: int, globalState: GlobalState): map<bool, bool> {
	map[!!false := [true] != [false, true, false, true, !!true]]
}
function fm17(p0: map<int, bool>, p1: int, p2: bool, p3: string, globalState: GlobalState): set<int> {
	({0x52, 584} * (set v0 : int | (0x1fe <= v0) && (v0 < 114) :: (v0 * |(map v1 : int | (-909 <= v1) && (v1 < -0x162) :: (safeModuloInt(v1, |"wwiah"|)) := (true))|))) + (set v2 : int | (0x92 <= v2) && (v2 < 0x145) :: (safeModuloInt(v2, |"mkkohj"|)))
}
function fm19(p0: map<int, int>, p1: bool, p2: int, globalState: GlobalState): seq<bool> {
	([!!false, false] + [!false]) + ([true, false] + [!!false])
}
method m0(p0: bool, globalState: GlobalState) returns (r0: bool, r1: int, r2: int, r3: array<int>) {
	r0 := !p0;
	var v0 := 0x1a0;
	var v1 := "apaawqpct";
	var i0 := 0;
	while ((v0 + |v1|) == v0)
		decreases 100 - i0
	{
		if (i0 >= 100) {
			break;
		}
		
		i0 := i0 + 1;
		var v2: array<multiset<int>> := new multiset<int>[21];
		var v3: multiset<int> := multiset{v0};
		v2[safeIndex(700, v2.Length)] := v3;
		var v4: map<bool, multiset<int>> := map[p0 <==> p0 := v3];
		var v5: map<int, int> := map[v0 := v0];
		v2[safeIndex(700, v2.Length)] := if ((map[v0 := -0x387] != v5[v0 := v0]) in v4) then v4[map[v0 := -0x387] != v5[v0 := v0]] else v3;
		var v6 := 'x';
		var v7: seq<int> := [v0, v0];
		var v8 := new C0(fm1(v0, fm0(p0, v6, globalState), globalState), v7, -925);
		r2 := v8.f9;
		v6 := 'u';
	}
	var v9 := new C1(v0);
	var v10: multiset<bool> := multiset{false, p0, p0};
	var i1 := 0;
	while (match DC17(v0, v0, if (p0 in v10) then v10[p0] else -v9.f6, p0) {
		case DC17(cf31, cf32, cf33, cf34) => cf34
		case DC16(cf30) => p0
		case DC18(cf35) => p0
	})
		decreases 100 - i1
	{
		if (i1 >= 100) {
			break;
		}
		
		i1 := i1 + 1;
		r2 := v0;
		r2 := v9.f6;
		var v11 := DC3(p0, 0x35b, v9.f6, !p0);
		var v12: map<int, bool> := map[v9.f6 := true];
		var v13: seq<bool> := [p0];
		var v14: seq<int> := [v9.f6];
		var v15: array<bool> := new bool[19] [p0, p0, !p0, v11.cf6, false, v0 < v9.f6, p0, p0, false, true, !p0, p0, if (v9.f6 in v12) then v12[v9.f6] else p0, p0, v13[safeIndex(v9.f6, |v13|)], true, p0, p0 ==> p0, v14[safeIndex(v9.f6, |v14|)] > v0];
		v15[safeIndex(105, v15.Length)] := !p0;
		v15[safeIndex(105, v15.Length)] := p0;
		r0 := p0;
	}
	var v16: array<map<bool, bool>> := new map<bool, bool>[4];
	forall i2 | 0 <= i2 < v16.Length {
		v16[i2] := (DC20(map[p0 := p0]).cf37 + map[p0 := p0]) + (map[true := p0] + map[p0 := true]);
	}
	globalState.f2 := v9.f6;
	r0 := p0;
	r1 := v0 + v9.f6;
	var v17 := 'v';
	r2 := v0 - v9.fm5(p0, v17, globalState);
	var v18: array<int> := new int[11];
	r3 := v18;
}
method Main() {
	var v0 := "wfs";
	var v1: seq<int> := [652, -|multiset{v0}|];
	var globalState := new GlobalState(0x34b, 0x22c, 833, 0x22f, seq(abs(0x246), i0  => ('c')), v1);
	v0 := v0;
	var v2 := false;
	var v3 := 'i';
	v2 := fm0(!v2, v3, globalState);
	v2 := v2;
	var v4: array<seq<bool>> := new seq<bool>[12](i1 => [v2, !v2, v2]);
	var v5 := -0x171;
	var v6: map<array<seq<bool>>, int> := map[v4 := fm1(0x56, !v2, globalState) - v5];
	globalState.f2 := if (v4 in v6) then v6[v4] else v5;
	var i2 := 0;
	while (fm0(true, v3, globalState))
		decreases 100 - i2
	{
		if (i2 >= 100) {
			break;
		}
		
		i2 := i2 + 1;
		var v7: map<int, bool> := map[v5 := v2];
		v7 := v7[-v5 := fm0(v2, v3, globalState)];
		globalState.f2 := v5;
		if (fm0(|v0| < |v7|, v3, globalState)) {
			v2 := false;
			var v8 := DC0(v2);
			var v9: array<bool> := new bool[29] [v2, !(map[v5 := v2] != v7), v2, v2, v2, v2, v2, v2, v2, v5 > v5, false, v2 ==> !v2, !(v5 > v5), |v7| <= v5, v2, v2, v2, v2, v2, v2, v2, v2, v2, v5 < v5, v2, v2, (v8.(cf0 := v2)).cf0, v2, v2];
			v9[safeIndex(344, v9.Length)] := if (v2) then !v2 else v2;
			v9[safeIndex(344, v9.Length)] := v2;
			v3 := v3;
			var v10: map<D0, int> := map[v8 := |v0|];
			v3 := fm2(v5 + v5, ([v10])[safeIndex(v5, |[v10]|) := v10], globalState);
			var v11: array<int> := new int[4](i3 => i3 * v5);
			v11[safeIndex(661, v11.Length)] := v5;
			v11[safeIndex(661, v11.Length)] := safeModuloInt(|[|v7|, v5, v5, v5, v5]|, v5 - v5);
		} else {
			var v12, v13, v14, v15 := m0(v2, globalState);
			v12 := v5 < |[v2, v12, v2, false]|;
			var v16: map<bool, bool> := map[v12 := v12];
			var v17: array<bool> := new bool[22] [v2, v13 != v14, v2, v2, fm0(v12, v3, globalState), v2, v12, 815 == 0x116, v2, v12, v2, fm0(v2, v3, globalState), true, v12, |v0| in [v13], fm0(v2, v3, globalState), v2, true, if (v12) then v2 else if (v12 in v16) then v16[v12] else !v2, if (v2) then v12 else v12, v12, v12];
			v17[safeIndex(37, v17.Length)] := fm0(fm0(v2, v3, globalState), v3, globalState);
			var v18: map<bool, char> := map[!v12 := v3];
			var v19: seq<map<bool, char>> := [v18, map[v12 := v3], v18, v18, v18];
			var v20: seq<bool> := [v2];
			var v21: set<seq<bool>> := {v20};
			var v22: multiset<map<bool, int>> := multiset{fm3(v12, v21, globalState) + map[v2 := |v0|]};
			var v23: set<int> := {v5};
			var v24: map<bool, int> := map[v12 := v13];
			var v25 := DC1(v12);
			v17[safeIndex(37, v17.Length)], v19, v13, v22, v2 := ({v14, v14} + v23) == v23, fm4(globalState), v14 * v14, v22[v24 := abs(v13)] * (v22 + v22), v25.cf1;
			v15 := if (v5 != v14) then v15 else v15;
			var v26: map<int, array<bool>> := map[safeDivisionInt(v14, 0x34) := v17];
			var v27 := DC2(v17);
			v17 := if ((v13 - v13) in v26) then v26[v13 - v13] else v27.cf2;
		}
		
		var v28: map<int, int> := map[v5 := -v5];
		var v29 := DC4(true, v3, [v28], v1, v5);
		v2, v2 := v29 in (map v30 : D1 | v30 in map[v29 := |"d"|] :: (v30) := (!v2)), v2;
	}
	var v31: seq<bool> := [v2, v2];
	var v32: seq<seq<bool>> := [v31];
	for i4 := |(v32 + v32)[safeIndex(|v32|, |(v32 + v32)|) := v31]| to v5 {
		var v33: array<array<int>> := new array<int>[5];
		var v34: array<int> := new int[13](i5 => i5 - i4);
		v33[safeIndex(613, v33.Length)] := v34;
		var v35: set<bool> := {v2};
		v33[safeIndex(613, v33.Length)], globalState.f2, v2, v2, globalState.f2 := v34, fm1(|multiset(v0)|, v5 > i4, globalState), (v35 - v35) != (v35 - {v2, v2}), safeDivisionInt(i4, i4) <= i4, v5;
		var v36: multiset<bool> := multiset{v2, v2, v2};
		v36 := v36;
		var v37: seq<array<int>> := [if (v2) then v34 else v34];
		v37 := v37;
		v0 := ((seq(abs(609), i6  => (v3))) + v0) + v0;
	}
	var i7 := 0;
	while (v2)
		decreases 100 - i7
	{
		if (i7 >= 100) {
			break;
		}
		
		i7 := i7 + 1;
		v2 := v2;
		var v38: map<int, bool> := map[-v5 := v2];
		if (if (safeModuloInt(v5, v5) in v38) then v38[safeModuloInt(v5, v5)] else v5 > 162) {
			globalState.f2 := fm1(v5, v5 <= 0x197, globalState);
			var v39: seq<string> := [v0, v0];
			var v40: map<int, int> := map[|v39[safeIndex(v5, |v39|)]| := v5];
			var v41: seq<map<int, int>> := [v40];
			var v42: multiset<bool> := multiset{v2};
			var v43 := DC4(v2, v3, v41, if (v2) then v1 else v1, -(|v42| * v5));
			v43 := v43;
			var v44, v45, v46, v47 := m0(v2, globalState);
			var v48 := new C1(|{v44, v2, v2, v44}|);
			var v49: array<seq<int>> := new seq<int>[12];
			var v50: map<array<seq<int>>, int> := map[v49 := v5];
			v50 := v50[if (v44) then v49 else v49 := safeDivisionInt(v46, -v5)];
		} else {
			var v51: C0 := new C0(0x293 + -v5, v1, v5);
			v51 := v51;
			var v52: C1 := new C1(v5);
			var v53: set<C1> := {v52};
			v2 := v52 in v53;
			var v54: array<array<int>> := new array<int>[1];
			var v55: array<int> := new int[24];
			v54[safeIndex(633, v54.Length)] := v55;
			v54[safeIndex(633, v54.Length)] := v55;
			var v56, v57, v58, v59 := m0(!v2, globalState);
			v0 := v0;
		}
		
		globalState.f2 := v5;
		var v60: set<bool> := {v2};
		var v61: multiset<set<bool>> := multiset{{!v2}, v60};
		globalState.f2 := if (v60 in v61) then v61[v60] else v5;
	}
	var v62 := new C1(v5);
	for i8 := v5 to -v5 {
		v2 := v2;
		var v63: map<int, C1> := map[|v31| := v62];
		var v64 := DC16(v63);
		var v65: C1 := new C1(|v64.cf30| - v62.f6);
		var v66: map<bool, int> := map[false := |v0|];
		var v67: map<int, int> := map[|v66| := v62.f6];
		var v68: seq<map<int, int>> := [v67];
		var v69 := DC4(v2, v3, v68, v1, v5);
		var v70: array<bool> := new bool[11] [v2, v2, v2, v2, v2, !v2, true, v69.cf7, if (v2) then v2 else v2, v2, v2];
		v70[safeIndex(208, v70.Length)] := !(v62.f6 > i8);
		var v71: map<bool, bool> := map[v2 := v2];
		v70[safeIndex(351, v70.Length)] := !(if (if (v2 in v71) then v71[v2] else v2) then v2 else v2);
		v65, v70[safeIndex(208, v70.Length)], v70[safeIndex(351, v70.Length)], v2 := v65, v2, safeDivisionInt(v65.f6, i8) != i8, v2;
		v70[safeIndex(208, v70.Length)] := v70[safeIndex(208, v70.Length)];
		var v72 := new C1(0x1b6);
	}
	if (v2) {
		var v73: set<bool> := {v2};
		var v74 := new C1(0x3cb + -v62.fm6(v73, globalState));
		var v75 := DC0(v2);
		v4, v5, globalState.f2, v2, v2 := v4, v74.f6, 0x3df, v31[safeIndex(|(v32[safeIndex(v5, |v32|)] + v31)|, |v31|)], v2 ==> (v75.cf0 <==> v2);
		globalState.f2, v73, v2 := v5, {v2}, true;
		globalState.f2 := v74.f6;
		var v76: set<int> := {v62.f6};
		var v77: map<bool, bool> := map[v5 >= |v76| := v2];
		var v78: C0 := new C0(v74.f6, seq(abs(840), i9  => (v74.f6)), v5);
		var v79: array<C0> := new C0[20] [v78, v78, v78, v78, v78, v78, v78, v78, v78, v78, v78, v78, v78, v78, v78, v78, v78, v78, v78, v78];
		var v80: map<array<C0>, int> := map[v79 := |v73|];
		var v81: seq<map<array<C0>, int>> := [v80];
		var v82: seq<seq<char>> := [v0];
		v77 := fm14(v5 * |[v74, v74]|, v74.f6, !(|v81[safeIndex(v5, |v81|)]| <= v78.fm10(v2, v3, v2, v82, globalState)), v62.f6, globalState);
	} else {
		var v83, v84, v85, v86 := m0(v2 && v2, globalState);
		v2 := v2 <== (-v85 > v5);
		var v87: T1 := new C0(v84, v1, v62.f6);
		var v88: seq<T1> := [v87, v87, v87, v87];
		v88 := v88;
		var v89: map<int, C1> := map[v84 := v62];
		var v90 := DC16(v89);
		var v91 := DC18(v90);
		var v92 := DC18(v90);
		var v93 := DC18(v91);
		var v94 := DC18(v93);
		v94 := v94;
		var v95: multiset<int> := multiset{v84, v5, v87.f8};
		var v96, v97, v98, v99 := v62.m1(v85, safeDivisionInt(0x3a1, |v95|), globalState);
	}
	
	var v100, v101, v102, v103 := v62.m1(|v31|, v62.f6, globalState);
	for i10 := v62.f6 to -0x70 {
		v5 := 0x307;
		if (v101) {
			var v104: array<bool> := new bool[6] [fm0(v101, v3, globalState), false, v100, v2, v101, v2];
			v104[safeIndex(798, v104.Length)] := v101 <== v2;
			v104[safeIndex(798, v104.Length)] := v2;
			var v105: set<bool> := {true, v2};
			var v106 := DC6(v0);
			var v107: array<multiset<int>> := new multiset<int>[10](i11 => multiset(v102));
			var v108 := DC9(v62.f6, v104, v106, v107, v31);
			var v109: map<int, bool> := map[v62.f6 := v104[safeIndex(798, v104.Length)]];
			var v110: multiset<int> := multiset{v5, i10, v62.f6, -v62.f6};
			var v111: array<int> := new int[15] [v5, -v62.f6, v5, |v102|, v62.f6, i10, i10, v62.f6, v62.f6, v62.fm6(v105, globalState), v62.f6, v108.cf19, i10, |v109|, |v110|];
			globalState.f2 := |(map[673 := v111] + map[v62.f6 := v111])|;
			var v112: array<array<seq<C1>>> := new array<seq<C1>>[3];
			var v113: seq<C1> := [v62];
			var v114: array<seq<C1>> := new seq<C1>[1] [v113];
			v112[safeIndex(380, v112.Length)] := v114;
			v112[safeIndex(380, v112.Length)] := v114;
			var v115: C0 := new C0(fm1(-0x338, v100, globalState), [-v5], v62.f6);
			var v116: seq<C0> := [v115];
			v115 := if (fm0(v104[safeIndex(798, v104.Length)], v103, globalState)) then v115 else v116[safeIndex(493, |v116|)];
			var v117: set<int> := {576};
			var v118: map<int, int> := map[|v117| := v5];
			var v119: seq<map<int, int>> := [map[0x274 := v62.f6]];
			var v121 := DC4(v2, 't', [v118, v118] + v119[safeIndex(if (v62.f6 in v118) then v118[v62.f6] else |v31|, |v119|) := map v120 : int | (0x37e <= v120) && (v120 < 0x28) :: (safeModuloInt(v120, v62.f6)) := (v115.f9)], v1 + v102[safeIndex(|v105|, |v102|) := v5], safeModuloInt(v5, v62.f6));
			v1, v121, globalState.f2 := v102, v121, i10;
		} else {
			var v122: C0 := new C0(866, v1, v62.f6);
			var v123: multiset<C0> := multiset{v122, v122, v122, v122, v122};
			var v124: seq<multiset<C0>> := [v123];
			var v125: map<bool, C0> := map[!(v123 in v124) := v122];
			v125 := v125;
			v100 := v0 == v0;
			var v126, v127, v128, v129 := v62.m1(v62.f6, v122.f9, globalState);
			v101 := !true;
			var v130: T0 := new C3(i10, v62, v128, -v5 * v122.fm13(globalState));
			var v131: map<C1, int> := map[v62 := v62.f6];
			var v132: map<bool, map<C1, int>> := map[true := v131 + v131];
			v130, v132 := v130, v132;
		}
		
		var v133: array<bool> := new bool[25](i12 => v2);
		v133[safeIndex(335, v133.Length)] := false;
		var v134: set<int> := {v62.fm5(v101, v103, globalState)};
		var v135: map<set<int>, seq<int>> := map[v134 := ([v62.f6])[safeIndex(v5, |[v62.f6]|) := v5]];
		v133[safeIndex(335, v133.Length)] := (v134 - v134) !in v135;
		var v136: C3 := new C3(v62.f6, v62, v1, v62.f6);
		var v137: array<D5> := new D5[8];
		var v138 := DC8(map[720 := i10]);
		var v140: set<char> := {v103, v103, v3, v103};
		var v141: map<int, int> := map[|(map v139 : char | v139 in v140 :: (v139) := (v5))| := v62.f6];
		v2, v136, v2, v137, v138 := v100, v136, v100, v137, DC8(v141);
	}
	var v142: map<int, seq<int>> := map[v5 := v102];
	var v143: map<bool, seq<int>> := map[v101 := v102];
	var v144: map<map<int, seq<int>>, int> := map[v142[fm1(v5, v2, globalState) := if (false in v143) then v143[false] else [v62.f6, v5]] := v5];
	v144 := v144[map[v5 := v102] + v142 := v5];
	v101 := fm0(v31[safeIndex(v5, |v31|)], v0[safeIndex(fm1(v62.f6, v100, globalState), |v0|)], globalState);
	var v145: seq<seq<char>> := [v0];
	var v146 := DC12(v145);
	match (v146) {
		case DC13() =>
			v2 := !fm0(v2 <==> v2, v3, globalState);
			var v147: array<string> := new string[17];
			v147[safeIndex(973, v147.Length)] := v0;
			var v149: T1 := new C0(|fm19(map[v62.f6 := 0x361], false, 0x37a, globalState)|, v1 + (seq(abs(0x14d), i13  => (|(set v148 : int | v148 in {v62.f6, v5} :: (safeModuloInt(v148, --|(seq(abs(0x30a), i14  => ('p')))|)))|))), -0x175);
			v147[safeIndex(973, v147.Length)], v100, v149 := v0, v101, v149;
			if (v101) {
				globalState.f2 := safeModuloInt(|v0|, 422);
				v149 := new C0(-0x231, v102, v62.f6);
				v2 := !(v5 !in multiset([v149.f8, v149.f8]));
				var v150: array<bool> := new bool[10];
				v150[safeIndex(759, v150.Length)] := v2;
				v150[safeIndex(759, v150.Length)] := v2;
				var v151: map<C1, int> := map[v62 := v62.f6];
				v5 := if (v150[safeIndex(759, v150.Length)]) then if (false) then v62.f6 else if (v62 in v151) then v151[v62] else v149.f8 else v149.f8;
			} else {
				var v152: array<bool> := new bool[17];
				var v153 := DC6("h");
				var v154: multiset<int> := multiset{-v62.f6};
				var v155: array<multiset<int>> := new multiset<int>[13] [v154, v154, v154, v154, multiset{v149.f8}, v154, v154, multiset(v149.f7), v154, v154, v154, multiset([v149.f8]), multiset(v149.f7)];
				var v156 := DC9(0x1e1, v152, v153, v155, v31);
				v156 := v156;
				v2 := v31[safeIndex(v149.f8, |v31|)];
				var v157: map<bool, bool> := map[v2 := false];
				var v158: multiset<bool> := multiset{v101};
				var v159 := DC7(v152, |v158|, -647, v149.f8);
				v149.f8 := if (!v2 ==> (if (v101 in v157) then v157[v101] else v100)) then v159.cf17 else v5;
				var v160, v161, v162, v163 := m0(v101, globalState);
				var v164: array<T1> := new T1[2];
				var v165: map<seq<bool>, array<T1>> := map[v31 + v31 := v164];
				v165 := if (false) then v165 else v165;
			}
			
			v147 := v147;
		case DC14() =>
			var v166: map<D0, int> := map[DC0(true) := v62.f6];
			var v167: C2 := new C2(v1, v5);
			var v168: T1 := new C0(4, v1, |v0|);
			var v169: map<int, T1> := map[|v0| := v168];
			var v170: T1 := new C0(v5, [v5], |v169|);
			var v171 := DC19(v170);
			var v172: map<C2, T1> := map[v167 := v171.cf36];
			var v173: array<int> := new int[25] [-v62.f6, v62.f6, v62.f6, v62.f6 + v62.f6, v62.f6, |v166|, v5, v62.f6, v5, v62.f6 * v1[safeIndex(|v145[safeIndex(|v0|, |v145|)]|, |v1|)], v62.f6, v62.f6 * v5, v62.f6 * -v62.f6, -v62.f6, v62.f6, v5, v62.f6, v5, v62.f6, safeDivisionInt(|v172|, -0x281), -v62.f6, v62.f6, v5, |([v101])[safeIndex(v62.f6, |[v101]|) := v100]|, v167.fm18(fm0(v100, v3, globalState), globalState)];
			v173, v170.f8 := v173, v168.f8;
			var v174: set<bool> := {v100};
			var v175: map<bool, int> := map[true := v170.f7[safeIndex(v62.fm6(v174, globalState), |v170.f7|)]];
			var v176: multiset<int> := multiset{-v170.f8, |v175|, v62.f6};
			v5 := safeDivisionInt(v5, if (v170.f8 in v176) then v176[v170.f8] else v170.f8);
			var v177 := new C2(v170.f7, v168.f8);
			var v178: array<bool> := new bool[26];
			var v179: map<bool, array<bool>> := map[v2 := v178];
			var v180 := DC2(if (v2 in v179) then v179[v2] else v178);
			match (v180) {
				case DC3(cf3, cf4, cf5, cf6) =>
					var v181, v182, v183, v184 := v62.m1(0x3a0 + v62.f6, 0xdd, globalState);
					v181 := fm0(v100, v103, globalState);
					v173[safeIndex(823, v173.Length)] := v170.f8;
					v173[safeIndex(823, v173.Length)] := cf4;
					globalState.f2 := safeModuloInt(-0x65, 121) + v5;
				case DC4(cf7, cf8, cf9, cf10, cf11) =>
					var v185, v186, v187, v188 := m0(v101, globalState);
					var v189: array<T0> := new T0[10];
					var v190: map<char, array<T0>> := map[cf8 := v189];
					var v191: array<array<T0>> := new array<T0>[17] [v189, v189, v189, v189, v189, v189, v189, v189, v189, v189, v189, v189, v189, v189, v189, if (cf7) then v189 else v189, if (cf8 in v190) then v190[cf8] else v189];
					v191[safeIndex(467, v191.Length)] := v189;
					v191[safeIndex(467, v191.Length)] := v189;
					v103 := v103;
					var v192: map<array<bool>, int> := map[v178 := v62.f6];
					v101 := v192 == (map[v178 := v5] + v192);
				case DC2(cf2) =>
					var v193: array<C1> := new C1[17];
					v177.m3(0x32e < v170.f8, v193, [v173], map[v62.f6 := v100], globalState);
					var v194, v195, v196, v197 := v62.m1(0x3e4 - v62.f6, v168.f8, globalState);
					v101 := !v194;
					v2 := v2;
				case DC5(cf12) =>
					var v198, v199, v200, v201 := m0(v101, globalState);
					var v202: set<array<int>> := {v173, v201};
					var v203 := new C3(safeDivisionInt(|v202|, 0x2a7), v62, v170.f7, v199);
					var v204: set<int> := {0x200, |v31|, v168.f8, v199, -32};
					v204 := v204;
					v201 := v201;
			}
			
		case DC12(cf28) =>
			var v205: array<seq<D1>> := new seq<D1>[16];
			v205 := v205;
			v2 := v2 || false;
			var v206: set<seq<bool>> := {[false, v100, v101]};
			var v207: map<bool, set<seq<bool>>> := map[v101 := v206];
			var v208: map<bool, int> := map[!v101 := v62.f6];
			var v209: map<bool, map<bool, int>> := map[v2 := fm3(v100, if (false in v207) then v207[false] else v206, globalState) + v208];
			var v210: seq<map<bool, map<bool, int>>> := [v209, v209, v209 + v209, map[v101 := v208], v209];
			v209 := v210[safeIndex(v62.f6, |v210|)];
			var v211 := new C1(|v0|);
		case DC15(cf29) =>
			globalState.f2 := v62.f6;
			globalState.f2 := safeDivisionInt(v5, v62.f6);
			var v212: array<int> := new int[12](i15 => safeDivisionInt(i15, DC3(!v101, v62.f6, v62.f6, v101).cf5));
			var v213: map<array<int>, bool> := map[v212 := v101];
			var v214 := DC17(v62.f6, |v213|, v62.f6, v101);
			var v215 := DC18(v214);
			v215 := v215;
			var v216: array<map<bool, int>> := new map<bool, int>[29](i16 => map[v2 := |v31|]);
			var v217: map<array<map<bool, int>>, string> := map[v216 := "nqxmpfl"];
			v217 := v217[if (v101) then v216 else v216 := v0 + v0];
	}
	
	var v218: array<int> := new int[7](i18 => i18 - |v0|);
	for i17 := v62.f6 to |map[v218 := v3]| + v62.f6 {
		var v219: array<string> := new string[4](i19 => v0);
		v219[safeIndex(402, v219.Length)] := "fijm";
		v219[safeIndex(402, v219.Length)] := v0;
		v100 := v2;
		v101 := !v101 ==> false;
		var v220: map<bool, int> := map[v5 < v62.f6 := |(v0 + v219[safeIndex(402, v219.Length)])|];
		v220 := v220[v101 := v5];
	}
	print v0, "\n";
	print v1 == [-369, -369], "\n";
	print globalState.f0, "\n";
	print globalState.f1, "\n";
	print globalState.f2, "\n";
	print globalState.f3, "\n";
	print globalState.f4 == ['c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c'], "\n";
	print globalState.f5 == [652, -1], "\n";
	print v2, "\n";
	print v3, "\n";
	print v4[0] == [true, false, true], "\n";
	print v4[1] == [true, false, true], "\n";
	print v4[2] == [true, false, true], "\n";
	print v4[3] == [true, false, true], "\n";
	print v4[4] == [true, false, true], "\n";
	print v4[5] == [true, false, true], "\n";
	print v4[6] == [true, false, true], "\n";
	print v4[7] == [true, false, true], "\n";
	print v4[8] == [true, false, true], "\n";
	print v4[9] == [true, false, true], "\n";
	print v4[10] == [true, false, true], "\n";
	print v4[11] == [true, false, true], "\n";
	print v5, "\n";
	print |v6|, "\n";
	print i2, "\n";
	print v31 == [false, false], "\n";
	print v32 == [[false, false]], "\n";
	print i7, "\n";
	print v62.f6, "\n";
	print v100, "\n";
	print v101, "\n";
	print v102 == [-369, -369], "\n";
	print v103, "\n";
	print v142 == map[775 := [-369, -369]], "\n";
	print v143 == map[true := [-369, -369]], "\n";
	print v144 == map[map[775 := [-369, -369], 3 := [-369, 775]] := 775, map[775 := [-369, -369]] := 775], "\n";
	print v145 == ["wfs"], "\n";
	print v146.cf28 == ["wfs"], "\n";
	print v218[0], "\n";
	print v218[1], "\n";
	print v218[2], "\n";
	print v218[3], "\n";
	print v218[4], "\n";
	print v218[5], "\n";
	print v218[6], "\n";
}