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
datatype D0 = DC1 | DC2(cf1: bool, cf2: seq<bool>, cf3: bool) | DC0(cf0: set<array<int>>) | DC3(cf4: D0)
datatype D1 = DC5(cf6: bool) | DC6(cf7: int, cf8: bool, cf9: char) | DC7(cf10: int) | DC4(cf5: int) | DC8(cf11: D1)
datatype D2 = DC10(cf13: string) | DC11(cf14: array<seq<char>>) | DC9(cf12: array<array<bool>>)
datatype D3 = DC13(cf16: bool, cf17: bool, cf18: int, cf19: int, cf20: array<int>) | DC12(cf15: set<bool>)
datatype D4 = DC15(cf22: bool, cf23: seq<C0>, cf24: int, cf25: int, cf26: bool) | DC14(cf21: multiset<int>) | DC16(cf27: D4)
datatype D5 = DC17(cf28: array<D4>)
datatype D6 = DC19(cf30: bool, cf31: bool, cf32: bool, cf33: int, cf34: map<int, map<bool, int>>) | DC20(cf35: bool, cf36: bool) | DC18(cf29: C0) | DC21(cf37: D6)
datatype D7 = DC23 | DC24(cf39: int, cf40: int, cf41: bool, cf42: D0, cf43: int) | DC25(cf44: map<set<int>, bool>) | DC22(cf38: map<int, bool>) | DC26(cf45: D7)
class GlobalState {
	const f0 : int
	const f1 : int
	const f2 : bool
	const f3 : int
	var f4 : int
	var f5 : int
	var f6 : bool
	const f7 : bool
	const f8 : char
	const f9 : int
	const f10 : bool
	var f11 : map<int, int>
	const f12 : int
	const f13 : array<seq<bool>>
	const f14 : set<array<int>>
	var f15 : seq<int>
	var f16 : bool
	const f17 : string
	var f18 : char
	const f19 : int
	constructor (f0 : int, f1 : int, f2 : bool, f3 : int, f4 : int, f5 : int, f6 : bool, f7 : bool, f8 : char, f9 : int, f10 : bool, f11 : map<int, int>, f12 : int, f13 : array<seq<bool>>, f14 : set<array<int>>, f15 : seq<int>, f16 : bool, f17 : string, f18 : char, f19 : int) {
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
		this.f16 := f16;
		this.f17 := f17;
		this.f18 := f18;
		this.f19 := f19;
	}
	
}

class C0 {
	const f20 : char
	const f21 : D0
	constructor (f20 : char, f21 : D0) {
		this.f20 := f20;
		this.f21 := f21;
	}
	
	function fm0(globalState: GlobalState): bool {
		false
	}
	function fm1(p0: int, p1: bool, p2: int, p3: bool, globalState: GlobalState): int {
		|((map[|multiset([!!true])| := |(seq(abs(0x164), i0  => (f20)))|] + map[--|multiset([true])| := -|{true}|]) + (map[|"htoxjvyle"| := 0x26d] + map[DC4(-0x2d).cf5 := |"tii"|]))|
	}
}

function fm2(p0: bool, p1: int, p2: set<bool>, globalState: GlobalState): char {
	match DC12({false, DC2(true, [!false], true).cf1}) {
		case DC13(cf16, cf17, cf18, cf19, cf20) => 'c'
		case DC12(cf15) => 'm'
	}
}
function fm3(globalState: GlobalState): seq<int> {
	[|({false} - {false})|]
}
function fm4(p0: int, p1: bool, p2: string, globalState: GlobalState): string {
	if (false && !!false) then "umf" else "ntfeqihsq"
}
function fm5(p0: bool, p1: bool, globalState: GlobalState): map<bool, int> {
	map[false := 0x1a9] + map[true := |[-0x85]|]
}
function fm6(p0: bool, p1: bool, p2: bool, globalState: GlobalState): multiset<int> {
	multiset{0x3c4, -0xde - 0x2f5, 0x197, 542}
}
function fm7(p0: string, p1: set<set<bool>>, p2: int, globalState: GlobalState): map<int, bool> {
	DC22(map[|"bdqq"| := !true]).cf38
}
function fm8(p0: bool, p1: int, globalState: GlobalState): seq<bool> {
	DC2(false, [false, true, !false], false).cf2
}
function fm9(p0: bool, globalState: GlobalState): D2 {
	DC10(if (true) then "qevr" else DC10(seq(abs(76), i0  => ('n'))).cf13)
}
function fm10(p0: int, p1: int, p2: char, globalState: GlobalState): map<char, int> {
	map['c' := |map[true := true]|] + (map['y' := |(map v0 : int | (0x230 <= v0) && (v0 < 0x2c7) :: (v0 - |map[false := |map[false := -695]|]|) := (false))|] + map['c' := |(seq(abs(-91), i0  => ('o')))|])
}
function fm11(p0: bool, globalState: GlobalState): D4 {
	match DC7(|[!!false, !true, true, true]|) {
		case DC5(cf6) => DC14(multiset{|map[163 := true]|})
		case DC6(cf7, cf8, cf9) => DC14(multiset{cf7})
		case DC7(cf10) => DC14(multiset{cf10, cf10})
		case DC4(cf5) => DC14(multiset([|[false]|]))
		case DC8(cf11) => DC14(multiset{--|[|[|map[|[true]| := 'n']|, |[|map[0x61 := !false]|]|]|]|})
	}
}
method m0(globalState: GlobalState) returns (r0: array<array<bool>>, r1: bool) {
	var v0 := 'q';
	var v1 := DC1();
	var v2: C0 := new C0(v0, v1);
	var v3: seq<C0> := [v2, v2];
	var v4 := 0x149;
	var v5 := false;
	var v6 := DC15(!false, v3[safeIndex(v4, |v3|) := v2], v4, 0x1a3, v5 ==> v5);
	match (v6) {
		case DC15(cf22, cf23, cf24, cf25, cf26) =>
			var v7: array<seq<int>> := new seq<int>[9];
			v7[safeIndex(829, v7.Length)] := [cf24];
			var v8: seq<int> := [cf24];
			v7[safeIndex(829, v7.Length)] := v8;
			globalState.f5 := cf24;
			var v9: array<int> := new int[13](i0 => i0 - |map[cf24 := cf24]|);
			v9[safeIndex(519, v9.Length)] := cf25;
			v9[safeIndex(519, v9.Length)] := v4;
			var v10: seq<bool> := [v5];
			var v11 := "ex";
			var v12: set<string> := {v11};
			var v13: map<int, bool> := map[v9[safeIndex(519, v9.Length)] := v5];
			var v14: array<bool> := new bool[21] [cf22, cf22, if (!cf26) then v10[safeIndex(0x2c3, |v10|)] else v2.fm0(globalState), cf22, false, v2.fm0(globalState), -0xa == v9[safeIndex(519, v9.Length)], v5, cf22, v10[safeIndex(|v12|, |v10|)], !cf22, v2.fm0(globalState), cf22, v5, cf24 == cf24, !v2.fm0(globalState), v5, v2.fm0(globalState), cf26, cf22, (if (cf25 in v13) then v13[cf25] else cf26) || v5];
			v14[safeIndex(611, v14.Length)] := !cf22 <== cf22;
			var v15: array<map<char, int>> := new map<char, int>[29];
			v15[safeIndex(728, v15.Length)] := fm10(-v4, v4, v0, globalState);
			var v17: set<char> := {v0, v2.f20};
			var v18: map<char, int> := map['f' := cf25];
			var v19: seq<map<char, int>> := [fm10(cf25, v9[safeIndex(519, v9.Length)], 'r', globalState), map[v0 := cf24], v18, v18, map['d' := v4]];
			v14[safeIndex(611, v14.Length)], v15[safeIndex(728, v15.Length)], r1, v10 := cf22, ((map v16 : char | v16 in v17 :: (v16) := (v9[safeIndex(519, v9.Length)])) + v18) + v19[safeIndex(871, |v19|)], v5, fm8(v5, if (cf22) then v4 else cf24, globalState);
		case DC14(cf21) =>
			v2 := v2;
			var v20: array<bool> := new bool[1] [v5];
			v20[safeIndex(267, v20.Length)] := v5;
			var v21: set<char> := {v2.f20, v0};
			v20[safeIndex(267, v20.Length)] := v0 !in (v21 - v21);
			globalState.f4 := v4;
			globalState.f5 := v4;
		case DC16(cf27) =>
			if (v5) {
				v2 := v2;
				var v22: multiset<C0> := multiset{v2, v2, v2, v2, v2};
				var v23 := DC7(v4);
				var v24: map<bool, int> := map[v5 := v4];
				var v25 := DC6(v4, v5, v2.f20);
				globalState.f6, globalState.f4, v22 := if (v5 && v5) then -v23.cf10 != (if (v5 in v24) then v24[v5] else v4) else v5 <==> v5, v25.cf7, v22;
				globalState.f4 := safeDivisionInt(v4, v4);
				globalState.f18 := v2.f20;
				var v26: seq<char> := [v2.f20];
				var v27: seq<string> := [v26, v26, "h"];
				var v28: map<bool, char> := map[v5 := v26[safeIndex(|v27|, |v26|)]];
				v28 := v28[v5 <==> v5 := v2.f20];
			} else {
				v2 := v2;
				globalState.f16 := v5;
				var v29: multiset<int> := multiset{679};
				var v30 := DC14(v29);
				v30 := fm11(v5, globalState);
				var v31 := new C0(v2.f20, v1);
				var v32: array<bool> := new bool[29](i1 => v5);
				v32[safeIndex(186, v32.Length)] := v5;
				v32[safeIndex(186, v32.Length)] := v31.fm0(globalState);
			}
			
			var v33: array<string> := new string[27];
			var v34: map<array<string>, bool> := map[v33 := v5];
			v34 := v34[if (v5) then v33 else v33 := v2.fm0(globalState)];
			var v35: seq<char> := [v2.f20, v2.f20];
			v33[safeIndex(526, v33.Length)] := v35 + [v0];
			var v36 := DC16(DC15(v5, v3, |v35|, v4, v5));
			var v37: map<bool, int> := map[v5 := 0x143];
			var v38: set<bool> := {v5, true, v5, v5};
			var v39: seq<int> := [|v37|, |v38|];
			var v40 := DC14(multiset{|v39|});
			var v41: multiset<D4> := multiset{v36, v36, DC16(v40), DC16(v40), DC16(v40)};
			v33[safeIndex(526, v33.Length)] := v35[safeIndex(if (v36 in v41) then v41[v36] else |v35|, |v35|) := v0];
			globalState.f6 := false && v5;
	}
	
	var i2 := 0;
	while (v5)
		decreases 100 - i2
	{
		if (i2 >= 100) {
			break;
		}
		
		i2 := i2 + 1;
		var v42: map<bool, bool> := map[v5 := v5];
		var v43: map<map<bool, bool>, bool> := map[v42 := v5];
		var v45: multiset<bool> := multiset{v5, v5};
		var v46: map<map<bool, bool>, multiset<bool>> := map[v42 := v45];
		v0, v2, globalState.f4, v43, globalState.f6 := v2.f20, v2, v4, (map v44 : map<bool, bool> | v44 in v46 :: (v44) := (!v5)) + v43, v5;
		if (v2.fm0(globalState)) {
			var v47: array<int> := new int[8];
			var v48: multiset<string> := multiset{"kkkbsqthi"};
			var v49: map<array<int>, multiset<string>> := map[v47 := v48];
			v49 := v49[v47 := v48];
			var v50 := DC18(v2);
			var v51: map<bool, C0> := map[v5 := v2];
			var v52: array<C0> := new C0[27] [v2, v2, v2, v2, v2, v2, v2, v2, v2, v50.cf29, v2, v2, v2, v2, v2, v2, v2, v2, v2, v2, v3[safeIndex(v4, |v3|)], v2, v2, if (v5) then if (v5 in v51) then v51[v5] else v2 else v2, v2, v2, v2];
			v52[safeIndex(933, v52.Length)] := v2;
			v52[safeIndex(933, v52.Length)] := new C0(v2.f20, v1);
			var v53: seq<int> := [v4, -v4];
			globalState.f15 := v53 + v53;
			v47 := v47;
			v52[safeIndex(933, v52.Length)] := v2;
		} else {
			var v54: array<array<int>> := new array<int>[1];
			v54 := v54;
			v4 := v4;
			var v55: seq<int> := [v4, v4, v4, v4];
			var v56: seq<seq<int>> := [v55];
			v56 := v56;
			globalState.f16 := v5;
			var v57: array<bool> := new bool[24](i3 => (seq(abs(0x1f1), i4  => (v2.f20))) != (seq(abs(0x29), i5  => (v0))));
			var v58: map<int, bool> := map[v4 := v5];
			var v59: map<C0, bool> := map[v2 := v5];
			globalState.f6, v57 := (if (|v59| in v58) then v58[|v59|] else !v5) ==> v2.fm0(globalState), v57;
		}
		
		var v60 := "jypjix";
		var v61: map<int, string> := map[v4 := v60];
		var v62: multiset<char> := multiset{v2.f20};
		var v63: seq<bool> := [v5];
		v60, v2, globalState.f4, v5, globalState.f16 := v60 + ("pno" + v60), DC18(v2).cf29, |v61| * ((if (v2.f20 in v62) then v62[v2.f20] else v4) - -v4), !!(v42 != v42), (v5 in v63) <== v5;
		var v64 := new C0(v2.f20, if (v5) then v2.f21 else v2.f21);
	}
	var v65: seq<bool> := [v5, v5, v5, v5, v5];
	var v66: seq<bool> := [v65[safeIndex(834, |v65|)]];
	var v67 := DC2(v5, v66, v5);
	var v68: seq<D0> := [v67, v67, v67, v67];
	var v69 := "ono";
	var v70 := DC3(v68[safeIndex(|v69|, |v68|)]);
	v70, v69 := v70.(cf4 := v70.cf4).(cf4 := v67), "a";
	var v71 := new C0(v2.f20, v1);
	v0 := v71.f20;
	var v72: array<seq<array<int>>> := new seq<array<int>>[15];
	var v73: array<int> := new int[11];
	var v74: seq<array<int>> := [v73];
	v72[safeIndex(928, v72.Length)] := v74;
	globalState.f5, v72[safeIndex(928, v72.Length)], globalState.f5 := v4, v74, v4;
	var v75: array<array<bool>> := new array<bool>[26];
	r0 := v75;
	var v76: map<int, C0> := map[v4 := v71];
	r1 := v4 !in v76;
}
method Main() {
	var v0 := 0x3ad;
	var v1: seq<int> := [v0, v0];
	var v2: map<int, int> := map[-v1[safeIndex(v0, |v1|)] := v0];
	var v3: array<seq<bool>> := new seq<bool>[28](i0 => [!false, !true, false]);
	var v4: array<int> := new int[15];
	var v5: set<array<int>> := {v4, v4};
	var v6 := DC0(v5);
	var v7: set<int> := {0x3d5};
	var v8 := "ectrxqq";
	var globalState := new GlobalState(-0x4e, 0x27f, true, 0x329, 0xa1, -0x18f, false, true, 'v', -929, false, v2, 0xaa, v3, v6.cf0, v1[safeIndex(|v7|, |v1|) := v0], true, v8, 'x', 897);
	var v9 := true;
	globalState.f16 := v9;
	var v10 := 'k';
	var v11: set<string> := {(seq(abs(0xb7), i1  => ('j')))[safeIndex(|v8|, |(seq(abs(0xb7), i1  => ('j')))|) := v10], "fgdbcxkn" + v8, v8};
	v11 := v11;
	globalState.f5 := safeDivisionInt(v0, v0);
	var v12: seq<bool> := [false, v9, v9];
	var v13: map<bool, int> := map[v12[safeIndex(-919, |v12|)] := -|v8|];
	for i2 := |multiset{v0, -v0}| to |v13| {
		var v14: map<int, bool> := map[i2 := v0 < v0];
		globalState.f16 := if ((i2 + |multiset(v1)|) in v14) then v14[i2 + |multiset(v1)|] else v9;
		var v15, v16 := m0(globalState);
		var v17: set<bool> := {v9};
		var v18 := DC1();
		var v19 := new C0(fm2(v9, v0, v17, globalState), v18);
		v4[safeIndex(228, v4.Length)] := |map[v17 := v0]|;
		v8, v16, v4[safeIndex(228, v4.Length)], globalState.f4, globalState.f5 := v8, v16, safeModuloInt(v0, if (v19.fm1(i2, v9, |fm3(globalState)|, v9, globalState) in v2) then v2[v19.fm1(i2, v9, |fm3(globalState)|, v9, globalState)] else i2), -i2, |{v9}|;
	}
	var v20: array<C0> := new C0[26];
	var v21 := DC1();
	var v22: C0 := new C0(v10, v21);
	v20[safeIndex(592, v20.Length)] := v22;
	v20[safeIndex(592, v20.Length)] := v22;
	var v23: array<bool> := new bool[2];
	v23 := v23;
	v4[safeIndex(814, v4.Length)] := -0x195;
	v4[safeIndex(814, v4.Length)] := v0;
	var v24: map<bool, char> := map[v9 := v10];
	var v25: map<C0, map<bool, char>> := map[v20[safeIndex(592, v20.Length)] := v24];
	var v26: map<map<C0, map<bool, char>>, array<bool>> := map[v25 := v23];
	v26 := v26[map[v20[safeIndex(592, v20.Length)] := v24] := v23];
	var v27: map<int, bool> := map[v4[safeIndex(814, v4.Length)] := v9];
	v27 := v27 + ((map v28 : int | (-0x32f <= v28) && (v28 < -0x3a7) :: (v28 + v4[safeIndex(814, v4.Length)]) := (v9)) + map[v0 := v9]);
	var v29: multiset<int> := multiset{v0};
	var v30: set<bool> := {v9, v9, v9};
	for i3 := -0x1b to |v29[|[v0, |v30|]| := abs(v4[safeIndex(814, v4.Length)])]| {
		var v31 := new C0(if (v9 in v24) then v24[v9] else v10, v21);
		v22 := v20[safeIndex(592, v20.Length)];
		globalState.f16 := v9;
		v23[safeIndex(347, v23.Length)] := v9;
		globalState.f16, v23[safeIndex(347, v23.Length)] := if (v9) then v9 else v9, !(v8 == (fm4(|v1|, v9, "sejdhcul", globalState) + v8));
	}
	globalState.f5 := v0 - v4[safeIndex(814, v4.Length)];
	if (v9) {
		v4[safeIndex(814, v4.Length)] := -safeModuloInt(708, -v4[safeIndex(814, v4.Length)]);
		globalState.f6 := v0 < v4[safeIndex(814, v4.Length)];
		var v32: multiset<array<int>> := multiset{v4, v4, v4};
		var v33: map<bool, bool> := map[v9 := v9];
		var v34: array<multiset<array<int>>> := new multiset<array<int>>[14] [v32, (multiset{v4, v4, v4})[v4 := abs(|v33|)], v32 * v32[v4 := abs(v4[safeIndex(814, v4.Length)])], multiset{v4} * v32, v32, v32, v32, multiset{v4}, if (v9) then v32 else v32, v32, multiset{v4}, v32[v4 := abs(v0)], v32, v32];
		v34[safeIndex(446, v34.Length)] := v32;
		v10, v34[safeIndex(446, v34.Length)], globalState.f16, globalState.f4, globalState.f5 := v22.f20, (v32 * v32) * (v32 - v32), !false, v4[safeIndex(814, v4.Length)], v0;
		if (v9) {
			var v35, v36 := m0(globalState);
			var v37 := DC5(false);
			v37 := v37;
			v4[safeIndex(814, v4.Length)] := v0;
			globalState.f16 := false;
			var v38 := DC6(v0, v9, v22.f20);
			v36 := (if (v22.fm0(globalState)) then -395 else (v38.(cf8 := v36, cf9 := fm2(v36, v4[safeIndex(814, v4.Length)], {v9, v36}, globalState))).cf7) >= |v12|;
		} else {
			var v39: array<array<bool>> := new array<bool>[10];
			var v40: map<C0, array<array<bool>>> := map[v22 := v39];
			var v41 := DC9(v39);
			var v42: seq<array<array<bool>>> := [v39, v39, v39];
			var v43: array<array<array<bool>>> := new array<array<bool>>[29] [v39, v39, v39, v39, v39, v39, v39, if (v22 in v40) then v40[v22] else v39, v39, v39, v39, if (v9) then v39 else v39, v41.cf12, v39, v42[safeIndex(v4[safeIndex(814, v4.Length)], |v42|)], v39, v41.cf12, v39, v39, v39, v39, v39, v39, v39, v42[safeIndex(|map[!v9 := !v9]|, |v42|)], v39, v39, v39, v39];
			v43[safeIndex(18, v43.Length)] := v39;
			v43[safeIndex(18, v43.Length)] := v39;
			var v44: map<int, multiset<int>> := map[v4[safeIndex(814, v4.Length)] := v29];
			var v45: array<multiset<int>> := new multiset<int>[12] [v29, v29 - v29, v29[v0 := abs(v4[safeIndex(814, v4.Length)])] + multiset{|v8|}, v29 + v29, v29, v29, v29 - v29, v29, v29, multiset{v4[safeIndex(814, v4.Length)], v0, v0, v0, v4[safeIndex(814, v4.Length)]}, (if (v0 in v44) then v44[v0] else v29)[v4[safeIndex(814, v4.Length)] := abs(v0)] - multiset{v0}, multiset(v1)];
			v45[safeIndex(924, v45.Length)] := v29;
			globalState.f5, v45[safeIndex(924, v45.Length)] := safeModuloInt(v4[safeIndex(814, v4.Length)], |{v23}|), multiset{safeModuloInt(v0, |v8|), v0, v0};
			v9 := v22.fm0(globalState);
			v9 := v9;
			globalState.f16 := v9;
		}
		
		globalState.f5 := v0;
	} else {
		var v46: seq<array<bool>> := [v23, v23];
		var v47: map<int, array<bool>> := map[v0 := v23];
		var v48: array<array<bool>> := new array<bool>[14] [v23, v23, v23, v23, v23, v23, v23, v46[safeIndex(v0, |v46|)], v23, v23, v23, v23, if (v4[safeIndex(814, v4.Length)] in v47) then v47[v4[safeIndex(814, v4.Length)]] else v23, v23];
		v48[safeIndex(147, v48.Length)] := v46[safeIndex(v22.fm1(v0, v9, -0x9e, false, globalState), |v46|)];
		v22, globalState.f5, v48[safeIndex(147, v48.Length)] := v22, safeModuloInt(-729, v0), v23;
		match (DC7(v0)) {
			case DC5(cf6) =>
				var v49: seq<C0> := [v22];
				globalState.f16 := |v49| == -167;
				var v50: array<map<bool, int>> := new map<bool, int>[16](i4 => map[cf6 := v0]);
				globalState.f5, globalState.f5, v50, globalState.f5 := v0 - v22.fm1(v22.fm1(0x14b, cf6, v0, !v9, globalState), v9, v4[safeIndex(814, v4.Length)], v9, globalState), safeModuloInt(-|fm5(v9, v9, globalState)|, v0), v50, v4[safeIndex(814, v4.Length)];
				var v51: multiset<C0> := multiset{v20[safeIndex(592, v20.Length)], v20[safeIndex(592, v20.Length)]};
				v4[safeIndex(814, v4.Length)] := v4[safeIndex(814, v4.Length)] + |v51|;
				var v52 := new C0(v22.f20, DC1());
			case DC6(cf7, cf8, cf9) =>
				globalState.f6 := cf8 && cf8;
				var v53 := new C0(v10, DC1());
				var v54, v55 := m0(globalState);
				var v56 := new C0(v22.f20, v53.f21);
			case DC7(cf10) =>
				globalState.f16 := v9;
				var v57: array<string> := new string[10] [v8, v8 + "sumajaqj", seq(abs(329), i5  => ('j')), fm4(v4[safeIndex(814, v4.Length)], v9, v8, globalState), v8, v8, v8, v8, seq(abs(-0x29d), i6  => (v22.f20)), v8[safeIndex(cf10, |v8|) := v22.f20]];
				v57 := v57;
				var v58, v59 := m0(globalState);
				v4[safeIndex(814, v4.Length)] := v0;
			case DC4(cf5) =>
				var v60 := new C0(v22.f20, DC1());
				var v61 := new C0('w', v21);
				globalState.f6 := (v9 || v9) ==> true;
				var v62 := DC12(v30);
				var v63: seq<set<bool>> := [v62.cf15, {v9, v9, v9}];
				globalState.f4 := -|((v63[safeIndex(cf5, |v63|)] - v30) - v30)|;
			case DC8(cf11) =>
				globalState.f16 := v9;
				globalState.f18 := v22.f20;
				v23[safeIndex(784, v23.Length)] := v9;
				v23[safeIndex(784, v23.Length)] := v9 !in v12;
				var v64, v65 := m0(globalState);
		}
		
		v48[safeIndex(147, v48.Length)][safeIndex(241, v48[safeIndex(147, v48.Length)].Length)] := v9;
		v48[safeIndex(147, v48.Length)][safeIndex(241, v48[safeIndex(147, v48.Length)].Length)] := v9;
		var v66: map<int, C0> := map[v0 := v20[safeIndex(592, v20.Length)]];
		globalState.f16 := |v66| <= 457;
		v8 := v8;
	}
	
	var v67 := DC13(v9, v9, -194, 0x2, v4);
	v4[safeIndex(814, v4.Length)] := -(v0 - v67.cf18);
	globalState.f4 := safeDivisionInt(v0, v0);
	if (v9) {
		globalState.f16 := !v9;
		globalState.f16 := v22.fm0(globalState);
		globalState.f18 := if (v9) then v10 else v22.f20;
		var v68 := DC14(v29);
		if ((fm6(v9, v9, v9, globalState) != v68.cf21) ==> false) {
			var v69: array<array<bool>> := new array<bool>[14] [v23, v23, v23, v23, v23, v23, v23, v23, v23, v23, v23, v23, if (v9) then v23 else v23, v23];
			v69[safeIndex(314, v69.Length)] := v23;
			v69[safeIndex(314, v69.Length)] := new bool[22];
			globalState.f4 := safeDivisionInt(v67.cf18, |v27| + v4[safeIndex(814, v4.Length)]);
			v10 := v10;
			globalState.f6, v4[safeIndex(814, v4.Length)] := v9, -v4[safeIndex(814, v4.Length)];
			var v70: map<map<set<bool>, array<bool>>, bool> := map[map[v30 := v69[safeIndex(314, v69.Length)]] := v9];
			var v71: map<set<bool>, array<bool>> := map[v30 := v23];
			v70 := v70[v71 := v9];
		} else {
			globalState.f5 := v4[safeIndex(814, v4.Length)];
			v4[safeIndex(814, v4.Length)] := safeDivisionInt(0x24a, 0x26b);
			v29 := v29;
			var v72: multiset<bool> := multiset{v9};
			globalState.f16 := v0 <= (v0 * |v72|);
			var v73: map<array<bool>, bool> := map[v23 := v9];
			globalState.f5 := -(|v73| - v4[safeIndex(814, v4.Length)]);
		}
		
		globalState.f18 := v22.f20;
	} else {
		var v74: multiset<bool> := multiset{v9};
		globalState.f5 := safeModuloInt(-v4[safeIndex(814, v4.Length)], if (v9 in v74) then v74[v9] else v0);
		v27 := v27[v22.fm1(v4[safeIndex(814, v4.Length)], v9, v0, v9, globalState) := v9];
		if (v9) {
			v4[safeIndex(814, v4.Length)] := 463 * (v4[safeIndex(814, v4.Length)] + v0);
			var v75 := new C0('r', v22.f21);
			globalState.f4 := safeModuloInt(|v8|, v0) * |v2|;
			globalState.f6, globalState.f5, v0 := v9, safeModuloInt(|v30|, v4[safeIndex(814, v4.Length)] * -v0), |map[v8 := v4[safeIndex(814, v4.Length)]]|;
			globalState.f5 := v0;
		} else {
			var v76: seq<seq<bool>> := [v12, v12, v12];
			v76 := v76 + (v76 + v76);
			globalState.f6 := v9;
			var v77: array<string> := new string[19](i7 => v8);
			v77[safeIndex(267, v77.Length)] := v8;
			v77[safeIndex(267, v77.Length)] := v8 + v8;
			var v78 := new C0(v22.f20, v22.f21);
			globalState.f16 := (v0 - v4[safeIndex(814, v4.Length)]) < v4[safeIndex(814, v4.Length)];
		}
		
		v23 := new bool[24];
		var v79: multiset<array<bool>> := multiset{v23, v23};
		v79 := v79;
	}
	
	var v80: map<bool, array<bool>> := map[v9 := v23];
	var v81: seq<array<bool>> := [v23, v23];
	var v82: array<array<bool>> := new array<bool>[24] [v23, v23, v23, v23, v23, v23, v23, v23, v23, v23, v23, v23, v23, v23, v23, v23, v23, v23, if (v9 in v80) then v80[v9] else v81[safeIndex(v4[safeIndex(814, v4.Length)], |v81|)], v23, v23, v23, v23, v23];
	var v83 := DC9(v82);
	match (v83) {
		case DC10(cf13) =>
			globalState.f4 := v0 + (v4[safeIndex(814, v4.Length)] - v0);
			var v84: seq<C0> := [v22];
			var v85 := DC15(true, v84, v0, v4[safeIndex(814, v4.Length)], v9);
			globalState.f5, globalState.f5, globalState.f6 := v0, safeDivisionInt(0x1ca, v85.cf24 * v4[safeIndex(814, v4.Length)]), v9;
			v4[safeIndex(814, v4.Length)] := -v0;
			if (v9 || v9) {
				var v86: map<bool, bool> := map[false := v22.fm0(globalState)];
				var v87: map<map<bool, bool>, seq<int>> := map[v86 := v1 + v1[safeIndex(v4[safeIndex(814, v4.Length)], |v1|) := v4[safeIndex(814, v4.Length)]]];
				v1, v4[safeIndex(814, v4.Length)], v0, v4[safeIndex(814, v4.Length)] := if (v86 in v87) then v87[v86] else v1 + v1, v4[safeIndex(814, v4.Length)], v4[safeIndex(814, v4.Length)], v0 - v0;
				var v88, v89 := m0(globalState);
				globalState.f16 := !v89;
				var v90 := new C0(v22.f20, v22.f21);
				v4[safeIndex(814, v4.Length)] := v0 - v4[safeIndex(814, v4.Length)];
			} else {
				globalState.f4 := if (v9) then safeModuloInt(v0, v22.fm1(0x144, v9, v4[safeIndex(814, v4.Length)], v9, globalState)) else v0;
				globalState.f4 := v4[safeIndex(814, v4.Length)];
				globalState.f18 := v22.f20;
				var v91: array<D4> := new D4[10];
				var v92 := DC14(v29[-v0 := abs(v0)]);
				var v93 := DC16(v92);
				v91[safeIndex(123, v91.Length)] := v93.(cf27 := v92);
				var v94 := DC4(|"w"|);
				var v95: map<bool, D1> := map[|v27| >= 0x369 := v94.(cf5 := v4[safeIndex(814, v4.Length)])];
				v27, v91[safeIndex(123, v91.Length)], v95 := fm7(v8, {v30, v30, v30, {v9}}, v0, globalState), v93, v95;
				var v96: seq<string> := [v8];
				globalState.f6 := v9 <==> (|v96| != v22.fm1(|fm3(globalState)|, v9, v4[safeIndex(814, v4.Length)], v9, globalState));
			}
			
		case DC11(cf14) =>
			if (v9) {
				globalState.f6 := v9;
				v23[safeIndex(828, v23.Length)] := !v9;
				v20[safeIndex(592, v20.Length)], globalState.f16, v20[safeIndex(592, v20.Length)], v23[safeIndex(828, v23.Length)] := v20[safeIndex(592, v20.Length)], v22.fm1(v4[safeIndex(814, v4.Length)], true, v4[safeIndex(814, v4.Length)], v9, globalState) <= safeModuloInt(v0, v0), v20[safeIndex(592, v20.Length)], v12[safeIndex(-v4[safeIndex(814, v4.Length)], |v12|)];
				v23[safeIndex(828, v23.Length)] := v12[safeIndex(v4[safeIndex(814, v4.Length)], |v12|)];
				var v97: seq<array<string>> := [cf14, cf14, cf14, cf14];
				cf14 := v97[safeIndex(safeDivisionInt(|v8|, v0), |v97|)];
				globalState.f6 := -safeDivisionInt(v4[safeIndex(814, v4.Length)], v0) <= v4[safeIndex(814, v4.Length)];
			} else {
				v13 := fm5(!(v4[safeIndex(814, v4.Length)] < v4[safeIndex(814, v4.Length)]), v2 != v2, globalState);
				v12 := fm8(v0 in v2, v0, globalState);
				cf14[safeIndex(974, cf14.Length)] := seq(abs(804), i8  => (v22.f20));
				cf14[safeIndex(974, cf14.Length)] := v8;
				v4 := v4;
				var v98, v99 := m0(globalState);
			}
			
			cf14[safeIndex(319, cf14.Length)] := v8;
			cf14[safeIndex(319, cf14.Length)] := v8;
			v23[safeIndex(68, v23.Length)] := v9;
			v23[safeIndex(68, v23.Length)] := !(v9 <== v9);
			if (v0 == (v0 - v0)) {
				v12 := v12 + v12;
				var v100, v101 := m0(globalState);
				var v102: map<bool, bool> := map[if (v101) then v23[safeIndex(68, v23.Length)] else v23[safeIndex(68, v23.Length)] := v23[safeIndex(68, v23.Length)]];
				v102 := v102[v0 > v4[safeIndex(814, v4.Length)] := v101];
				var v103 := DC14(v29);
				var v104 := DC16(v103);
				var v105 := DC16(v103);
				var v106 := DC16(v104);
				var v107 := DC16(v106);
				var v108 := DC16(v105);
				var v109: array<D4> := new D4[17] [v108, v108, v108, v108, v108, v108, v108.(cf27 := v105), v108, v108, DC16(v106), v108, v108, if (v101) then DC16(v104) else v108, v108, v108, v108, v108];
				v109[safeIndex(364, v109.Length)] := DC16(v106);
				var v110 := DC4(v4[safeIndex(814, v4.Length)]);
				globalState.f16, v4[safeIndex(814, v4.Length)], v30, v109[safeIndex(364, v109.Length)], globalState.f4 := !(v4[safeIndex(814, v4.Length)] > v4[safeIndex(814, v4.Length)]), if (v9) then v1[safeIndex(v0, |v1|)] else v0 + v0, v30, v108, v0 - v110.cf5;
				var v111, v112 := m0(globalState);
			} else {
				globalState.f6 := v23[safeIndex(68, v23.Length)];
				var v113: multiset<bool> := multiset{v9, true, v9};
				v4[safeIndex(814, v4.Length)], v10, v0 := safeModuloInt(if (v23[safeIndex(68, v23.Length)] in v113) then v113[v23[safeIndex(68, v23.Length)]] else -v4[safeIndex(814, v4.Length)], v4[safeIndex(814, v4.Length)]), v8[safeIndex(v4[safeIndex(814, v4.Length)], |v8|)], v0;
				globalState.f5, globalState.f6, globalState.f6 := -(0x315 - 0x244) + (-v4[safeIndex(814, v4.Length)] + v4[safeIndex(814, v4.Length)]), !false, v0 < (v0 * v0);
				var v114 := DC10(v8 + cf14[safeIndex(319, cf14.Length)][safeIndex(775, |cf14[safeIndex(319, cf14.Length)]|) := v22.f20]);
				var v115: array<array<seq<int>>> := new array<seq<int>>[2];
				var v116: array<seq<int>> := new seq<int>[14](i9 => v1);
				v115[safeIndex(982, v115.Length)] := v116;
				v114, v0, v115[safeIndex(982, v115.Length)], v23[safeIndex(68, v23.Length)] := fm9(true, globalState), |(cf14[safeIndex(319, cf14.Length)] + cf14[safeIndex(319, cf14.Length)])|, v116, false ==> v23[safeIndex(68, v23.Length)];
				globalState.f6 := v23[safeIndex(68, v23.Length)];
			}
			
		case DC9(cf12) =>
			v13 := v13[v9 := safeModuloInt(0x100, |v8|)];
			if (v9) {
				var v117 := new C0(v10, v22.f21);
				var v118: array<seq<char>> := new string[9] [v8, v8, v8, v8, v8, v8, [v22.f20], v8, v8];
				var v119 := DC11(v118);
				var v120: map<D2, bool> := map[v119 := v9];
				var v121: map<multiset<int>, map<D2, bool>> := map[if (v9) then v29 else v29 := v120 + v120];
				v121 := v121[v29 := v120 + map[v119 := v9]];
				v9 := v9;
				var v122, v123 := m0(globalState);
				v13 := v13[true := 0x14d];
			} else {
				v8, v9 := v8, v12 != v12;
				v9 := v4[safeIndex(814, v4.Length)] >= (v4[safeIndex(814, v4.Length)] * v0);
				var v124: seq<C0> := [v22];
				var v125: seq<C0> := [v124[safeIndex(v0, |v124|)]];
				var v126 := DC15(false, v125, v4[safeIndex(814, v4.Length)], |v8|, v9);
				var v127: array<D4> := new D4[15] [v126, v126, v126, v126, v126, DC15(v9, v125, v4[safeIndex(814, v4.Length)], -v4[safeIndex(814, v4.Length)], v9), v126.(cf22 := v9), DC15(v9, v124, v4[safeIndex(814, v4.Length)], v4[safeIndex(814, v4.Length)], v9), v126, v126.(cf25 := |multiset{v0}|), v126, v126, v126, v126, v126.(cf25 := v4[safeIndex(814, v4.Length)])];
				var v128 := DC17(v127);
				var v129: array<array<D4>> := new array<D4>[21] [v127, v127, v127, v127, v128.cf28, if (v9) then v127 else v127, v127, v127, v127, v127, v127, v127, if (v9) then v127 else v127, v127, v127, v127, v127, v127, v127, v127, v127];
				globalState.f6, globalState.f6, v129 := v0 < 0x2b6, if (if (v9) then v9 else v9) then v9 else v9, if (!v9) then v129 else v129;
				var v130: map<bool, bool> := map[v9 := v9];
				var v131 := DC6(v4[safeIndex(814, v4.Length)], v9, v10);
				v27 := v27[v0 := if (if (v9 in v130) then v130[v9] else v9) then v131.cf8 else true];
				v4[safeIndex(814, v4.Length)] := 836;
			}
			
			v4[safeIndex(814, v4.Length)] := -safeModuloInt(safeDivisionInt(v0, v22.fm1(-v0, v9, v4[safeIndex(814, v4.Length)], v9, globalState)), v4[safeIndex(814, v4.Length)]);
			globalState.f16 := !v22.fm0(globalState);
	}
	
	print v0, "\n";
	print v1 == [941, 941], "\n";
	print v2 == map[-941 := 941], "\n";
	print v3[0] == [true, false, false], "\n";
	print v3[1] == [true, false, false], "\n";
	print v3[2] == [true, false, false], "\n";
	print v3[3] == [true, false, false], "\n";
	print v3[4] == [true, false, false], "\n";
	print v3[5] == [true, false, false], "\n";
	print v3[6] == [true, false, false], "\n";
	print v3[7] == [true, false, false], "\n";
	print v3[8] == [true, false, false], "\n";
	print v3[9] == [true, false, false], "\n";
	print v3[10] == [true, false, false], "\n";
	print v3[11] == [true, false, false], "\n";
	print v3[12] == [true, false, false], "\n";
	print v3[13] == [true, false, false], "\n";
	print v3[14] == [true, false, false], "\n";
	print v3[15] == [true, false, false], "\n";
	print v3[16] == [true, false, false], "\n";
	print v3[17] == [true, false, false], "\n";
	print v3[18] == [true, false, false], "\n";
	print v3[19] == [true, false, false], "\n";
	print v3[20] == [true, false, false], "\n";
	print v3[21] == [true, false, false], "\n";
	print v3[22] == [true, false, false], "\n";
	print v3[23] == [true, false, false], "\n";
	print v3[24] == [true, false, false], "\n";
	print v3[25] == [true, false, false], "\n";
	print v3[26] == [true, false, false], "\n";
	print v3[27] == [true, false, false], "\n";
	print v4[4], "\n";
	print |v5|, "\n";
	print |v6.cf0|, "\n";
	print v7 == {981}, "\n";
	print v8, "\n";
	print globalState.f0, "\n";
	print globalState.f1, "\n";
	print globalState.f2, "\n";
	print globalState.f3, "\n";
	print globalState.f4, "\n";
	print globalState.f5, "\n";
	print globalState.f6, "\n";
	print globalState.f7, "\n";
	print globalState.f8, "\n";
	print globalState.f9, "\n";
	print globalState.f10, "\n";
	print globalState.f11 == map[-941 := 941], "\n";
	print globalState.f12, "\n";
	print globalState.f13[0] == [true, false, false], "\n";
	print globalState.f13[1] == [true, false, false], "\n";
	print globalState.f13[2] == [true, false, false], "\n";
	print globalState.f13[3] == [true, false, false], "\n";
	print globalState.f13[4] == [true, false, false], "\n";
	print globalState.f13[5] == [true, false, false], "\n";
	print globalState.f13[6] == [true, false, false], "\n";
	print globalState.f13[7] == [true, false, false], "\n";
	print globalState.f13[8] == [true, false, false], "\n";
	print globalState.f13[9] == [true, false, false], "\n";
	print globalState.f13[10] == [true, false, false], "\n";
	print globalState.f13[11] == [true, false, false], "\n";
	print globalState.f13[12] == [true, false, false], "\n";
	print globalState.f13[13] == [true, false, false], "\n";
	print globalState.f13[14] == [true, false, false], "\n";
	print globalState.f13[15] == [true, false, false], "\n";
	print globalState.f13[16] == [true, false, false], "\n";
	print globalState.f13[17] == [true, false, false], "\n";
	print globalState.f13[18] == [true, false, false], "\n";
	print globalState.f13[19] == [true, false, false], "\n";
	print globalState.f13[20] == [true, false, false], "\n";
	print globalState.f13[21] == [true, false, false], "\n";
	print globalState.f13[22] == [true, false, false], "\n";
	print globalState.f13[23] == [true, false, false], "\n";
	print globalState.f13[24] == [true, false, false], "\n";
	print globalState.f13[25] == [true, false, false], "\n";
	print globalState.f13[26] == [true, false, false], "\n";
	print globalState.f13[27] == [true, false, false], "\n";
	print |globalState.f14|, "\n";
	print globalState.f15 == [941, 941], "\n";
	print globalState.f16, "\n";
	print globalState.f17, "\n";
	print globalState.f18, "\n";
	print globalState.f19, "\n";
	print v9, "\n";
	print v10, "\n";
	print v11 == {['j', 'j', 'j', 'j', 'j', 'j', 'j', 'k', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j'], "fgdbcxknectrxqq", "ectrxqq"}, "\n";
	print v12 == [false, true, true], "\n";
	print v13 == map[false := -7, true := 333], "\n";
	print v20[20].f20, "\n";
	print v22.f20, "\n";
	print v23[1], "\n";
	print v24 == map[true := 'k'], "\n";
	print |v25|, "\n";
	print |v26|, "\n";
	print v27 == map[941 := true], "\n";
	print v29 == multiset{941}, "\n";
	print v30 == {true}, "\n";
	print v67.cf16, "\n";
	print v67.cf17, "\n";
	print v67.cf18, "\n";
	print v67.cf19, "\n";
	print v67.cf20[4], "\n";
	print |v80|, "\n";
	print |v81|, "\n";
	print v82[0][1], "\n";
	print v82[1][1], "\n";
	print v82[2][1], "\n";
	print v82[3][1], "\n";
	print v82[4][1], "\n";
	print v82[5][1], "\n";
	print v82[6][1], "\n";
	print v82[7][1], "\n";
	print v82[8][1], "\n";
	print v82[9][1], "\n";
	print v82[10][1], "\n";
	print v82[11][1], "\n";
	print v82[12][1], "\n";
	print v82[13][1], "\n";
	print v82[14][1], "\n";
	print v82[15][1], "\n";
	print v82[16][1], "\n";
	print v82[17][1], "\n";
	print v82[18][1], "\n";
	print v82[19][1], "\n";
	print v82[20][1], "\n";
	print v82[21][1], "\n";
	print v82[22][1], "\n";
	print v82[23][1], "\n";
	print v83.cf12[0][1], "\n";
	print v83.cf12[1][1], "\n";
	print v83.cf12[2][1], "\n";
	print v83.cf12[3][1], "\n";
	print v83.cf12[4][1], "\n";
	print v83.cf12[5][1], "\n";
	print v83.cf12[6][1], "\n";
	print v83.cf12[7][1], "\n";
	print v83.cf12[8][1], "\n";
	print v83.cf12[9][1], "\n";
	print v83.cf12[10][1], "\n";
	print v83.cf12[11][1], "\n";
	print v83.cf12[12][1], "\n";
	print v83.cf12[13][1], "\n";
	print v83.cf12[14][1], "\n";
	print v83.cf12[15][1], "\n";
	print v83.cf12[16][1], "\n";
	print v83.cf12[17][1], "\n";
	print v83.cf12[18][1], "\n";
	print v83.cf12[19][1], "\n";
	print v83.cf12[20][1], "\n";
	print v83.cf12[21][1], "\n";
	print v83.cf12[22][1], "\n";
	print v83.cf12[23][1], "\n";
}