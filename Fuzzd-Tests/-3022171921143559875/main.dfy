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
datatype D0 = DC1(cf1: bool, cf2: int, cf3: int) | DC2 | DC0(cf0: char)
datatype D1 = DC4(cf5: D0, cf6: int, cf7: bool) | DC3(cf4: multiset<int>) | DC5(cf8: D1)
datatype D2 = DC7(cf10: bool) | DC8(cf11: int, cf12: int, cf13: D1, cf14: bool, cf15: string) | DC6(cf9: map<bool, bool>) | DC9(cf16: D2)
datatype D3 = DC11(cf18: bool) | DC10(cf17: seq<bool>)
datatype D4 = DC13(cf20: D2, cf21: multiset<string>, cf22: bool, cf23: int, cf24: array<int>) | DC12(cf19: array<array<int>>) | DC14(cf25: D4)
datatype D5 = DC16(cf27: int, cf28: D2, cf29: string, cf30: bool, cf31: bool) | DC17 | DC18(cf32: array<D0>, cf33: bool, cf34: int) | DC15(cf26: map<string, int>)
datatype D6 = DC20(cf36: bool, cf37: bool, cf38: int, cf39: set<multiset<bool>>) | DC21(cf40: bool, cf41: bool, cf42: int) | DC19(cf35: set<bool>)
datatype D7 = DC23(cf44: int, cf45: int, cf46: int) | DC22(cf43: seq<int>) | DC24(cf47: D7)
datatype D8 = DC26(cf49: bool) | DC25(cf48: map<bool, int>) | DC27(cf50: D8)
datatype D9 = DC29(cf52: bool, cf53: multiset<bool>, cf54: int, cf55: bool) | DC30(cf56: seq<bool>, cf57: D6) | DC28(cf51: set<array<int>>)
datatype D10 = DC32(cf59: bool, cf60: string) | DC31(cf58: map<int, int>)
datatype D11 = DC34(cf62: bool, cf63: char) | DC35(cf64: bool, cf65: int, cf66: int, cf67: D7, cf68: C6) | DC36(cf69: char, cf70: C7) | DC33(cf61: T1)
datatype D12 = DC38(cf72: set<bool>, cf73: int) | DC37(cf71: T0)
datatype D13 = DC40(cf75: set<bool>, cf76: bool, cf77: int, cf78: int, cf79: int) | DC39(cf74: set<int>) | DC41(cf80: D13)
trait T0 {
	const f16 : map<D0, int>
}

trait T1 extends T0 {
	function fm1(globalState: GlobalState): int 
}

trait T2 extends T1 {
	var f17 : bool
	function fm2(globalState: GlobalState): int 
	method m0(globalState: GlobalState) returns (r0: bool, r1: int, r2: int) 
}

class GlobalState {
	const f0 : map<array<bool>, char>
	const f1 : map<array<int>, int>
	const f2 : bool
	const f3 : seq<map<bool, bool>>
	var f4 : array<bool>
	var f5 : multiset<bool>
	var f6 : int
	const f7 : bool
	const f8 : char
	var f9 : multiset<string>
	const f10 : int
	const f11 : int
	var f12 : char
	var f13 : bool
	const f14 : bool
	const f15 : bool
	constructor (f0 : map<array<bool>, char>, f1 : map<array<int>, int>, f2 : bool, f3 : seq<map<bool, bool>>, f4 : array<bool>, f5 : multiset<bool>, f6 : int, f7 : bool, f8 : char, f9 : multiset<string>, f10 : int, f11 : int, f12 : char, f13 : bool, f14 : bool, f15 : bool) {
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

class C0 extends T0 {
	const f20 : int
	constructor (f20 : int, f16 : map<D0, int>) {
		this.f20 := f20;
		this.f16 := f16;
	}
	
}

class C1 extends T1 {
	const f23 : D1
	constructor (f23 : D1, f16 : map<D0, int>) {
		this.f23 := f23;
		this.f16 := f16;
	}
	
	function fm1(globalState: GlobalState): int {
		|map[|map[|(map v0 : int | v0 in multiset([-|(seq(abs(-0x1a1), i0  => (|(map v1 : int | (0x3e0 <= v1) && (v1 < -0xf2) :: (v1 * |[false]|) := (0x4a))|)))|, |[|map[false := true]|, -0x40]|]) :: (v0 * -0x131) := (0x3a))| := {true}]| := 0x3b9]|
	}
	function fm20(p0: int, p1: bool, globalState: GlobalState): set<bool> {
		{|map[0x66 := |(seq(abs(-0x3bf), i0  => ('c')))|]| > 0x2fc, -|DC6(map[!true := false]).cf9| != 0xd}
	}
	function fm21(p0: multiset<int>, globalState: GlobalState): int {
		safeModuloInt(safeModuloInt(|"dsaqprl"|, -433), safeDivisionInt(0xe3, 0x379))
	}
	method m8(p0: char, p1: int, globalState: GlobalState) returns (r0: D0) {
		var v0: array<array<bool>> := new array<bool>[9];
		var v1 := false;
		var v2: array<bool> := new bool[20];
		v0[safeIndex(215, v0.Length)] := if (v1) then v2 else v2;
		var v3: seq<bool> := [p1 in [p1], v1, true];
		var v4: map<int, char> := map[p1 := p0];
		var v5 := "ueoycuntb";
		var v6: seq<string> := [seq(abs(0x332), i0  => (p0)), v5];
		var v7 := DC2();
		var v9: multiset<int> := multiset{p1};
		var v10: set<multiset<int>> := {v9};
		var v11: map<bool, bool> := map[v1 := v1];
		var v12 := DC4(v7, |(map v8 : multiset<int> | v8 in v10 :: (v8) := (v1))|, if (v1 in v11) then v11[v1] else v1);
		var v13: map<string, array<bool>> := map[v6[safeIndex(v12.cf6, |v6|)] := v2];
		globalState.f6, globalState.f13, v0[safeIndex(215, v0.Length)] := |v3|, (|v4| != |v5|) <== v1, if (v5 in v13) then v13[v5] else v2;
		var v14: array<char> := new char[9];
		var v15: map<int, array<bool>> := map[fm21(v9, globalState) := v0[safeIndex(215, v0.Length)]];
		var v16: map<bool, int> := map[v1 := 318];
		var v17: set<char> := {fm22(!v1, p1, globalState)};
		var v18: map<bool, set<char>> := map[!v1 := v17];
		v0[safeIndex(215, v0.Length)], globalState.f13, globalState.f13, v14 := if (p1 in v15) then v15[p1] else v2, if (v1) then v1 else v1, |v5| >= |v16[v1 := |v18|]|, v14;
		forall i1 | 0 <= i1 < v2.Length {
			v2[i1] := DC8(p1, p1, f23, v1, v5).cf14;
		}
		v1 := true;
		var v19: set<int> := {p1};
		var v20: map<int, bool> := map[|v19| := v1];
		var v21: map<int, bool> := map[p1 := if (p1 in v20) then v20[p1] else v1];
		v20 := v20[|"owpdqf"| := v1];
		var v22 := DC8(if (v1 in v16) then v16[v1] else p1, |v5|, f23, v1, v5);
		var v23: map<set<bool>, string> := map[fm20(p1, !v1, globalState) := if (v22.cf14) then "jwaynirte" else v5];
		var v24: set<bool> := {v1};
		v23 := v23[fm20(p1, v1, globalState) + v24 := "ge"];
		var v25 := DC7(v1);
		var v26 := DC1(v1, p1, 0x189);
		var v27: multiset<bool> := multiset{v1, v1, v1};
		r0 := fm23(v25.(cf10 := v26.cf1), |(v11 + v11)|, if (v1 in v27) then v27[v1] else p1, globalState);
	}
	method m9(p0: bool, p1: string, p2: bool, globalState: GlobalState) returns (r0: int, r1: int, r2: array<set<bool>>) {
		var v0: array<int> := new int[11](i0 => safeDivisionInt(i0, |[false]|));
		var v1 := 0x5c;
		v0[safeIndex(888, v0.Length)] := v1;
		var v2: map<bool, array<int>> := map[p0 := v0];
		v0, v0[safeIndex(888, v0.Length)] := if (p0 in v2) then v2[p0] else v0, -0x132;
		r1 := v1 * v0[safeIndex(888, v0.Length)];
		var v3: map<bool, bool> := map[p2 := p0];
		var i1 := 0;
		while (fm0(!(if (p0 in v3) then v3[p0] else !p0), v1, p2, p0, globalState))
			decreases 100 - i1
		{
			if (i1 >= 100) {
				break;
			}
			
			i1 := i1 + 1;
			var v4: C0 := new C0(-0x8e, f16);
			var v5: map<int, C0> := map[0x1d7 := v4];
			var v6 := DC1(p0, v1, |v5|);
			var v7 := 'r';
			var v8 := new C0(v6.cf3, fm24(p2, v0[safeIndex(888, v0.Length)], v7, v4.f20, globalState));
			var v9 := DC8(v1, v1, f23, !p2, p1);
			var v10 := DC9(v9);
			var v11: map<D2, bool> := map[v10 := true];
			if (!((if (v10 in v11) then v11[v10] else p0) || (p0 || !false))) {
				v0[safeIndex(888, v0.Length)] := safeModuloInt(--v8.f20, v1);
				var v12 := new C0(-v1, f16);
				var v13: map<int, int> := map[v8.f20 := -v1];
				var v14: set<int> := {|"t"|};
				var v15 := new C0(if (fm0(p2, v12.f20, p2, p0, globalState)) then if (v4.f20 in v13) then v13[v4.f20] else v0[safeIndex(888, v0.Length)] else |v14|, f16);
				var v16 := m8(v7, v0[safeIndex(888, v0.Length)], globalState);
				var v17: seq<int> := [v0[safeIndex(888, v0.Length)]];
				globalState.f13, globalState.f5, v17 := if (if (p0) then !true else p0) then p2 else -v1 >= |p1|, multiset{p2 ==> p0}, if (p2) then v17 else seq(abs(0x149), i2  => (v15.f20));
			} else {
				var v18 := new C0(v4.f20, map[v6 := v8.f20]);
				var v19: seq<bool> := [p2];
				var v20 := DC10(v19);
				var v21: set<seq<bool>> := {v20.cf17, [p2, p2, p0, p0], v19, v19, v19};
				var v22: map<seq<bool>, int> := map[v19 := 0x3b7];
				var v24: array<set<seq<bool>>> := new set<seq<bool>>[12] [v21, v21, {v19, [!p0], [p2, p0]}, v21 + v21, v21, v21 * v21, v21, v21, v21, v21, v21, (set v23 : seq<bool> | v23 in v22 :: (v23)) + v21];
				v24[safeIndex(854, v24.Length)] := v21 * v21;
				v24[safeIndex(854, v24.Length)] := v21 * v21;
				var v25 := "i";
				globalState.f13, globalState.f13, v25 := !p0, p0, v25;
				v0[safeIndex(888, v0.Length)] := v1 + -v4.f20;
				var v26 := new C0(|(v25 + "lohnhpas")|, f16);
			}
			
			var v27 := DC8(0x251, v8.f20, f23, false, p1);
			var v28: seq<bool> := [fm0(p2, (v27.(cf11 := v8.f20)).cf12, p2, p2, globalState)];
			var v29: array<seq<bool>> := new seq<bool>[2] [v28, v28];
			v29[safeIndex(112, v29.Length)] := v28;
			v29[safeIndex(112, v29.Length)] := [p0];
			globalState.f13 := p0;
		}
		var v30 := DC1(p0, v1, v0[safeIndex(888, v0.Length)]);
		match (v30) {
			case DC1(cf1, cf2, cf3) =>
				var v31: multiset<int> := multiset{v0[safeIndex(888, v0.Length)]};
				var v32: array<bool> := new bool[11];
				var v33: map<map<int, int>, array<bool>> := map[map[v0[safeIndex(888, v0.Length)] := |v31|] := if (p0) then v32 else v32];
				var v34 := DC2();
				var v35: map<int, int> := map[cf2 := -cf2];
				var v36 := DC4(v34, 768, true);
				var v38: array<D1> := new D1[12] [DC4(v34, if (v0[safeIndex(888, v0.Length)] in v35) then v35[v0[safeIndex(888, v0.Length)]] else cf3, p0), v36, v36, v36, v36, fm25(|fm26(!p2, map[p2 := !!cf1], 494, globalState)|, globalState), v36, v36, if (p2) then DC4(v34, v1, p2) else v36, DC4(v34, |(map v37 : int | v37 in {v0[safeIndex(888, v0.Length)]} :: (v37 * cf2) := ({cf1, p0, cf1}))|, !p0), v36, DC4(DC2(), v0[safeIndex(888, v0.Length)], cf1)];
				v38[safeIndex(353, v38.Length)] := v36;
				v33, globalState.f13, v38[safeIndex(353, v38.Length)], v1 := map[v35 := v32], p2, v36, v1;
				var v39: set<bool> := {p2};
				var v40: set<set<bool>> := {v39, v39, v39};
				var v41: seq<array<bool>> := [v32, v32];
				cf2 := |v40| + |v41|;
				v32[safeIndex(436, v32.Length)] := !!p2;
				var v42: map<bool, int> := map[cf1 := v0[safeIndex(888, v0.Length)]];
				v32[safeIndex(436, v32.Length)] := (if (cf1) then cf2 else |v42|) == 0x88;
				var v43: map<int, bool> := map[fm1(globalState) := !v32[safeIndex(436, v32.Length)]];
				v43 := map v44 : int | v44 in (map[cf2 := "riw"])[fm21(v31, globalState) := p1] :: (v44 + v1) := ('k' !in p1);
			case DC2() =>
				if (p2 && false) {
					globalState.f6 := 0x17;
					globalState.f6 := safeDivisionInt(|[true, p0, p0]|, v1);
					var v45: seq<bool> := [p2, p2, p0, p2, p0];
					globalState.f6 := safeDivisionInt(|v3| - v0[safeIndex(888, v0.Length)], |(multiset(v45))[p0 := abs(424)]|);
					var v46: array<bool> := new bool[5];
					v46[safeIndex(184, v46.Length)] := v0[safeIndex(888, v0.Length)] <= v1;
					var v47 := DC2();
					var v48: seq<int> := [v1];
					var v49 := DC4(v47, |v48|, p0);
					var v50: map<int, bool> := map[v0[safeIndex(888, v0.Length)] := p0];
					var v51: map<bool, map<int, bool>> := map[false := v50];
					v46[safeIndex(184, v46.Length)] := if (p0) then v49.cf6 == |v51| else p2;
					v0[safeIndex(888, v0.Length)] := v0[safeIndex(888, v0.Length)];
				} else {
					globalState.f6 := if (p2) then v1 else |fm27(globalState)|;
					var v52 := DC10([p0]);
					var v53 := "jjkpo";
					var v54 := 'q';
					var v55: array<string> := new string[25] [p1, "ekmjs", p1, (v53 + p1)[safeIndex(v1, |(v53 + p1)|) := v54], seq(abs(-0x1dd), i3  => (v54)), v53, v53, v53, v53 + v53, p1, p1, fm27(globalState), "jdncbqm", v53, "wtr", v53, if (p0) then p1 else seq(abs(0x180), i4  => (v54)), v53, p1, v53 + "ogxai", "u", "ivwwvb", v53, v53 + ("udesmsw")[safeIndex(v1, |"udesmsw"|) := v54], v53];
					v52, globalState.f6, v53, globalState.f13, v55 := if (p2) then v52 else v52, v0[safeIndex(888, v0.Length)], p1, p2, v55;
					var v58 := DC3(multiset{|(map v56 : int | v56 in (map v57 : int | (589 <= v57) && (v57 < 777) :: (v57 + 596) := (p0)) :: (safeModuloInt(v56, |{p2}|)) := (p2))|, v0[safeIndex(888, v0.Length)]});
					var v59 := DC8(v1, |fm28(v54, p2, p0, globalState)|, DC5(v58), p2, p1);
					var v60 := DC9(v59);
					v60 := v60;
					globalState.f13 := !p2;
					var v61: set<int> := {v0[safeIndex(888, v0.Length)], 142};
					var v62: map<bool, set<int>> := map[!p0 := v61];
					v62 := v62[p2 := v61];
				}
				
				var v63: seq<int> := [v1];
				r1 := v63[safeIndex(v0[safeIndex(888, v0.Length)] + v0[safeIndex(888, v0.Length)], |v63|)];
				var v64: array<bool> := new bool[25](i5 => p0);
				v64[safeIndex(983, v64.Length)] := p2;
				v64[safeIndex(983, v64.Length)] := p2;
				var v65 := 'p';
				var v66: map<int, char> := map[v0[safeIndex(888, v0.Length)] := v65];
				var v67: C0 := new C0(|v66|, f16);
				r0 := v0[safeIndex(888, v0.Length)] * -(v1 + |map[v67 := v0[safeIndex(888, v0.Length)]]|);
			case DC0(cf0) =>
				v0[safeIndex(888, v0.Length)] := safeDivisionInt(v0[safeIndex(888, v0.Length)], -v1);
				var v68 := "nmdlhqeu";
				v68 := p1;
				if (p0) {
					var v69: set<int> := {--0x17e, 123};
					var v70: map<set<int>, bool> := map[v69 := fm0(p2, |"sxnmpuj"|, p2, p2, globalState)];
					globalState.f13, v69, globalState.f13, globalState.f13, v0[safeIndex(888, v0.Length)] := p2, v69, p0, if ((v69 - v69) in v70) then v70[v69 - v69] else p0, |((seq(abs(0x49), i6  => (cf0))) + p1)|;
					var v71 := DC2();
					var v72: array<D0> := new D0[4] [v71, v71, v71, v71];
					v72[safeIndex(686, v72.Length)] := v71;
					var v73: map<int, int> := map[v1 := v1];
					var v74: seq<bool> := [v1 <= |v73|, p2, p0 && p2];
					globalState.f13, v30, v72[safeIndex(686, v72.Length)], globalState.f13 := p0, DC1(false, v0[safeIndex(888, v0.Length)], v0[safeIndex(888, v0.Length)]), v71, v74[safeIndex(v1 + v0[safeIndex(888, v0.Length)], |v74|)];
					var v75: array<bool> := new bool[2](i7 => p2);
					v75[safeIndex(459, v75.Length)] := v1 != v1;
					v75[safeIndex(459, v75.Length)] := p2;
					r0 := v1;
					globalState.f6 := v0[safeIndex(888, v0.Length)];
				} else {
					globalState.f6 := v1;
					v68 := p1;
					var v76: map<int, bool> := map[v1 := p2];
					v76 := v76[v0[safeIndex(888, v0.Length)] + v0[safeIndex(888, v0.Length)] := p0];
					globalState.f6 := safeDivisionInt(v0[safeIndex(888, v0.Length)], v1);
					var v77: seq<bool> := [p0, v1 >= v1, p2];
					globalState.f13 := v77[safeIndex(v1, |v77|)];
				}
				
				var v78: multiset<bool> := multiset{p2};
				var v79: map<char, multiset<bool>> := map['k' := v78];
				var v80: seq<bool> := [p2, !p2, false];
				var v81: map<bool, multiset<bool>> := map[false := multiset(v80)];
				var v82: array<multiset<bool>> := new multiset<bool>[27] [v78, if (cf0 in v79) then v79[cf0] else v78, multiset{true, p0} * multiset(v80), v78, multiset{p2, !p0, false}, fm28(fm22(p0, v0[safeIndex(888, v0.Length)], globalState), if (p0 in v3) then v3[p0] else p2, p0, globalState), v78, (multiset{p2, p2, p2})[p0 := abs(v0[safeIndex(888, v0.Length)])] * v78, v78, v78, multiset(fm29(p2, fm0(p0, v0[safeIndex(888, v0.Length)], p0, p2, globalState), globalState)), multiset{p0}, v78, v78 - v78, if (true in v81) then v81[true] else multiset(v80), v78, v78, multiset{!p0}, (multiset(v80))[p2 := abs(v0[safeIndex(888, v0.Length)])], v78, v78[p0 := abs(v0[safeIndex(888, v0.Length)])], v78, v78, v78, v78, fm28('d', p0, p2, globalState), v78];
				v82[safeIndex(475, v82.Length)] := v78 - multiset{p0};
				v82[safeIndex(475, v82.Length)] := v78;
		}
		
		var v83: map<int, bool> := map[-v1 := p2];
		globalState.f13 := v1 == |v83|;
		var v84 := DC2();
		v84 := v84;
		var v85 := DC7(p2);
		r0 := match v85 {
			case DC7(cf10) => v0[safeIndex(888, v0.Length)]
			case DC8(cf11, cf12, cf13, cf14, cf15) => v0[safeIndex(888, v0.Length)]
			case DC6(cf9) => v0[safeIndex(888, v0.Length)]
			case DC9(cf16) => v1
		};
		r1 := safeDivisionInt(v1, v0[safeIndex(888, v0.Length)]);
		var v86: array<set<bool>> := new set<bool>[7];
		r2 := v86;
	}
}

class C2 extends T1 {
	constructor (f16 : map<D0, int>) {
		this.f16 := f16;
	}
	
	function fm1(globalState: GlobalState): int {
		safeDivisionInt(|map[DC5(DC5(DC4(DC2(), -0x5c, true))) := -0x2d5]|, 0x3b2 + 0x26f)
	}
	function fm18(p0: map<seq<int>, int>, p1: D1, globalState: GlobalState): int {
		if (0x26b != |map[true := -|map[{false, false} := false]|]|) then -0x55 else |(if (!false) then "dn" else seq(abs(0x39f), i0  => ('i')))|
	}
	function fm19(p0: bool, p1: bool, globalState: GlobalState): multiset<int> {
		multiset{|[!false]|} - multiset{522, |{550, |(seq(abs(0x279), i0  => ('x')))|, |"mmvlec"|}|, 556, |[0x24f]|, |map[false := seq(abs(60), i1  => (-0x105))]|}
	}
	method m7(p0: set<int>, p1: string, p2: bool, globalState: GlobalState) {
		var v0: array<bool> := new bool[14] [p2, p2, p2, p2, true, p2, p2, p2, p2, p2, p2, p2, p2, false];
		var v1: seq<array<bool>> := [v0];
		var v2 := 0x3cf;
		globalState.f4 := v1[safeIndex(v2, |v1|)];
		for i0 := v2 to 5 - v2 {
			var v3 := 'n';
			var v4: set<char> := {v3};
			var v5: array<C0> := new C0[27];
			var v6: set<array<C0>> := {v5};
			var v7: multiset<int> := multiset{0x338};
			var v8: seq<int> := [v2, i0, v2, v2];
			var v9: map<seq<int>, int> := map[v8 := i0];
			var v10 := DC2();
			var v11 := DC4(v10, v2, p2);
			var v12 := DC5(v11);
			var v13: array<int> := new int[25] [v2, i0, |v4|, v2, |(v6 + v6)|, -254, i0, i0, safeDivisionInt(i0, i0), v2, -0x144, if (|(seq(abs(636), i1  => (i0)))| in v7) then v7[|(seq(abs(636), i1  => (i0)))|] else v2, safeDivisionInt(v2, v2), v2, fm18(v9, v12, globalState) - v2, safeModuloInt(|v8|, i0), v2, safeDivisionInt(v2, v2), v2, v2, v2, -77, v2 * i0, v2, v2];
			v13[safeIndex(285, v13.Length)] := i0 + i0;
			var v14: set<bool> := {p2};
			var v15: seq<bool> := [p2];
			var v16: map<set<bool>, int> := map[{false, p2, p2} * v14 := |v15|];
			v13[safeIndex(285, v13.Length)] := if ((v14 + v14) in v16) then v16[v14 + v14] else v2;
			var v17: map<int, int> := map[fm1(globalState) := v2];
			var v18: map<bool, bool> := map[p2 := p2];
			var v19: multiset<map<bool, bool>> := multiset{v18, map[p2 := p2], v18};
			var v20: T1 := new C1(v12, f16);
			var v21: map<char, T1> := map[v3 := v20];
			globalState.f6, globalState.f6, v17, v19 := v8[safeIndex(0xa7, |v8|)] * |(v15 + v15)|, -v13[safeIndex(285, v13.Length)], if (-|v21| < v2) then map v22 : int | v22 in v7 :: (safeDivisionInt(v22, v13[safeIndex(285, v13.Length)])) := (i0) else if (true) then v17 else v17, multiset{v18, v18, v18};
			v3 := 'u';
			globalState.f13 := p2;
		}
		var v23 := 'y';
		globalState.f13 := v23 !in (p1 + p1[safeIndex(v2, |p1|) := 'i']);
		var v24: seq<bool> := [p2];
		var v25 := DC10(v24);
		var v26 := DC2();
		var v27: array<D0> := new D0[4](i2 => DC1(p2, |multiset([v2])|, v2));
		var v28: map<array<D0>, int> := map[v27 := 0x2de];
		var v29: map<int, int> := map[|v28| := v2];
		globalState.f6, globalState.f6, v25, globalState.f6 := 0x18f, safeModuloInt(v2, -v2), DC10(v24).(cf17 := [DC4(v26, |v29|, true).cf7, p2] + v24), safeDivisionInt(v2, v2);
		var v30 := DC0(fm22(false, v2, globalState));
		match (v30.(cf0 := v23)) {
			case DC1(cf1, cf2, cf3) =>
				var v31: array<int> := new int[24](i3 => i3 * cf3);
				var v32: map<bool, array<int>> := map[cf1 := v31];
				v32 := v32;
				var v33: seq<int> := [cf2, v2];
				var v34: map<seq<int>, int> := map[v33 := cf2];
				var v35 := DC4(v26, v2, p2);
				var v36 := DC5(v35);
				var v37 := DC5(v36);
				var v38 := DC5(v37);
				var v39 := DC5(v35);
				cf2 := fm18(v34 + v34, v39, globalState);
				cf3 := fm18(v34, v39, globalState);
				cf2 := -(cf2 + cf3);
			case DC2() =>
				var v40: array<int> := new int[28];
				var v41: map<bool, bool> := map[p2 := p2];
				var v42 := DC4(v26, |v41|, p2);
				v40[safeIndex(379, v40.Length)] := v42.cf6 + v2;
				v40[safeIndex(379, v40.Length)] := safeModuloInt(v2 * -fm1(globalState), v2);
				v40[safeIndex(379, v40.Length)] := -v2;
				globalState.f13 := p2;
				var v43 := DC7(!p2);
				match (if (p2) then v43 else DC7(p2)) {
					case DC7(cf10) =>
						var v45 := new C0(0x12e, (map v44 : D0 | v44 in f16 :: (v44) := (v2)) + f16);
						globalState.f6 := 0xe2;
						var v46: seq<int> := [-v40[safeIndex(379, v40.Length)], v45.f20];
						var v47: map<int, map<string, int>> := map[v45.f20 := fm30(globalState)];
						var v48: seq<seq<int>> := [seq(abs(0x79), i4  => (v45.f20)), [v40[safeIndex(379, v40.Length)]], v46, v46];
						var v49: map<string, int> := map[p1 := |p1|];
						var v50: seq<int> := [v40[safeIndex(379, v40.Length)] - v2, |v46| * |(if (|v48| in v47) then v47[|v48|] else v49)|];
						globalState.f6 := v50[safeIndex(-v40[safeIndex(379, v40.Length)], |v50|)];
						var v51 := "vnwrcn";
						var v52: seq<string> := [p1, v51, v51, v51, "mban"];
						v51 := v52[safeIndex(0x208, |v52|)] + v51;
					case DC8(cf11, cf12, cf13, cf14, cf15) =>
						globalState.f13 := false;
						cf14 := true;
						v40[safeIndex(379, v40.Length)] := v2;
						var v53: set<bool> := {true};
						var v54: map<set<bool>, bool> := map[v53 := p2];
						v54 := v54[v53 := cf14 || true];
					case DC6(cf9) =>
						globalState.f6 := safeModuloInt(v40[safeIndex(379, v40.Length)], -v40[safeIndex(379, v40.Length)] - v2);
						globalState.f13 := p2;
						var v55: multiset<int> := multiset{if (p2) then v2 else v2, v2, v2 - v40[safeIndex(379, v40.Length)], v2};
						v55 := if (!p2) then v55 else v55[v40[safeIndex(379, v40.Length)] := abs(0x1f4)];
						v0[safeIndex(823, v0.Length)] := p2 || p2;
						v0[safeIndex(823, v0.Length)] := p2;
					case DC9(cf16) =>
						var v56: map<seq<bool>, bool> := map[v24 := p2];
						var v57: set<bool> := {!p2, fm0(true, v2, p2, if (fm29(p2, p2, globalState) in v56) then v56[fm29(p2, p2, globalState)] else p2, globalState)};
						v57 := v57;
						var v58: multiset<int> := multiset{-233};
						var v59 := DC3(v58);
						var v60 := DC5(v59);
						var v61 := new C1(v60, f16);
						var v62: map<int, string> := map[-v40[safeIndex(379, v40.Length)] := "obfd"];
						v62 := v62[v2 := p1 + p1];
						var v63: array<map<bool, map<int, int>>> := new map<bool, map<int, int>>[28];
						var v64: map<bool, map<int, int>> := map[p2 := v29];
						v63[safeIndex(351, v63.Length)] := v64;
						v63[safeIndex(351, v63.Length)] := v64 + map[p2 := v29];
				}
				
			case DC0(cf0) =>
				var v65: array<array<int>> := new array<int>[8];
				var v66 := DC12(v65);
				v65 := v66.cf19;
				var v67: seq<int> := [v2];
				v26 := fm31(v67 + [v2], globalState);
				globalState.f6 := v2;
				if (fm0(if (p2) then p2 else p2, v2, p2, p2, globalState)) {
					globalState.f13 := p2;
					v2 := v2;
					v2 := v2;
					globalState.f4 := v0;
					var v68: array<D4> := new D4[11];
					var v69: multiset<int> := multiset{v2};
					var v70 := DC3(v69);
					var v71 := DC5(v70);
					var v72 := DC5(v71);
					var v73 := DC8(-0x108, v2, v72, p2, seq(abs(903), i5  => (cf0)));
					var v74: multiset<string> := multiset{p1};
					var v76: array<int> := new int[26] [v2, v2, v2, |p1|, -v2, v2, v2, -v67[safeIndex(v2, |v67|)], 0x293, v2, |v29|, v2, v2, |(set v75 : int | (884 <= v75) && (v75 < 0x386) :: (v75 * v2))|, v2, v2, v2, -v2, v2, v2, 0x2ef, v2, |v69|, 0x1b, v2, 0x318];
					var v77 := DC13(v73, v74, p2, v2, v76);
					v68[safeIndex(410, v68.Length)] := v77.(cf20 := v73, cf23 := v2);
					var v78: map<string, multiset<bool>> := map[p1 := multiset{false, p2}];
					var v79: multiset<bool> := multiset{p2};
					var v80: map<bool, int> := map[p2 := |(if (p1 in v78) then v78[p1] else v79)|];
					v68[safeIndex(410, v68.Length)] := if (true) then v77 else v77.(cf23 := |v80|, cf22 := p2, cf21 := v74);
				} else {
					globalState.f13 := p2;
					var v81: array<array<char>> := new array<char>[27];
					var v82: array<char> := new char[5];
					v81[safeIndex(325, v81.Length)] := v82;
					v0[safeIndex(20, v0.Length)] := p2;
					var v83 := DC3(multiset(v67));
					var v84 := DC5(v83);
					var v85 := DC8(v2, v2, v84, p2, p1);
					var v86: multiset<string> := multiset{p1, p1, p1};
					var v87: array<int> := new int[24];
					var v88 := DC13(v85, v86, p2, v2, v87);
					var v89: set<int> := {v88.cf23, v2 * v2};
					v81[safeIndex(325, v81.Length)], globalState.f6, v0[safeIndex(20, v0.Length)], v89 := v82, v2, p2, v89;
					v0[safeIndex(20, v0.Length)] := -v2 <= v2;
					v29 := v29[v2 := v2];
					var v90: array<string> := new string[18](i6 => "jltj");
					v90[safeIndex(238, v90.Length)] := p1;
					var v91: map<char, map<bool, int>> := map[v23 := map[p2 := fm1(globalState)]];
					var v92: map<bool, int> := map[v0[safeIndex(20, v0.Length)] := v2];
					var v93 := DC1(v0[safeIndex(20, v0.Length)], v2, |fm27(globalState)|);
					var v94: map<bool, bool> := map[v0[safeIndex(20, v0.Length)] := v0[safeIndex(20, v0.Length)]];
					globalState.f6, globalState.f6, globalState.f6, v90[safeIndex(238, v90.Length)] := safeModuloInt(v2, |v24|) * |(if (cf0 in v91) then v91[cf0] else v92)|, v93.cf2, (v2 - |fm26(true, v94, v2, globalState)|) * (v2 * 327), p1;
				}
				
		}
		
		var v95 := DC4(v26, v2, p2);
		var v96 := DC5(v95);
		var v97 := DC8(v2, v2, v96, p2, seq(abs(0x27b), i7  => (v23)));
		var v98: multiset<int> := multiset{v97.cf11, v2};
		var v99 := DC3(v98);
		var v100: set<char> := {v23, v23};
		var v101: map<seq<D1>, multiset<set<char>>> := map[[v99] := multiset{v100, v100}];
		var v102: seq<D1> := [v99];
		var v103: multiset<set<char>> := multiset{v100, v100};
		v101 := v101[(seq(abs(-0xf3), i8  => (DC3(v98)))) + v102 := v103];
	}
}

class C3 extends T2 {
	var f24 : array<array<int>>
	const f25 : bool
	constructor (f24 : array<array<int>>, f25 : bool, f17 : bool, f16 : map<D0, int>) {
		this.f24 := f24;
		this.f25 := f25;
		this.f17 := f17;
		this.f16 := f16;
	}
	
	function fm2(globalState: GlobalState): int {
		|((if (f17) then multiset{!f25} else multiset{f17}) + multiset{f17, f25})|
	}
	function fm1(globalState: GlobalState): int {
		safeDivisionInt(75 - 0x69, |"fkoc"|)
	}
	function fm32(p0: seq<D6>, globalState: GlobalState): int {
		-0x2cf - |(if (!f25) then [-0xd6, 0xc5] else seq(abs(0x14e), i0  => (0x2f3)))|
	}
	method m0(globalState: GlobalState) returns (r0: bool, r1: int, r2: int) {
		var v0: map<bool, bool> := map[f25 := f17];
		var v1 := DC6(v0);
		var v2 := DC9(v1);
		var v3 := 0x19b;
		var v4: multiset<bool> := multiset{f25};
		var v5 := "xi";
		var v6: set<int> := {v3, |v5|};
		var v7: map<multiset<bool>, int> := map[v4 := |v6|];
		var v8: seq<int> := [v3, v3];
		var v9, v10 := m10("ihvh", false, v2, if (!fm0(f25, v3, f25, f17, globalState)) then -v3 else if (v4 in v7) then v7[v4] else |v8|, globalState);
		for i0 := v9 to v3 {
			var v11 := DC2();
			var v12: array<D0> := new D0[20] [v11, fm33(globalState), DC2(), v11, v11, DC2(), v11, v11, v11, fm33(globalState), v11, v11, v11, v11, v11, v11, v11, v11, v11, v11];
			var v13 := DC18(v12, v10, v3);
			match (v13) {
				case DC16(cf27, cf28, cf29, cf30, cf31) =>
					var v14: array<int> := new int[2] [-203, v9];
					v14[safeIndex(799, v14.Length)] := cf27 - -0x300;
					v14[safeIndex(799, v14.Length)] := i0;
					var v15: map<bool, int> := map[false := i0];
					v15 := v15[f25 in v0 := -v3];
					var v16: array<array<bool>> := new array<bool>[20];
					var v17: array<bool> := new bool[5];
					v16[safeIndex(927, v16.Length)] := v17;
					v16[safeIndex(927, v16.Length)] := v17;
					v3 := v14[safeIndex(799, v14.Length)] + fm1(globalState);
				case DC17() =>
					var v19 := DC1(f25, i0, v3);
					var v20: multiset<D0> := multiset{DC1(f25, |v5|, v3), v19};
					var v21 := new C2(f16 + (map v18 : D0 | v18 in v20 :: (v18) := (|multiset{map[true := false], v0}|)));
					r0 := if (f17 in v0) then v0[f17] else f25 ==> v10;
					var v22 := 'y';
					var v23 := DC0(if (v10) then v22 else v22);
					v23 := if (fm0(false, v9, v10, v10, globalState) <== v10) then v23 else v23;
					var v24: multiset<int> := multiset{i0};
					var v25 := DC3(v24);
					var v26 := DC5(v25);
					var v27 := DC5(v26.cf8);
					var v28 := DC5(v25);
					var v29 := new C1(v28, f16);
				case DC18(cf32, cf33, cf34) =>
					var v30 := new C0(safeDivisionInt(|v5|, -0x1c1), f16);
					var v31: array<int> := new int[13](i1 => safeDivisionInt(i1, v3));
					var v32: multiset<array<int>> := multiset{v31};
					v32 := v32;
					var v33 := DC1(f17, i0, i0);
					r2 := (fm2(globalState) + i0) - v33.cf2;
					r1 := v3;
				case DC15(cf26) =>
					v9 := |multiset{v10, v10, if (f25) then f17 else f17}|;
					var v34 := 'x';
					var v35: map<int, char> := map[v3 := v34];
					var v36: array<int> := new int[15](i2 => i2 + 0x191);
					var v37: map<bool, array<int>> := map[fm0(f17, v3, f17, v10, globalState) := v36];
					var v38: map<array<int>, int> := map[if (v10 in v37) then v37[v10] else v36 := i0];
					v35 := v35[fm2(globalState) := fm34(if (v10 in v4) then v4[v10] else |v38|, f17, f25, globalState)];
					v8 := [fm1(globalState), v3, v9] + ((seq(abs(0x4b), i3  => (306))) + v8[safeIndex(v3, |v8|) := |"n"|]);
					r1 := -v9;
			}
			
			var v39: array<bool> := new bool[1];
			v39[safeIndex(277, v39.Length)] := !f17;
			v39[safeIndex(277, v39.Length)] := !f25;
			globalState.f6 := v3;
			var v40: array<int> := new int[8];
			v40[safeIndex(813, v40.Length)] := i0;
			var v41: multiset<int> := multiset{i0};
			v40[safeIndex(813, v40.Length)] := if (|v4| in v41) then v41[|v4|] else v3;
		}
		var i4 := 0;
		while (f17)
			decreases 100 - i4
		{
			if (i4 >= 100) {
				break;
			}
			
			i4 := i4 + 1;
			r1 := v9;
			var v42: array<bool> := new bool[7];
			var v43: set<array<bool>> := {v42, v42};
			var v44: map<int, set<array<bool>>> := map[v3 := v43];
			globalState.f6 := |(if (v3 in v44) then v44[v3] else v43)|;
			v3 := v9;
			globalState.f6 := v9;
		}
		var v45: array<bool> := new bool[15];
		v45[safeIndex(938, v45.Length)] := f25;
		var v46: array<int> := new int[28](i5 => i5 + |v5|);
		var v47: map<bool, int> := map[!f25 := v3];
		v46[safeIndex(102, v46.Length)] := |(v47 + map[v10 := v3])|;
		var v48: set<multiset<bool>> := {v4};
		var v49 := DC20(f17, v10, |v8|, v48);
		v45[safeIndex(938, v45.Length)], globalState.f12, v10, v10, v46[safeIndex(102, v46.Length)] := !f25, 'w', f25, f25, v49.cf38;
		var v50: C0 := new C0(-v46[safeIndex(102, v46.Length)] + v9, f16);
		v50 := v50;
		var v51: seq<bool> := [f25, v45[safeIndex(938, v45.Length)], true, f17, v45[safeIndex(938, v45.Length)]];
		var v52 := DC10([f25, f17]);
		v51 := match v52 {
			case DC11(cf18) => v51
			case DC10(cf17) => cf17 + cf17[safeIndex(v9, |cf17|) := true]
		};
		r0 := f25;
		r1 := safeModuloInt(v9, v9);
		r2 := v46[safeIndex(102, v46.Length)];
	}
	method m10(p0: string, p1: bool, p2: D2, p3: int, globalState: GlobalState) returns (r0: int, r1: bool) {
		f17 := p1;
		var v0: map<bool, bool> := map[f25 := f17];
		var i0 := 0;
		while (|v0| >= p3)
			decreases 100 - i0
		{
			if (i0 >= 100) {
				break;
			}
			
			i0 := i0 + 1;
			globalState.f6 := -(if (f25) then safeModuloInt(|p0|, p3) else -p3);
			r0 := safeModuloInt(p3, p3);
			var v1: array<int> := new int[19](i1 => safeDivisionInt(i1, p3));
			v1[safeIndex(213, v1.Length)] := fm2(globalState);
			v1[safeIndex(213, v1.Length)] := p3;
			var v2: array<D6> := new D6[23](i2 => DC21(p1, false, |p0[safeIndex(v1[safeIndex(213, v1.Length)], |p0|) := 'c']|));
			var v3: map<int, bool> := map[v1[safeIndex(213, v1.Length)] := p1];
			var v4: seq<int> := [v1[safeIndex(213, v1.Length)]];
			var v5 := DC21(if (v4[safeIndex(p3, |v4|)] in v3) then v3[v4[safeIndex(p3, |v4|)]] else f17, false, -|p0|);
			v2[safeIndex(449, v2.Length)] := v5;
			v2[safeIndex(449, v2.Length)] := v5;
		}
		var v6: array<int> := new int[24];
		forall i3 | 0 <= i3 < v6.Length {
			v6[i3] := i3 + |([f25] + [f25])|;
		}
		var v7: seq<int> := [0x6d];
		var v8: multiset<int> := multiset{p3, p3};
		var v9: map<int, multiset<int>> := map[p3 := v8];
		v7, r0, globalState.f6, v9 := v7, fm1(globalState), p3, v9[p3 := multiset{p3, 0x1b9}];
		var v10: array<bool> := new bool[16](i4 => p1);
		v10[safeIndex(721, v10.Length)] := f25;
		v10[safeIndex(721, v10.Length)] := f17;
		if (f25) {
			globalState.f13 := v10[safeIndex(721, v10.Length)];
			v6[safeIndex(598, v6.Length)] := |([p3] + v7)|;
			v6[safeIndex(598, v6.Length)] := p3;
			match (DC2()) {
				case DC1(cf1, cf2, cf3) =>
					globalState.f6 := v6[safeIndex(598, v6.Length)];
					var v11 := 'y';
					globalState.f12 := v11;
					var v12 := new C0(safeModuloInt(cf2, |v8|), f16 + f16);
					var v13 := "t";
					v13 := v13[safeIndex(cf3, |v13|) := v11];
				case DC2() =>
					var v14 := new C0(0x3d7, f16);
					v6[safeIndex(598, v6.Length)] := p3;
					globalState.f13, f17 := if (v14.f20 <= v14.f20) then f17 else fm0(v10[safeIndex(721, v10.Length)], v14.f20, v10[safeIndex(721, v10.Length)], f25, globalState), f17;
					v6[safeIndex(598, v6.Length)] := v14.f20;
				case DC0(cf0) =>
					r1 := f17;
					v10[safeIndex(721, v10.Length)] := v10[safeIndex(721, v10.Length)];
					var v15: C2 := new C2(f16);
					var v16: set<C2> := {v15, v15};
					globalState.f6 := |v16| - |v7|;
					var v17: array<seq<int>> := new seq<int>[8];
					v17[safeIndex(311, v17.Length)] := if (v10[safeIndex(721, v10.Length)]) then [v6[safeIndex(598, v6.Length)], p3, v6[safeIndex(598, v6.Length)]] else v7;
					var v18: array<D5> := new D5[24](i5 => DC15(map["ysqapkn" := |multiset{map[-0xbb := v6[safeIndex(598, v6.Length)]]}|]));
					var v20: seq<string> := [p0];
					var v21 := DC15(map v19 : string | v19 in multiset(v20) :: (v19) := (|multiset{v10[safeIndex(721, v10.Length)]}|));
					var v22: map<string, int> := map[p0 := p3];
					v18[safeIndex(865, v18.Length)] := v21.(cf26 := v22);
					var v23: C0 := new C0(|v8|, f16);
					var v24: map<C0, int> := map[v23 := v6[safeIndex(598, v6.Length)]];
					var v25: map<int, bool> := map[p3 := f25];
					v17[safeIndex(311, v17.Length)], v10[safeIndex(721, v10.Length)], v18[safeIndex(865, v18.Length)], v10[safeIndex(721, v10.Length)], globalState.f13 := v7 + (seq(abs(777), i6  => (v6[safeIndex(598, v6.Length)]))), f17, v21, (p3 >= |v24|) <== f17, fm0(if (p3 in v25) then v25[p3] else v10[safeIndex(721, v10.Length)], v23.f20, !p1, true, globalState);
			}
			
			var v26: seq<bool> := [p1, v10[safeIndex(721, v10.Length)]];
			var v27: seq<seq<bool>> := [v26, v26];
			globalState.f6 := |v27| * (0x208 * v6[safeIndex(598, v6.Length)]);
			globalState.f13 := v10[safeIndex(721, v10.Length)];
		} else {
			var v28 := DC22(v7);
			var v29 := DC24(v28);
			var v30 := DC24(DC24(v28));
			match (v30.(cf47 := DC22(v7))) {
				case DC23(cf44, cf45, cf46) =>
					globalState.f13 := safeDivisionInt(|v7|, p3) < cf44;
					v6[safeIndex(374, v6.Length)] := cf46;
					var v31: map<bool, int> := map[p1 := cf46];
					var v32: T1 := new C2(f16[DC1(f25, cf45, cf44) := cf44]);
					var v33 := DC25(map[f17 := |map[f17 := v32]|]);
					v6[safeIndex(374, v6.Length)] := |((v31 + v33.cf48) + v31)|;
					var v34 := DC26(f17);
					var v35: set<map<bool, bool>> := {v0, v0[v10[safeIndex(721, v10.Length)] := fm0(v34.cf49, cf46, v10[safeIndex(721, v10.Length)], true, globalState)], map[p1 := f17], v0};
					v35 := v35 + v35;
					var v36: seq<array<bool>> := [v10, v10];
					var v37 := 'k';
					globalState.f12, r1, cf46, v36 := v37, f25, cf46 * -p3, v36;
				case DC22(cf43) =>
					var v38: array<D0> := new D0[13](i7 => DC2());
					var v39 := DC18(v38, f17, 0x18e);
					var v40: seq<D5> := [v39];
					v40 := v40;
					globalState.f13 := p1;
					v6 := v6;
					var v41: set<bool> := {true};
					var v42: map<set<bool>, int> := map[v41 := p3];
					v42 := v42[v41 := p3];
				case DC24(cf47) =>
					v10[safeIndex(721, v10.Length)] := false;
					var v43: map<bool, int> := map[!v10[safeIndex(721, v10.Length)] := |v0|];
					var v44 := DC25(v43);
					var v45: seq<D8> := [v44, v44, DC25(v43), v44];
					var v46: set<seq<D8>> := {v45, fm35(f17, globalState), v45, v45, v45 + [v44, v44, v44]};
					v46 := v46;
					var v47 := "mlb";
					v47 := "xk" + ("flinxfty" + v47);
					var v48 := DC1(true, p3, p3);
					var v49 := new C0(-|map[f25 := false]|, map[v48 := p3]);
			}
			
			var v50: multiset<bool> := multiset{f17};
			var v51: map<int, bool> := map[p3 := f25];
			v0 := v0[|v50| >= p3 := if (p3 in v51) then v51[p3] else p1];
			var v52 := new C2(f16);
			var v53 := 'g';
			var v54 := DC0(v53);
			globalState.f12 := (if (p1) then DC0(v53) else v54).cf0;
			if (fm0(!f25, v52.fm1(globalState) * p3, v10[safeIndex(721, v10.Length)], p3 == 0x2f4, globalState)) {
				var v55 := "ulshtpix";
				var v56: multiset<char> := multiset{v53};
				var v57 := DC21(!f25, f25, 0x26a);
				var v58: seq<D6> := [v57];
				v55, v10[safeIndex(721, v10.Length)], globalState.f6, v56 := v55[safeIndex(fm32(v58, globalState) - p3, |v55|) := 'i'], f17, if (v10[safeIndex(721, v10.Length)]) then 721 else -843, fm36(p3, globalState);
				var v59: seq<D0> := [DC0(v53)];
				var v60: set<seq<D0>> := {[v54.(cf0 := v53), v54, DC0(v53)], v59};
				v10[safeIndex(721, v10.Length)], v60 := v10[safeIndex(721, v10.Length)] <==> f25, v60;
				var v61: array<array<bool>> := new array<bool>[4] [v10, v10, v10, v10];
				var v62: array<array<array<bool>>> := new array<array<bool>>[14] [v61, v61, v61, v61, v61, v61, v61, v61, v61, if (f25) then v61 else v61, v61, v61, v61, v61];
				v62[safeIndex(692, v62.Length)] := v61;
				var v63: set<bool> := {f17, f25};
				var v64: map<set<bool>, bool> := map[v63 := true];
				var v65 := DC3(v8);
				var v66 := DC5(v65);
				var v67 := DC8(|v64|, p3, v66, p1, "kylib");
				var v68: multiset<string> := multiset{v55, p0, v55[safeIndex(277, |v55|) := v53]};
				var v69 := DC13(v67, v68, v10[safeIndex(721, v10.Length)], p3, v6);
				v55, v62[safeIndex(692, v62.Length)], globalState.f6, v69, globalState.f13 := v55, v61, -(-0x318 * p3), v69, v10[safeIndex(721, v10.Length)];
				r0 := -fm2(globalState);
				r0 := p3 * p3;
			} else {
				globalState.f13 := f17;
				globalState.f6 := p3;
				var v70: array<multiset<int>> := new multiset<int>[16];
				v70[safeIndex(573, v70.Length)] := v8;
				v70[safeIndex(573, v70.Length)] := multiset{if (v10[safeIndex(721, v10.Length)]) then p3 else |multiset{0xa0}|};
				var v71 := new C2(f16 + fm37(-0x2d5, p3, globalState));
				globalState.f13 := f25;
			}
			
		}
		
		r0 := 967;
		r1 := -0x298 > |(if (v10[safeIndex(721, v10.Length)]) then p0 else seq(abs(0x329), i8  => ('e')))|;
	}
}

class C4 extends T2 {
	var f21 : bool
	const f22 : D1
	constructor (f21 : bool, f22 : D1, f17 : bool, f16 : map<D0, int>) {
		this.f21 := f21;
		this.f22 := f22;
		this.f17 := f17;
		this.f16 := f16;
	}
	
	function fm2(globalState: GlobalState): int {
		safeDivisionInt(safeDivisionInt(-0x329, -0x383), |(map['e' := "eukqtk"] + map['u' := "tgmrb"])|)
	}
	function fm1(globalState: GlobalState): int {
		--(safeDivisionInt(|multiset{true, f21, true}|, -0x3a7) - |"vhb"|)
	}
	function fm11(p0: seq<bool>, p1: bool, p2: map<bool, char>, p3: bool, globalState: GlobalState): bool {
		f21 ==> f21
	}
	method m0(globalState: GlobalState) returns (r0: bool, r1: int, r2: int) {
		var v0 := 0x0;
		r2 := v0;
		var v1: array<int> := new int[27];
		v1[safeIndex(56, v1.Length)] := 0x383;
		var v2: array<seq<map<bool, bool>>> := new seq<map<bool, bool>>[20];
		var v3: seq<map<bool, bool>> := [(map[f17 := f17])[f17 := f21]];
		v2[safeIndex(20, v2.Length)] := v3;
		var v4: map<int, seq<map<bool, bool>>> := map[v0 := v3];
		v1[safeIndex(56, v1.Length)], r0, v2[safeIndex(20, v2.Length)] := v0, if (f21) then f17 else f17, (v3 + (if (fm1(globalState) in v4) then v4[fm1(globalState)] else v3)) + v3;
		var v5 := "xjgodeau";
		v5 := fm12(v0, globalState) + v5;
		var v6: map<int, bool> := map[-838 := f21];
		var v7: map<map<int, bool>, int> := map[v6 := 0xcf];
		var v8 := new C0(v1[safeIndex(56, v1.Length)], map[fm13(v1[safeIndex(56, v1.Length)], if (v6 in v7) then v7[v6] else v1[safeIndex(56, v1.Length)], globalState) := v1[safeIndex(56, v1.Length)]]);
		var v9 := 'p';
		var i0 := 0;
		while (v9 !in v5)
			decreases 100 - i0
		{
			if (i0 >= 100) {
				break;
			}
			
			i0 := i0 + 1;
			globalState.f13 := f17;
			var v10: map<int, map<D0, int>> := map[fm1(globalState) := f16];
			var v11 := DC1(f21, v8.f20, fm1(globalState));
			var v12: set<bool> := {f21, f21};
			var v13: map<bool, set<bool>> := map[!false := v12];
			var v14 := new C0(v1[safeIndex(56, v1.Length)], (if (v0 in v10) then v10[v0] else map[v11 := v1[safeIndex(56, v1.Length)]])[DC1(f21, v1[safeIndex(56, v1.Length)], v8.f20) := |v13|]);
			var v15: seq<int> := [v1[safeIndex(56, v1.Length)]];
			var v16: seq<int> := [v1[safeIndex(56, v1.Length)], |v15| - 0x138, v0];
			v15 := (v16 + v15) + [-v14.f20];
			var v17 := DC2();
			var v18: map<D0, int> := map[v17 := DC4(v17, -v14.f20, f21).cf6 - v8.f20];
			v18 := v18[v17 := 0x124];
		}
		r0 := f17;
		r0 := f21;
		r1 := -(safeModuloInt(v8.f20, -v0) * |v5|);
		r2 := v1[safeIndex(56, v1.Length)];
	}
	method m5(p0: int, p1: bool, p2: D0, globalState: GlobalState) returns (r0: int, r1: D0, r2: int, r3: bool) {
		var v0 := 'h';
		var v1 := DC0(v0);
		match (v1) {
			case DC1(cf1, cf2, cf3) =>
				r0 := -(p0 - cf2);
				globalState.f13 := p1;
				var v2: array<int> := new int[9](i0 => safeDivisionInt(i0, cf3));
				v2 := v2;
				if (cf1) {
					var v3: map<bool, int> := map[f17 := cf2];
					var v4: seq<int> := [if (f21 in v3) then v3[f21] else cf3, cf3, cf3, p0];
					var v5: seq<bool> := [p1 && cf1, p1, cf2 <= |v4|];
					v5 := v5[safeIndex(cf3, |v5|) := cf1];
					var v6: map<int, bool> := map[589 := f17 <==> p1];
					var v7: map<int, int> := map[cf3 := |fm14(globalState)|];
					v6 := v6[cf3 := v7 == v7];
					var v8: map<bool, bool> := map[false := cf1];
					var v9: set<bool> := {p2.cf1, f17};
					globalState.f6, f21, cf2, cf3, cf1 := |(v8 + v8)|, f17 in (if (f17) then v5 else fm15(cf3, f22, globalState))[safeIndex(-v4[safeIndex(cf2, |v4|)], |(if (f17) then v5 else fm15(cf3, f22, globalState))|) := false], (cf2 - -|v7|) + cf3, if (f17) then safeModuloInt(|fm12(|v9|, globalState)|, cf3) else cf2, if (f21) then f21 else f17 || true;
					var v10 := new C0(-(-cf2 - fm1(globalState)), f16);
					v2[safeIndex(676, v2.Length)] := |v6| - cf2;
					var v11: multiset<C0> := multiset{v10};
					var v12: map<multiset<C0>, int> := map[v11 := -cf2];
					var v13: multiset<int> := multiset{|v6|, 0xce};
					var v14: array<bool> := new bool[11] [p0 == cf3, fm0(f21, if (cf3 in v7) then v7[cf3] else 0x13c, cf1, !f17, globalState), f17, v12 == v12, true, v5[safeIndex(v10.f20, |v5|)], f21, f21, !!(|v13[cf2 := abs(cf2)]| != v10.f20), cf1, f21];
					v2[safeIndex(676, v2.Length)], v2, globalState.f4, globalState.f12, globalState.f6 := cf2, v2, v14, v0, --(p0 - v10.f20);
				} else {
					var v15: multiset<bool> := multiset{cf1, cf1};
					var v16: map<bool, bool> := map[p1 := !p2.cf1 !in v15];
					v16 := v16[p1 := cf1];
					v2 := v2;
					var v17: array<bool> := new bool[14];
					var v18: set<array<bool>> := {v17};
					var v19: map<bool, int> := map[f21 := cf3];
					var v20: map<D1, int> := map[DC3(multiset(fm16('k', |v18|, v19, cf1, globalState))) := fm1(globalState)];
					var v21: multiset<map<D1, int>> := multiset{v20};
					var v22: map<int, multiset<map<D1, int>>> := map[-cf3 * |v16| := v21];
					var v23 := "jqtmhbhpf";
					var v24: seq<map<D1, int>> := [v20, v20, v20, v20];
					v21 := if (|v23| in v22) then v22[|v23|] else multiset(v24);
					r2 := if (cf1 <==> f17) then cf3 else cf3;
					var v25: seq<bool> := [f21, false];
					var v27: seq<map<bool, int>> := [v19[f17 := p0]];
					var v28: set<int> := {|(map v26 : map<bool, int> | v26 in v27 :: (v26) := (cf2))|};
					var v29: seq<bool> := [v25[safeIndex(|v28|, |v25|)], p1, cf1, p1];
					f17 := v29[safeIndex(p0, |v29|)];
				}
				
			case DC2() =>
				globalState.f6 := |"kir"|;
				if (f21) {
					var v30: map<bool, bool> := map[f17 <== f17 := p1];
					v30 := v30;
					var v31: array<D1> := new D1[2](i1 => DC5(DC3(multiset([0x16c, |[false]|, -p0, p0, -p0]))));
					var v32: seq<bool> := [!true];
					var v33: map<bool, int> := map[f21 := p0];
					var v34: set<int> := {--|v32|, p0, p0, |(v33 + v33)|, p0};
					var v35: array<bool> := new bool[22];
					v35[safeIndex(491, v35.Length)] := f21;
					var v36: map<int, char> := map[p0 := v0];
					var v37: multiset<int> := multiset{p0, |v36|, p0};
					var v38 := DC3(v37);
					var v39 := DC5(v38);
					var v40: map<bool, char> := map[p1 := 'd'];
					v31, v34, v35[safeIndex(491, v35.Length)], v39 := v31, v34, fm11(if (false) then v32 else v32, f17, v40, p1, globalState), v39;
					globalState.f12 := v0;
					var v41 := "pdkwm";
					v41 := v41 + ((seq(abs(0x24d), i2  => (v0))) + v41);
					var v42 := DC2();
					var v43 := DC4(v42, p0, v35[safeIndex(491, v35.Length)]);
					var v44: C0 := new C0(p0, f16);
					var v45: seq<C0> := [v44];
					var v46: seq<int> := [p0, -|v34|, |v45|, p0];
					var v47: map<int, seq<int>> := map[(v43.(cf5 := v42, cf6 := p0)).cf6 := v46];
					r0 := |(if (v44.f20 in v47) then v47[v44.f20] else v46)|;
				} else {
					f17 := f17;
					var v48: map<int, char> := map[p0 := v0];
					var v49: array<char> := new char[16] [v0, if (!p1) then v0 else v0, if (p0 in v48) then v48[p0] else v0, v1.cf0, v0, v0, v0, if (p1) then v0 else v0, v0, v0, v0, v0, v0, v0, v0, v0];
					v49[safeIndex(941, v49.Length)] := 'q';
					v49[safeIndex(941, v49.Length)] := if (p1) then fm17(globalState) else v0;
					f21 := p1 <== false;
					var v50: map<bool, bool> := map[f17 := true];
					var v51: map<int, bool> := map[p0 + p0 := true !in v50];
					var v52 := "k";
					v51 := v51[|v52| := f17];
					var v53 := new C0(p0, map[p2 := p0]);
				}
				
				f21 := f21;
				var v54: seq<char> := ['k'];
				var v55, v56, v57 := m6(28, v54, globalState);
			case DC0(cf0) =>
				var v58: array<bool> := new bool[26](i3 => f17 in multiset{f17});
				v58[safeIndex(23, v58.Length)] := f17;
				v58[safeIndex(23, v58.Length)] := !(!p1 ==> (p1 <== p1));
				var v59: map<bool, bool> := map[true := f21];
				f21, globalState.f6 := p1, -(|(map[f21 := !f21] + v59)| - fm1(globalState));
				if (v58[safeIndex(23, v58.Length)]) {
					var v60 := new C0(p0, f16);
					var v61: multiset<int> := multiset{v60.f20};
					globalState.f13 := safeDivisionInt(p0, p0) < safeDivisionInt(v60.f20, if (-0x171 in v61) then v61[-0x171] else v60.f20);
					var v62: seq<int> := [p0];
					v58[safeIndex(23, v58.Length)] := fm0(v58[safeIndex(23, v58.Length)], v62[safeIndex(p0, |v62|)], !f17 && f21, v60.f20 < |v61|, globalState);
					var v63: T1 := new C2(f16);
					var v64: seq<T1> := [v63];
					var v65: seq<T1> := [v63, v64[safeIndex(v60.f20, |v64|)], v63, v63, v63];
					var v66: array<int> := new int[25](i4 => i4 + v60.f20);
					var v67: map<array<int>, int> := map[v66 := v60.f20];
					var v68: map<bool, array<int>> := map[f21 := v66];
					var v69: set<T1> := {v63, v65[safeIndex(|v67[if (f17 in v68) then v68[f17] else v66 := p0]|, |v65|)]};
					var v70: array<set<T1>> := new set<T1>[10] [v69, {v63, v63}, v69 + v69, v69, {v63, v63}, {v63, v63}, v69, v69, v69, v69];
					v70[safeIndex(293, v70.Length)] := {v63, v63, v63, v63} * {v63};
					v70[safeIndex(293, v70.Length)] := v69;
					var v71: array<map<string, int>> := new map<string, int>[24];
					var v72 := "imajhebok";
					var v73: map<string, int> := map[v72 := p0];
					v71[safeIndex(455, v71.Length)] := v73 + v73;
					var v74 := DC15(map[v72 := 174]);
					v71[safeIndex(455, v71.Length)] := v74.cf26;
				} else {
					globalState.f12 := cf0;
					var v75 := "ydsxb";
					r2, v58[safeIndex(23, v58.Length)], v75, r3, globalState.f6 := |"du"|, !(p0 >= p0), fm12(p0, globalState), v58[safeIndex(23, v58.Length)], p0;
					var v76: multiset<int> := multiset{p0, 0x108};
					v76 := multiset{-p0};
					var v77: map<bool, int> := map[!!(p0 != -0x308) := p0 - p0];
					v77 := v77[!p1 := p0];
					var v78 := DC2();
					var v79 := DC5(DC5(DC4(v78, p0, f17)));
					var v80 := DC8(p0, p0, v79, v58[safeIndex(23, v58.Length)], "mnuvip");
					var v81 := DC16(938, v80, v75, false, fm0(v58[safeIndex(23, v58.Length)], p0, f21, true, globalState));
					var v82: map<D5, char> := map[v81 := cf0];
					var v83 := DC3(v76);
					var v84 := DC5(v83);
					v82 := v82[DC16(|v75|, DC8(p0, p0, DC5(v83), true, "uovykcbc"), v75, v58[safeIndex(23, v58.Length)], f21) := fm17(globalState)];
				}
				
				var v85: array<D0> := new D0[27](i5 => DC2());
				globalState.f6, globalState.f6 := DC18(v85, f21, p0).cf34, -p0;
		}
		
		var v86: seq<char> := [v0, v0, v0, v0, v0];
		var v87, v88, v89 := m6(p0 + fm2(globalState), v86, globalState);
		var v90: map<bool, int> := map[v89 := p0];
		var v91: map<int, map<bool, int>> := map[p0 := v90];
		var v92: map<int, char> := map[|v91| := v0];
		var v93: seq<map<int, char>> := [map[p0 := v0], v92, v92, map[p0 := v0]];
		var v94: map<int, map<int, char>> := map[|(v86 + v86)| := v93[safeIndex(p0, |v93|)]];
		v94 := v94[-p0 := v92];
		if (v87) {
			var v95: set<int> := {p0, 0x1c6, p0};
			globalState.f6 := |((v95 * v95) * v95)|;
			globalState.f6 := p0 * p0;
			var v96 := new C2(f16 + fm24(true, p0, v0, p0, globalState));
			var v97: array<int> := new int[8] [0x34c, 772, |v86|, p0, p0, p0, p0, --p0];
			v97[safeIndex(13, v97.Length)] := p0;
			var v98: seq<int> := [p0, -0x1f0, p0];
			var v99 := DC2();
			var v100: array<D0> := new D0[24] [v99, v99, DC2(), v99, v99, v99, DC2(), v99, v99, v99, v99, v99, v99, v99, v99, v99, v99, v99, v99, v99, v99, v99, v99, v99];
			var v101 := DC18(v100, f17, p0);
			var v102: set<bool> := {v87, v87, !true, f17, false};
			v97[safeIndex(13, v97.Length)] := v98[safeIndex(v101.cf34 + |DC19(v102).cf35|, |v98|)];
			v97[safeIndex(13, v97.Length)] := safeModuloInt(p0, p0 + |v86|);
		} else {
			globalState.f13 := v87 || f21;
			var v103: array<bool> := new bool[1](i6 => v87);
			v103[safeIndex(447, v103.Length)] := p1;
			v103[safeIndex(447, v103.Length)] := p0 <= -0x2f;
			var v104 := DC2();
			var v105: map<D0, int> := map[v104 := p0];
			v105 := v105[v104 := p0];
			var v106: map<int, bool> := map[435 := v103[safeIndex(447, v103.Length)]];
			var v107: array<int> := new int[12] [p0, p0, p0, p0, p0, p0, |"ooctk"|, 0x26f + p0, p0, |v106|, p0, p0];
			var v108: C0 := new C0(p0, f16);
			var v109: map<C0, bool> := map[v108 := !v89];
			v107[safeIndex(230, v107.Length)] := |v109[v108 := v103[safeIndex(447, v103.Length)]]|;
			v107[safeIndex(230, v107.Length)] := safeDivisionInt(p0, p0);
			var v110 := DC21(p1, v87, 0x117);
			v110 := v110;
		}
		
		match (match if (f21) then f22 else f22 {
			case DC4(cf5, cf6, cf7) => DC17()
			case DC3(cf4) => DC17()
			case DC5(cf8) => DC17()
		}) {
			case DC16(cf27, cf28, cf29, cf30, cf31) =>
				var v111: array<char> := new char[18](i7 => v0);
				v111[safeIndex(129, v111.Length)] := v0;
				v111[safeIndex(129, v111.Length)] := v0;
				var v112: array<D0> := new D0[18](i8 => DC2());
				var v113 := DC18(v112, f17, cf27);
				var v114: map<string, D5> := map[cf29 := v113];
				v114 := v114;
				var v115: set<bool> := {cf30};
				if (|(v115 + v115)| > p0) {
					var v116: array<string> := new string[1];
					v116[safeIndex(208, v116.Length)] := v86 + v86;
					v116[safeIndex(208, v116.Length)], globalState.f6, f17, cf27 := cf29, 775, cf30, safeModuloInt(cf27, p0);
					cf27 := cf27;
					var v117: array<int> := new int[15](i9 => safeDivisionInt(i9, 0xab));
					var v118 := DC19(v115);
					var v119: seq<set<bool>> := [v115, v118.cf35];
					v117, f21, v119 := v117, !v89, [v115];
					var v120: seq<string> := [v86, seq(abs(-0x250), i10  => (v111[safeIndex(129, v111.Length)]))];
					v120 := v120 + (v120 + [v86, "qk"]);
					v111[safeIndex(129, v111.Length)] := cf29[safeIndex(cf27, |cf29|)];
				} else {
					globalState.f6 := safeDivisionInt(p0, cf27);
					v87 := cf31;
					var v121: array<array<bool>> := new array<bool>[23];
					var v122: map<bool, array<array<bool>>> := map[cf31 := v121];
					var v123: array<bool> := new bool[26] [v87, f17, cf31, v87, f17, f17, f17, cf30, !!v87, cf30, v88, f21, cf30, !true, false, cf30, v87, v87, true, cf30, v88, p1, v89, true, v89, !p1];
					var v124: map<array<array<bool>>, array<bool>> := map[if (v87) then v121 else if (cf30 in v122) then v122[cf30] else v121 := v123];
					globalState.f4, r2 := if (v121 in v124) then v124[v121] else v123, p0;
					var v125: array<int> := new int[9] [p0, p0, p0, p0, |cf29[safeIndex(p0, |cf29|) := v0]|, |v86|, cf27, p0, |v86|];
					var v126: array<array<int>> := new array<int>[5] [v125, v125, v125, v125, v125];
					var v127: seq<array<array<int>>> := [v126, v126, v126];
					var v128: set<int> := {p0, p0};
					var v129: C0 := new C0(cf27, f16);
					var v130: seq<C0> := [v129];
					var v131: multiset<int> := multiset{|v130|};
					var v132: map<multiset<int>, array<array<int>>> := map[v131 := v126];
					var v133: map<int, array<array<int>>> := map[v129.f20 := v126];
					var v134: array<array<array<int>>> := new array<array<int>>[27] [v126, v127[safeIndex(|v128|, |v127|)], v126, v126, v126, v126, v126, v126, v126, if (false) then v126 else v126, v126, v126, if (v131 in v132) then v132[v131] else v126, v126, v126, if (f17) then v126 else v126, v126, v126, v126, v126, v127[safeIndex(0x11a, |v127|)], v126, v126, v126, v126, if (-cf27 in v133) then v133[-cf27] else v126, v126];
					v134[safeIndex(942, v134.Length)] := v126;
					v134[safeIndex(942, v134.Length)] := v126;
					var v135: array<map<bool, set<char>>> := new map<bool, set<char>>[13];
					var v136: set<char> := {'j'};
					var v137: map<bool, set<char>> := map[cf31 := v136];
					v135[safeIndex(125, v135.Length)] := v137;
					globalState.f6, cf29, v135[safeIndex(125, v135.Length)] := |v136|, v86, map[fm0(true, p0, cf31, cf31, globalState) := v136];
				}
				
				var v138: seq<bool> := [v88, f17];
				var v139: map<bool, char> := map[fm11(v138, v89, map[v89 := v0], v87, globalState) := v111[safeIndex(129, v111.Length)]];
				cf31 := !fm11(v138, cf27 >= -0xb4, v139, cf30, globalState);
			case DC17() =>
				globalState.f13 := v89;
				var v140: map<D1, map<D0, int>> := map[fm25(p0, globalState) := f16];
				var v141 := DC2();
				var v142 := DC4(v141, 0x16, f17);
				var v143: seq<bool> := [v88];
				var v144: seq<seq<bool>> := [v143];
				var v145: seq<seq<bool>> := [v143, v144[safeIndex(0x3cc, |v144|)]];
				var v146 := new C2(if (v142 in v140) then v140[v142] else fm24(f17, 0x84, v0, |v144|, globalState));
				var v147: array<map<bool, array<bool>>> := new map<bool, array<bool>>[16];
				var v148: array<bool> := new bool[26];
				var v149: map<bool, array<bool>> := map[f21 := v148];
				v147[safeIndex(65, v147.Length)] := v149;
				v147[safeIndex(65, v147.Length)] := v149;
				globalState.f6 := |(v143 + v143)|;
			case DC18(cf32, cf33, cf34) =>
				var v150: seq<bool> := [v88];
				var v151: map<bool, char> := map[f21 := v0];
				var v152: map<char, bool> := map[if (f17) then v0 else v0 := !fm0(false, -0x2f, fm11(v150, fm11(v150, v89, v151, !f17, globalState), map[!v88 := v0], !!v88, globalState), cf33, globalState)];
				var v153: map<bool, bool> := map[v87 := true];
				v152 := v152[v0 := (if (false in v153) then v153[false] else v89) <== v88];
				var v154: map<string, string> := map[v86 := v86];
				var v155 := DC2();
				var v156 := DC5(DC4(v155, p0, v89));
				var v157: map<int, D1> := map[|(if ((seq(abs(-0x260), i11  => (v0))) in v154) then v154[seq(abs(-0x260), i11  => (v0))] else seq(abs(-0x22), i12  => (v0)))| := v156];
				var v158 := DC5(if (p0 in v157) then v157[p0] else v156);
				var v159 := DC8(cf34, p0, v158, v87, v86);
				var v160 := DC16(cf34, v159, v86, f21, f17);
				var v161: set<bool> := {cf33};
				var v162: multiset<set<bool>> := multiset{v161};
				var v163: set<int> := {p0, p0, 0x2cf, |v86|, cf34};
				var v164: array<int> := new int[27] [|v86|, cf34, cf34, p0, cf34, cf34, cf34, 0x75, p0, |(v86 + v86)|, p0 * cf34, p0, v160.cf27, cf34, 0x365, |v162|, |{f21, cf33, v88, true, f17}|, cf34, cf34, 916, p0, cf34, cf34, safeModuloInt(p0, fm2(globalState)), |v163|, cf34, cf34];
				v164[safeIndex(659, v164.Length)] := |"sgipusdhf"|;
				var v165: array<bool> := new bool[1] [v88];
				v165[safeIndex(400, v165.Length)] := |multiset(v86)| != 789;
				globalState.f6, globalState.f6, v164[safeIndex(659, v164.Length)], r3, v165[safeIndex(400, v165.Length)] := p0, p0 * -p0, -(-p0 + p0), v87 && v89, true;
				v89 := v89;
				var v166 := DC19(v161);
				var v167: map<int, bool> := map[|v166.cf35| := p1];
				var v168: array<char> := new char[28] [v0, v0, 'd', v0, v0, v0, fm17(globalState), v0, v0, v0, v0, v0, v0, v0, v0, v0, v0, v0, v0, v86[safeIndex(|v167[v164[safeIndex(659, v164.Length)] := v89]|, |v86|)], 'q', v86[safeIndex(p0, |v86|)], v0, v0, v0, v0, v0, fm22(v165[safeIndex(400, v165.Length)], 0x188, globalState)];
				var v169: map<array<char>, bool> := map[v168 := v165[safeIndex(400, v165.Length)]];
				v169 := v169[v168 := v165[safeIndex(400, v165.Length)]];
			case DC15(cf26) =>
				var v170: seq<int> := [p0];
				var v171: array<string> := new seq<char>[29](i13 => v86);
				var v172: seq<bool> := [v89];
				var v173: multiset<int> := multiset{-0x1eb, |v172|, p0};
				var v174: map<array<string>, int> := map[v171 := |v173|];
				var v175: T1 := new C2(map[p2 := p0]);
				var v176: seq<T1> := [v175];
				var v177: set<seq<T1>> := {v176};
				var v178: set<int> := {410};
				var v179: multiset<set<int>> := multiset{v178, {p0}};
				var v180: map<int, bool> := map[p0 := f21];
				var v181: array<int> := new int[23] [p0 + |v170[safeIndex(p0, |v170|) := |v90|]|, p0, if (v171 in v174) then v174[v171] else p0, p0 + |v86|, p0, p0, p0, p0, p0, p0, p0, safeDivisionInt(p0, p0), -p0, p0, -0x35b * |v177|, p0, p0 - |v179|, if (f21) then p0 else |v180|, |map[-p0 := 'p']|, -p0, fm2(globalState), p0, p0 * p0];
				v181[safeIndex(908, v181.Length)] := safeModuloInt(p0, p0);
				globalState.f12, v181[safeIndex(908, v181.Length)], r0 := v0, 0x25d, |(seq(abs(0xb3), i14  => (0x17b)))|;
				v173 := multiset{p0};
				var v182 := DC22(seq(abs(0x1e8), i15  => (v181[safeIndex(908, v181.Length)])));
				v180, v170, v86, globalState.f13 := v180, v182.cf43, v86, p1;
				v171[safeIndex(603, v171.Length)] := v86 + v86;
				v171[safeIndex(603, v171.Length)] := v86;
		}
		
		var v183: map<bool, bool> := map[fm0(false, p0, f21, f17, globalState) := true];
		var v184: map<int, int> := map[p0 := |v92| - |fm26(f21, v183, p0, globalState)|];
		v184 := v184 + v184;
		r0 := safeDivisionInt(p0, p0 + p0);
		r1 := if (f21) then p2.(cf1 := v87) else p2;
		r2 := p0;
		r3 := f17 in v183;
	}
	method m6(p0: int, p1: seq<char>, globalState: GlobalState) returns (r0: bool, r1: bool, r2: bool) {
		var v0 := DC11(f17);
		var i0 := 0;
		while (!match v0 {
			case DC11(cf18) => !cf18
			case DC10(cf17) => false
		})
			decreases 100 - i0
		{
			if (i0 >= 100) {
				break;
			}
			
			i0 := i0 + 1;
			globalState.f6 := p0;
			if (f21) {
				var v1 := 'y';
				globalState.f12 := v1;
				var v2 := new C2(f16);
				var v3: map<char, bool> := map[fm17(globalState) := f17];
				var v4: multiset<int> := multiset{safeModuloInt(p0, p0), p0, |v3|};
				v4 := if (f21) then v4 else v4;
				var v5: array<array<int>> := new array<int>[20];
				var v6: multiset<bool> := multiset{!f17};
				var v7: set<int> := {|v6|};
				var v8 := DC1(f17, p0, if (p0 in v4) then v4[p0] else |v7|);
				var v9: T2 := new C3(v5, f21, false, map[v8 := v2.fm1(globalState)]);
				v9 := if (f17) then v9 else v9;
				f17 := f21 ==> f21;
			} else {
				var v10: map<int, bool> := map[p0 := f21];
				var v11: map<bool, int> := map[if (p0 in v10) then v10[p0] else f21 := p0];
				var v12: map<int, int> := map[-p0 := -0x26c];
				var v13: C2 := new C2(f16);
				var v14: seq<C2> := [v13];
				var v15: multiset<bool> := multiset{if ((if (f17 in v11) then v11[f17] else |v14|) in v10) then v10[if (f17 in v11) then v11[f17] else |v14|] else f17};
				var v16: array<int> := new int[9] [|v11|, --|fm38(p0, p0, p0, globalState)|, if (p0 in v12) then v12[p0] else p0, |p1| * 0x19a, p0, p0, |(multiset{f21, true} + v15[f17 := abs(p0)])|, |(p1 + "xtw")|, p0];
				v16[safeIndex(296, v16.Length)] := p0;
				v16[safeIndex(296, v16.Length)] := p0 * (739 * p0);
				r1 := f21;
				var v17: array<bool> := new bool[18](i1 => |[true, f21]| < |v15|);
				v17[safeIndex(186, v17.Length)] := f21;
				v17[safeIndex(186, v17.Length)] := f21;
				f21 := f21;
				var v18: multiset<int> := multiset{v16[safeIndex(296, v16.Length)], v16[safeIndex(296, v16.Length)], p0};
				var v19 := DC3(v18);
				var v20 := DC5(v19);
				v17[safeIndex(186, v17.Length)] := (DC8(p0, 447, v20, f21, p1).(cf15 := p1)).cf14;
			}
			
			r2 := if (f21) then true else f21;
			var v21: seq<int> := [p0];
			var v22: seq<seq<int>> := [v21, v21, v21 + v21, v21 + v21, v21];
			var v23 := 'q';
			var v24: map<bool, int> := map[f17 := p0];
			var v25 := DC22(v21);
			v22 := [fm16(v23, p0, v24, f21, globalState), v25.cf43, v21 + v21, v21];
		}
		var v26: seq<bool> := [f17];
		var v27 := 'c';
		var v28: map<bool, char> := map[fm0(f21, p0, f17, f17, globalState) := v27];
		globalState.f13 := (f21 <==> fm11(v26, f17, v28, f21, globalState)) || f21;
		var v29 := new C0(p0 * p0, f16 + f16);
		var v30: multiset<int> := multiset{v29.f20};
		var v31: multiset<bool> := multiset{f21, f21};
		var v32: map<multiset<bool>, bool> := map[v31 := f21];
		globalState.f13, globalState.f13, f17, r1, r1 := f17, |v26| <= safeDivisionInt(|v30|, |v32|), fm11([f17, f21], f17, v28, f21, globalState), false, f21 in fm29(f21, f21, globalState);
		var v33: C0 := new C0(212, f16 + f16);
		v33 := v33;
		var v34: array<D7> := new D7[14];
		var v35: C2 := new C2(f16);
		var v36: seq<int> := [|{v35}|];
		var v37 := DC22(v36);
		var v38 := DC24(v37);
		v34[safeIndex(196, v34.Length)] := v38;
		globalState.f6, v34[safeIndex(196, v34.Length)] := 127, v38;
		r0 := if (f17) then f21 else v29.f20 == v33.f20;
		r1 := f21;
		var v39: set<string> := {p1};
		var v40: multiset<set<string>> := multiset{v39};
		var v41: seq<set<string>> := [v39];
		r2 := (if (v41[safeIndex(v29.f20, |v41|)] in v40) then v40[v41[safeIndex(v29.f20, |v41|)]] else p0) > (786 - v33.f20);
	}
}

class C5 extends T2 {
	constructor (f17 : bool, f16 : map<D0, int>) {
		this.f17 := f17;
		this.f16 := f16;
	}
	
	function fm2(globalState: GlobalState): int {
		|("utlensi" + ("a" + "pljsnhfy"))|
	}
	function fm1(globalState: GlobalState): int {
		(-0x15b * -|multiset{|(map v0 : int | v0 in multiset([|map[f17 := f17]|, -290, --|"psr"|, 0x268]) :: (v0 - 0x14b) := (f17))|, 308, |{0x332}|}|) * |[|map[f17 := false]|, 0x1cd, -|{-0x3bd, -0x143, |"dnjsr"|}|, -0x2bd]|
	}
	method m0(globalState: GlobalState) returns (r0: bool, r1: int, r2: int) {
		var v0 := 890;
		var v1: seq<bool> := [v0 > v0, f17];
		v1 := v1;
		var v2 := 'l';
		var v3 := DC0(v2);
		match (v3) {
			case DC1(cf1, cf2, cf3) =>
				f17 := cf2 == cf2;
				f17 := f17;
				var v4: array<int> := new int[7];
				var v5: seq<array<int>> := [v4, v4];
				var v6: map<seq<array<int>>, bool> := map[v5 + v5 := cf3 == cf2];
				v6 := v6[v5 := cf3 <= cf3];
				if (v0 == cf2) {
					globalState.f6 := v0;
					var v7 := "qnlv";
					var v8: map<bool, string> := map[cf1 := v7];
					var v9: multiset<int> := multiset{|v8|, 238};
					r1 := safeModuloInt(cf3 + -|v7|, if (cf1) then |v9| else 0x45);
					var v10 := DC2();
					v10 := DC2();
					var v11: array<bool> := new bool[15](i0 => true);
					v11[safeIndex(815, v11.Length)] := cf1;
					v11[safeIndex(815, v11.Length)] := fm2(globalState) >= (if (fm0(!cf1, fm1(globalState), f17, f17, globalState)) then cf3 else cf2);
					var v12: map<bool, int> := map[!cf1 := v0];
					var v13: map<int, map<bool, int>> := map[v0 := v12];
					globalState.f6 := safeDivisionInt(v0 * cf3, safeModuloInt(|(if (cf2 in v13) then v13[cf2] else fm6(globalState))|, v0));
				} else {
					var v14: array<T1> := new T1[26];
					var v15: map<int, array<T1>> := map[0x275 := v14];
					var v16: map<int, bool> := map[cf3 := !f17];
					var v17: multiset<bool> := multiset{f17, cf1, f17};
					var v18 := "fjsmxw";
					var v19: array<bool> := new bool[9] [v0 in v15, cf1, if (|v17| in v16) then v16[|v17|] else f17, f17, v18 != v18, f17, f17, 0x11d == cf3, f17];
					globalState.f4 := v19;
					var v20 := new C0(v0, f16);
					globalState.f12 := v2;
					var v21: map<bool, string> := map[cf3 >= v0 := seq(abs(0x381), i1  => ('x'))];
					v21 := v21[v20.f20 >= cf3 := "vtaxxkrh"];
					var v22 := DC1(f17, v0, cf3);
					globalState.f6 := if (413 > v0) then cf2 else v22.cf2 + cf3;
				}
				
			case DC2() =>
				var v23: map<int, int> := map[v0 := |(seq(abs(-933), i2  => (v2)))|];
				var v24: multiset<set<int>> := multiset{fm7(true, f17, f17, globalState)};
				r1 := safeModuloInt((if (v0 in v23) then v23[v0] else |v24|) - v0, v0);
				var v25: set<int> := {v0};
				v0 := if (v0 == v0) then v0 + -v0 else -v0 + |v25|;
				var v26: array<int> := new int[8];
				v26[safeIndex(187, v26.Length)] := |v1|;
				var v27 := DC1(f17, v0, v0);
				v26[safeIndex(187, v26.Length)] := safeDivisionInt(v0, v27.cf3);
				var v28: map<bool, bool> := map[f17 := v1[safeIndex(v0, |v1|)]];
				v28 := v28;
			case DC0(cf0) =>
				var v29: array<bool> := new bool[4] [v0 < v0, f17, f17, v0 == v0];
				v29[safeIndex(725, v29.Length)] := f17 || true;
				v29[safeIndex(725, v29.Length)] := true;
				var v30 := DC2();
				var v31: multiset<map<char, int>> := multiset{fm8(f17, fm9(!f17, v0, v0, v29[safeIndex(725, v29.Length)], globalState), 0x97, v2, globalState)};
				var v32: array<map<bool, bool>> := new map<bool, bool>[23](i3 => map[v29[safeIndex(725, v29.Length)] := f17]);
				var v33: map<bool, bool> := map[v29[safeIndex(725, v29.Length)] := false];
				v32[safeIndex(701, v32.Length)] := v33 + v33;
				var v34 := DC1(v29[safeIndex(725, v29.Length)], v0, v0);
				var v35 := "e";
				var v36: set<bool> := {f17};
				var v37: map<int, int> := map[|v35| := |v36|];
				var v38: map<bool, map<int, int>> := map[v29[safeIndex(725, v29.Length)] := v37];
				var v39: map<char, int> := map[v2 := |v38|];
				v30, v29[safeIndex(725, v29.Length)], globalState.f6, v31, v32[safeIndex(701, v32.Length)] := v30, v29[safeIndex(725, v29.Length)], v34.cf3, (v31 - v31) * multiset{v39, v39, v39}, v33 + v33;
				v0, globalState.f6 := v0 * -v0, v0;
				var v40 := new C0(|v1|, f16);
		}
		
		var v41: seq<int> := [v0];
		var v42: map<bool, bool> := map[v0 <= v41[safeIndex(v0, |v41|)] := f17];
		var i4 := 0;
		while (if (fm0(f17, v0, false, f17, globalState) in v42) then v42[fm0(f17, v0, false, f17, globalState)] else f17 !in v42)
			decreases 100 - i4
		{
			if (i4 >= 100) {
				break;
			}
			
			i4 := i4 + 1;
			var v43: array<bool> := new bool[6](i5 => f17);
			globalState.f4, v2, globalState.f4 := v43, fm9(0xfd != v0, v0, v0, !f17, globalState), v43;
			globalState.f13 := f17;
			var v44 := new C0(-v0, f16);
			var v45: map<bool, int> := map[f17 := v44.f20];
			var v46: map<map<bool, int>, map<bool, D0>> := map[v45 := map[f17 := v3]];
			v46 := v46[v45 := map[f17 := v3]];
		}
		var v47: array<bool> := new bool[3](i6 => f17);
		var v48: map<array<bool>, int> := map[v47 := v0];
		r0 := if (f17) then |v48| <= v0 else !f17;
		for i7 := v0 to v0 {
			var v49 := DC2();
			v49 := v49;
			var v51 := DC1(f17, i7, v0);
			var v52: seq<D0> := [fm10(v0, f17, i7, -0x394, globalState), DC1(false, i7, v0), v51, v51];
			var v53 := new C0(i7, map v50 : D0 | v50 in v52 :: (v50) := (i7));
			v47[safeIndex(230, v47.Length)] := i7 <= v0;
			v47[safeIndex(230, v47.Length)] := v0 > i7;
			globalState.f6 := v53.f20;
		}
		r1 := safeModuloInt(v0, 785);
		r0 := f17;
		r1 := (v0 - v0) * -v0;
		var v54 := DC1(f17, -0x1f2, v0);
		var v55: multiset<bool> := multiset{f17, fm0(v54.cf1, |DC3(multiset(v41)).cf4|, true, f17, globalState), false, fm0(f17, v0, f17, f17, globalState)};
		r2 := |v55|;
	}
	method m3(p0: bool, p1: int, globalState: GlobalState) returns (r0: bool, r1: seq<multiset<bool>>, r2: seq<int>) {
		var v0 := 'f';
		var v1: set<char> := {'h', v0};
		var v2: map<bool, int> := map[p0 := p1];
		var v3 := DC3(multiset{p1, |v2|, p1, p1});
		var v4: seq<bool> := [false];
		var v5 := "uf";
		var v6: seq<int> := [|v5|];
		var v7 := DC1(v4[safeIndex(p1, |v4|)], p1, |v6|);
		var v8: map<bool, bool> := map[p0 := p0];
		var v9: map<multiset<bool>, int> := map[multiset{f17, true} := |v8|];
		var v10: T2 := new C4(f17, v3, f17, map[v7 := |v9|]);
		var v11: map<T2, int> := map[v10 := -p1];
		var v12: seq<int> := [p1, p1, |v11|];
		var v13: map<int, int> := map[p1 := p1];
		var v14: set<int> := {p1};
		var v15 := DC1(|v1| >= p1, |(multiset{p1} + multiset(v12))|, if (|multiset{f17, p0}| in v13) then v13[|multiset{f17, p0}|] else |v14|);
		v15 := if (f17 && f17) then DC1(p0, 970, p1) else v7;
		var i0 := 0;
		while (fm0(false, p1, f17 <==> v10.f17, p0, globalState))
			decreases 100 - i0
		{
			if (i0 >= 100) {
				break;
			}
			
			i0 := i0 + 1;
			globalState.f6 := -p1 + safeDivisionInt(p1, p1);
			globalState.f6 := safeDivisionInt(0x2ac, 0xce);
			var v16 := DC2();
			v16 := fm33(globalState);
			globalState.f6 := (p1 + p1) * -p1;
		}
		var v17: array<bool> := new bool[8] [fm0(v10.f17, p1, false, f17, globalState), f17, v0 !in v5, !v10.f17, !v10.f17 <==> !f17, p0, true, false];
		globalState.f4 := v17;
		globalState.f13 := true;
		var v18 := DC0('k');
		globalState.f12 := v18.cf0;
		var v19: array<int> := new int[5](i1 => safeModuloInt(i1, p1));
		v19[safeIndex(653, v19.Length)] := --safeModuloInt(p1, p1);
		var v20: C0 := new C0(-p1, f16);
		var v21: map<int, C0> := map[p1 := v20];
		v19[safeIndex(653, v19.Length)] := |(v21 + v21)|;
		r0 := p0;
		var v22: multiset<bool> := multiset{!f17, fm0(v10.f17, v19[safeIndex(653, v19.Length)], f17, p0, globalState), f17, p0};
		r1 := (seq(abs(835), i2  => (multiset{f17, v10.f17}))) + [v22];
		r2 := v6;
	}
	method m4(p0: string, p1: bool, p2: int, globalState: GlobalState) returns (r0: bool, r1: int, r2: seq<seq<bool>>, r3: bool) {
		var v0: seq<bool> := [p1];
		for i0 := |v0| to 42 {
			var v1 := DC2();
			var v2 := DC4(v1, p2, true);
			var v3 := DC8(p2, -i0, DC5(v2), f17, p0);
			var v4: multiset<string> := multiset{p0, p0};
			var v5: array<int> := new int[27];
			var v6 := DC13(v3, v4 + v4, f17, p2, v5);
			v6 := DC13(DC8(p2, -p2, DC5(v2), p1, p0), v4, v0[safeIndex(p2, |v0|)], p2, v5);
			var v7 := DC1(f17, p2, i0);
			var v8: seq<array<int>> := [v5, v5];
			var v9: set<bool> := {f17};
			v5, v5, v7 := v8[safeIndex(0x1a3, |v8|)], v5, DC1(f17, |v9|, p2);
			var v10 := "pswjla";
			var v11: array<D6> := new D6[24](i1 => DC19({p1}));
			var v12 := DC19(v9);
			v11[safeIndex(226, v11.Length)] := if (p1) then v12 else DC19(v9);
			v10, globalState.f6, r3, f17, v11[safeIndex(226, v11.Length)] := "lrciku" + "lkgiwvkif", safeModuloInt(p2, -0x2a4) - p2, !true, i0 > (i0 + i0), v12;
			var v13: array<array<int>> := new array<int>[12];
			var v14: C0 := new C0(|v10|, f16);
			var v15: seq<C0> := [v14];
			var v16: seq<seq<bool>> := [v0, v0[safeIndex(v14.f20, |v0|) := f17], v0, v0, v0];
			var v17: map<seq<C0>, seq<seq<bool>>> := map[v15 := v16];
			globalState.f13, r3, v13, r2 := false, if (true) then i0 <= p2 else p1, v13, (if (v15 in v17) then v17[v15] else fm39(globalState)) + (seq(abs(-0x301), i2  => ([f17])));
		}
		var v18: array<string> := new string[8](i3 => "tksgqpe" + (seq(abs(-513), i4  => ('i'))));
		v18[safeIndex(15, v18.Length)] := p0;
		var v19: map<int, bool> := map[p2 := !p1];
		var v20: multiset<bool> := multiset{p1};
		var v21: map<string, map<int, int>> := map["ansubvaxr" := map[p2 := p2]];
		var v22: map<bool, bool> := map[p1 := f17];
		var v23: map<int, int> := map[|v19| := p2];
		var v24: seq<int> := [|v22|, if (p2 in v23) then v23[p2] else p2];
		var v25: array<bool> := new bool[15] [!f17, p1, p1, (if (false in v20) then v20[false] else p2) != p2, p1, p1, f17, p1, p1, f17, f17, |v21| < 0x377, 0x26b !in v24, p1, |p0| != p2];
		v18[safeIndex(15, v18.Length)], r3, globalState.f4, v0 := p0, if (p2 in v19) then v19[p2] else p1, v25, (v0[safeIndex(p2, |v0|) := f17] + v0) + v0;
		var v26 := 'v';
		var v27: multiset<int> := multiset{p2, 0x9d, p2, p2};
		var v28: map<bool, int> := map[v18[safeIndex(15, v18.Length)][safeIndex(p2, |v18[safeIndex(15, v18.Length)]|) := v26] == fm12(p2, globalState) := safeModuloInt(|v27|, |v23|)];
		v28 := v28[if (p2 in v19) then v19[p2] else f17 := |multiset{|v22|}|];
		var i5 := 0;
		while (f17)
			decreases 100 - i5
		{
			if (i5 >= 100) {
				break;
			}
			
			i5 := i5 + 1;
			var v29 := DC7(p1);
			var v30: map<int, char> := map[p2 := v26];
			var v31: array<D2> := new D2[6] [v29, fm40(p0, |v0|, p2, globalState), v29, fm40(p0, p2, |v30|, globalState), v29, fm40(p0, p2, p2, globalState)];
			v31[safeIndex(550, v31.Length)] := v29;
			var v33: multiset<map<int, int>> := multiset{map v32 : int | (316 <= v32) && (v32 < 0x2cf) :: (safeDivisionInt(v32, p2)) := (p2)};
			v31[safeIndex(550, v31.Length)], v33 := DC7(f17), v33[v23 := abs(|v0|)] + v33;
			globalState.f13, globalState.f6, v24, v0 := f17, p2, v24, if (f17) then v0 else v0;
			var v34 := DC1(f17, p2, -|"omffs"|);
			match (if (fm0(p1, p2, p1, f17, globalState)) then v34 else v34) {
				case DC1(cf1, cf2, cf3) =>
					var v36: set<map<int, bool>> := {map[p2 := fm0(p1, -331, f17, f17, globalState)], (map v35 : int | (959 <= v35) && (v35 < -0x7a) :: (v35 - cf3) := (f17))[|v19| := !true]};
					v36 := set v37 : map<int, bool> | v37 in ({v19} * v36) :: (v37);
					var v38: array<int> := new int[17];
					v38 := v38;
					globalState.f12 := v26;
					var v39: map<multiset<int>, bool> := map[v27 := fm0(f17, cf3, v0[safeIndex(fm1(globalState), |v0|)], fm0(true, cf2, !cf1, false, globalState), globalState)];
					v39 := v39[v27 := f17];
				case DC2() =>
					v19 := v19[-p2 + p2 := p1];
					var v40: map<array<bool>, int> := map[v25 := |v24|];
					v40 := v40[v25 := safeModuloInt(p2, p2)];
					globalState.f13 := false;
					v0 := v0 + [f17];
				case DC0(cf0) =>
					globalState.f13 := p1 <== p1;
					globalState.f6 := p2;
					var v41: array<int> := new int[3];
					var v42: seq<array<int>> := [v41, v41];
					var v43: map<array<int>, bool> := map[v41 := p1];
					var v44: set<array<int>> := {v42[safeIndex(|v43|, |v42|)], v42[safeIndex(p2, |v42|)], v41, v41, v41};
					var v45 := DC28(v44);
					var v46 := DC3(v27);
					var v47 := DC5(v46);
					var v48 := DC8(fm1(globalState), p2, v47, f17, "d");
					var v49 := DC13(v48, multiset{v18[safeIndex(15, v18.Length)]}, p1, p2, v41);
					var v50: array<set<array<int>>> := new set<array<int>>[24] [v44, v44, {v41}, v44, v44 + v44, v44, v44, v44, if (f17) then v44 else v44, v44, v44, v44, v44, v44, v45.cf51, {v41} - v44, v44, v44, v44, v44, v44, v44, {v49.cf24}, v44];
					v50[safeIndex(150, v50.Length)] := v44 * v44;
					v50[safeIndex(150, v50.Length)] := {v41, v41};
					var v51: map<int, array<int>> := map[p2 := v41];
					var v52: seq<seq<bool>> := [v0];
					var v53: array<array<int>> := new array<int>[9] [v41, v41, v41, v41, if (|v52| in v51) then v51[|v52|] else v41, v41, v41, v41, v41];
					var v54 := DC12(v53);
					var v55 := DC14(v54);
					var v56: C1 := new C1(v47, map[DC1(false, p2, p2) := p2] + f16);
					v55, v56, globalState.f13 := DC14(v55.cf25), if (p1) then v56 else v56, p1;
			}
			
			f17 := f17;
		}
		globalState.f6 := -safeModuloInt(fm2(globalState), p2);
		globalState.f6 := safeModuloInt(if (p2 in v27) then v27[p2] else 0x3d5, p2);
		r0 := f17;
		r1 := safeDivisionInt(p2 * p2, p2);
		var v57: seq<seq<bool>> := [v0];
		r2 := v57;
		r3 := p1;
	}
}

class C6 extends T2, T0 {
	const f18 : bool
	const f19 : int
	constructor (f18 : bool, f19 : int, f17 : bool, f16 : map<D0, int>) {
		this.f18 := f18;
		this.f19 := f19;
		this.f17 := f17;
		this.f16 := f16;
	}
	
	function fm2(globalState: GlobalState): int {
		f19
	}
	function fm1(globalState: GlobalState): int {
		f19
	}
	function fm5(p0: bool, globalState: GlobalState): map<int, bool> {
		map[f19 := f17] + map[|multiset{f17, f17}| := f18]
	}
	method m0(globalState: GlobalState) returns (r0: bool, r1: int, r2: int) {
		var v0: map<bool, multiset<bool>> := map[f18 := (multiset{f17, f18})[f18 := abs(f19)]];
		var v1: multiset<bool> := multiset{f17};
		for i0 := -|(if (f17 in v0) then v0[f17] else v1)| to f19 {
			var v2 := DC1(f17, f19, -0x2c5);
			v2 := v2;
			globalState.f13, globalState.f6, globalState.f13, f17, globalState.f13 := f18, i0, f17, f18, fm0(f17 ==> f18, f19, true, f18, globalState);
			var v3: T2 := new C5(f17, f16 + f16);
			v3 := v3;
			if (!f17) {
				var v4: map<bool, int> := map[v3.f17 := i0];
				var v5: map<map<bool, int>, bool> := map[v4 := f18];
				var v6: seq<int> := [i0];
				var v7 := "wchdmoapf";
				var v8 := 'x';
				var v9: map<int, bool> := map[f19 := false];
				var v10: set<bool> := {v3.f17};
				var v11: map<bool, bool> := map[f17 := fm0(f18, |v10|, v3.f17, true, globalState)];
				var v12: map<int, int> := map[|v11| := f19];
				var v13: set<multiset<bool>> := {multiset{f18, v3.f17}};
				var v14 := DC20(v3.f17, v3.f17, f19, v13);
				var v15: map<D6, bool> := map[v14 := f18];
				var v16: array<int> := new int[23] [-i0, i0, f19, |v5|, v6[safeIndex(i0, |v6|)], i0, f19, i0, |(seq(abs(-0x30), i1  => ('c')))[safeIndex(|v7[safeIndex(f19, |v7|) := v8]|, |(seq(abs(-0x30), i1  => ('c')))|) := v7[safeIndex(f19, |v7|)]]|, -(i0 + i0), f19, i0, safeModuloInt(|v9|, f19), i0, i0, safeModuloInt(i0, |v7|), i0, fm2(globalState), if (f19 in v12) then v12[f19] else f19, |fm27(globalState)|, |("nxx" + v7)|, fm2(globalState), |v15|];
				v16 := new int[11];
				v16[safeIndex(175, v16.Length)] := i0;
				v16[safeIndex(175, v16.Length)] := i0;
				var v17: array<array<int>> := new array<int>[26] [v16, v16, v16, v16, v16, v16, v16, v16, v16, v16, v16, v16, v16, v16, v16, v16, v16, v16, v16, v16, v16, v16, v16, v16, v16, v16];
				var v18: C3 := new C3(v17, fm0(f17, -835, f18, f18, globalState), !v3.f17, v3.f16);
				var v19: map<C3, int> := map[v18 := 419];
				var v20: seq<bool> := [v18 !in v19];
				var v21 := DC21(v18.f25, f18, |"ftpvhk"|);
				var v22 := DC30(v20, v21);
				v20 := v22.cf56;
				var v23 := new C5(if (|v11[v18.f25 := !f18]| in v9) then v9[|v11[v18.f25 := !f18]|] else v3.f17, map[DC1(fm0(false, |fm29(v3.f17, false, globalState)|, v18.f25, v18.f25, globalState), f19, i0) := f19]);
				v11 := v11[f18 := f18];
			} else {
				globalState.f4 := new bool[26](i2 => v3.f17 ==> v3.f17);
				r2 := f19;
				var v24, v25, v26 := m2(v3.f17, f19, globalState);
				var v27: multiset<int> := multiset{64, v25, v25, v25, i0};
				var v28: seq<map<D0, int>> := [v3.f16];
				var v29: map<int, bool> := map[f19 := v3.f17];
				var v30 := new C4(f17, DC3(v27), v3.f17, v3.f16 + v28[safeIndex(|v29|, |v28|)]);
				v25 := i0 + f19;
			}
			
		}
		var v31: array<char> := new char[9](i3 => 'f');
		var v32 := 'i';
		v31[safeIndex(521, v31.Length)] := v32;
		v31[safeIndex(521, v31.Length)] := v32;
		var v33: multiset<int> := multiset{f19, f19};
		var v34 := DC3(v33);
		var v35 := DC8(f19, f19, DC5(v34), f17, "o");
		var v36 := DC16(f19, v35, seq(abs(0x1f0), i4  => ('e')), f17, false);
		var v37: seq<int> := [v36.cf27, f19];
		var v38: seq<int> := [-|(if (f17) then v33 else multiset(v37))|];
		var v39: array<C1> := new C1[7];
		var v40 := DC5(v34);
		var v41: C1 := new C1(v40, f16);
		v39[safeIndex(162, v39.Length)] := v41;
		v37, v39[safeIndex(162, v39.Length)], r2 := v38 + v37, v41, f19;
		var v42: map<bool, int> := map[f18 <== f17 := f19];
		var v43: seq<bool> := [f18, f17];
		v42 := v42[f18 := -|(v43 + v43)|];
		globalState.f13 := f17;
		if (f17) {
			r2 := f19;
			var v44: array<int> := new int[13];
			var v45 := DC21(f17, false, f19);
			var v46: map<array<int>, bool> := map[v44 := v45.cf40];
			var v47: array<array<array<int>>> := new array<array<int>>[16];
			var v48: array<array<int>> := new array<int>[6];
			v47[safeIndex(819, v47.Length)] := v48;
			v46, v47[safeIndex(819, v47.Length)], globalState.f13 := v46, v48, f19 < f19;
			var v49 := new C4(f17, DC3(v33[f19 := abs(f19)]), f18, f16);
			var v50 := "fihcnllx";
			var v51: map<string, seq<bool>> := map[v50 := v43];
			r1 := f19 - |(if (v50 in v51) then v51[v50] else [f17, !!f17])|;
			var v52 := DC22(v38[safeIndex(f19, |v38|) := f19] + v37);
			v52 := v52;
		} else {
			var v53 := "qy";
			f17 := fm0(f18, f19, |v53| != -f19, f19 > f19, globalState);
			globalState.f13 := if (-|v53| <= f19) then !f18 && f18 else |v1| <= -0x397;
			var v54: array<seq<int>> := new seq<int>[1](i5 => seq(abs(787), i6  => (f19)));
			v54[safeIndex(241, v54.Length)] := v37 + v37;
			v54[safeIndex(241, v54.Length)] := v38;
			var v55: array<D0> := new D0[19](i7 => DC2());
			var v56 := DC18(v55, f17, -f19);
			v56 := v56;
			var v57 := new C1(v41.f23.(cf8 := v34), f16);
		}
		
		var v58: array<string> := new string[27](i8 => "dhthb");
		var v59: map<array<string>, bool> := map[if (f18) then v58 else v58 := f17 <==> f17];
		r0 := if (v58 in v59) then v59[v58] else f18;
		r1 := safeDivisionInt(f19, v37[safeIndex(f19, |v37|)]);
		r2 := v41.fm1(globalState) * v41.fm1(globalState);
	}
	method m2(p0: bool, p1: int, globalState: GlobalState) returns (r0: multiset<string>, r1: int, r2: bool) {
		var v0 := "njtcjtrlv";
		v0 := v0;
		var v1: multiset<int> := multiset{f19, p1};
		var v2: map<int, int> := map[if (f19 in v1) then v1[f19] else f19 := f19];
		var v3: map<bool, bool> := map[f17 := false];
		var v4: seq<bool> := [f18];
		var v5: map<map<bool, bool>, bool> := map[v3 := v4[safeIndex(f19, |v4|)]];
		var v6: array<int> := new int[12] [f19 + 0x3c7, safeModuloInt(f19, if (f19 in v2) then v2[f19] else 0x173), p1, p1, |v5|, f19, 0x1d9, p1, f19, fm2(globalState), 30, f19];
		v6[safeIndex(540, v6.Length)] := f19;
		v6[safeIndex(540, v6.Length)] := p1;
		for i0 := p1 * 628 to fm1(globalState) {
			v0 := v0;
			v4 := v4;
			var v7: array<bool> := new bool[13];
			var v8: map<bool, int> := map[p0 := i0];
			var v9 := DC25(v8);
			v7[safeIndex(23, v7.Length)] := v6[safeIndex(540, v6.Length)] == |{v9.cf48}|;
			v7[safeIndex(23, v7.Length)] := p0;
			globalState.f13 := v7[safeIndex(23, v7.Length)];
		}
		var v10: array<array<int>> := new array<int>[24];
		v10[safeIndex(731, v10.Length)] := v6;
		var v11: multiset<bool> := multiset{p0, fm0(f18, p1, f18, p0, globalState), f18};
		var v12 := 'p';
		v6[safeIndex(540, v6.Length)], globalState.f6, v6[safeIndex(540, v6.Length)], v10[safeIndex(731, v10.Length)], r2 := -(|v11| + safeDivisionInt(0x384, |v3|)), safeDivisionInt(f19, p1) * |v0[safeIndex(p1, |v0|) := v12]|, p1, v6, v6[safeIndex(540, v6.Length)] <= v6[safeIndex(540, v6.Length)];
		f17 := p0;
		var v13: map<bool, int> := map[p0 := f19];
		var v14 := DC25(map[false := p1]);
		var v15: seq<map<bool, int>> := [v13, v13];
		var v16: array<map<bool, int>> := new map<bool, int>[11] [v13, v13, v13 + v14.cf48, fm6(globalState) + v15[safeIndex(p1, |v15|)], fm6(globalState), map[f18 := 0x232], map[f17 := p1] + v13, v13, v13, v13, (fm6(globalState))[p0 := 0x234] + v13];
		forall i1 | 0 <= i1 < v16.Length {
			v16[i1] := v13 + (v13 + v13);
		}
		var v17: multiset<string> := multiset{"ao"};
		var v18 := DC3(multiset{v6[safeIndex(540, v6.Length)]});
		var v19 := DC5(v18);
		var v20 := DC5(v19);
		var v21 := DC8(p1, -286, v20, p0, v0);
		var v22 := DC13(v21, v17, f18, |v0|, v6);
		var v23 := DC13(v21, v22.cf21, f18, f19, v6);
		r0 := (v17 - v23.cf21) + (v17 * v17);
		r1 := v6[safeIndex(540, v6.Length)];
		r2 := v6[safeIndex(540, v6.Length)] != v6[safeIndex(540, v6.Length)];
	}
}

class C7 extends T2 {
	constructor (f17 : bool, f16 : map<D0, int>) {
		this.f17 := f17;
		this.f16 := f16;
	}
	
	function fm2(globalState: GlobalState): int {
		|((map[true := seq(abs(0x279), i0  => ('a'))] + map[f17 := "afyjo"]) + map[true := "ywtvtionh"])|
	}
	function fm1(globalState: GlobalState): int {
		safeModuloInt(|multiset{DC0('k')}|, |"gwbpvlmko"|) + safeModuloInt(|multiset([0x3de, -|map[|"vfgoso"| := 'n']|])|, 0x13f)
	}
	function fm3(p0: bool, p1: map<bool, bool>, p2: int, p3: int, globalState: GlobalState): int {
		801 * |((seq(abs(0x2a3), i0  => (map['g' := 'r']))) + [map['m' := 'k']])|
	}
	method m0(globalState: GlobalState) returns (r0: bool, r1: int, r2: int) {
		var v0 := 0x39e;
		var v1: map<bool, int> := map[f17 := -v0];
		var v2: map<bool, int> := map[fm0(f17, v0, f17, !DC1(f17, v0, v0).cf1, globalState) := if (!f17 in v1) then v1[!f17] else v0];
		var v3: seq<int> := [if (f17 in v2) then v2[f17] else v0, v0];
		for i0 := v0 to |v3| {
			var v4: multiset<bool> := multiset{f17, f17};
			var v5: map<int, bool> := map[safeModuloInt(i0, -(if (f17 in v4) then v4[f17] else 0x23c)) := i0 <= i0];
			v5 := v5[v0 := f17];
			var v6 := "bjvv";
			var v7 := 's';
			var v8: array<char> := new char[7] [v7, v7, v7, v7, 'i', v7, v7];
			var v9: multiset<array<char>> := multiset{v8, v8};
			globalState.f13 := fm0(f17, |(v6 + v6)|, 691 == (if (v8 in v9) then v9[v8] else v0), 0x26b >= 0xd, globalState);
			var v10: seq<bool> := [v7 in v6];
			v10 := ([f17, true, f17, f17] + v10) + v10;
			f17 := !!!f17;
		}
		var v11: seq<bool> := [f17];
		v11 := v11;
		var v12 := DC1(f17, v0, fm2(globalState));
		var v13 := 'q';
		var v14: seq<char> := [v13, v13, v13];
		var v15: set<int> := {-v0};
		var v16: array<int> := new int[14] [v12.cf2, v0, -692, v0, v0, v0, |v14|, if (f17 in v2) then v2[f17] else |map[v15 := v0]|, v0, v0, v12.cf2, -v0, v0, v0];
		var v17: map<array<int>, bool> := map[v16 := !f17];
		v17 := v17[v16 := true];
		var v18: array<bool> := new bool[6];
		forall i1 | 0 <= i1 < v18.Length {
			v18[i1] := v0 != v0;
		}
		v0 := -(v0 * v0) + |v1|;
		var v19: seq<string> := [seq(abs(0x289), i3  => (v13)), v14, v14, v14];
		var i2 := 0;
		while (fm0(f17, |v19|, false, f17, globalState))
			decreases 100 - i2
		{
			if (i2 >= 100) {
				break;
			}
			
			i2 := i2 + 1;
			r1, globalState.f12, globalState.f12 := --v0, v13, v13;
			var v20: map<bool, bool> := map[f17 := f17];
			var v21: multiset<int> := multiset{128};
			globalState.f6 := fm3(v0 >= v0, v20, |v21|, v0, globalState);
			r0 := f17;
			globalState.f6 := v0;
		}
		r0 := f17;
		r1 := v0;
		r2 := v0;
	}
	method m1(p0: int, p1: bool, p2: bool, p3: string, globalState: GlobalState) returns (r0: bool, r1: map<bool, set<bool>>, r2: bool, r3: D0) {
		r2 := (if (p1) then p0 else p0) <= p0;
		for i0 := p0 to |(f16 + f16)| {
			var v0 := DC2();
			match (v0) {
				case DC1(cf1, cf2, cf3) =>
					var v1 := 'n';
					globalState.f12 := v1;
					var v2: array<bool> := new bool[28];
					globalState.f4 := v2;
					f17 := !cf1;
					v2[safeIndex(694, v2.Length)] := 475 != --|"umyuk"|;
					v2[safeIndex(694, v2.Length)] := p2;
				case DC2() =>
					var v3: array<array<D0>> := new array<D0>[4];
					var v4: array<D0> := new D0[25] [DC2(), v0, fm4(globalState), v0, v0, v0, v0, v0, v0, DC2(), v0, v0, DC2(), v0, v0, v0, v0, v0, v0, fm4(globalState), DC2(), v0, v0, v0, v0];
					v3[safeIndex(963, v3.Length)] := v4;
					v3[safeIndex(963, v3.Length)] := v4;
					var v5: multiset<bool> := multiset{f17};
					var v6: multiset<int> := multiset{i0};
					var v7: T0 := new C6(false, |v6|, p1, f16);
					var v8: map<T0, multiset<bool>> := map[v7 := v5];
					var v9: map<int, multiset<bool>> := map[p0 := if (v7 in v8) then v8[v7] else v5];
					var v10: set<multiset<bool>> := {v5 * (if (|multiset{p2, p2}| in v9) then v9[|multiset{p2, p2}|] else v5), v5, v5};
					globalState.f6 := |v10|;
					var v11: array<map<int, int>> := new map<int, int>[3](i1 => map[p0 := -|[v6[|multiset{p0, i0}| := abs(i0)]]|]);
					var v12: map<int, int> := map[p0 := -i0];
					v11[safeIndex(580, v11.Length)] := v12;
					v11[safeIndex(580, v11.Length)] := map[i0 := p0];
					var v13 := "yrfce";
					var v14: array<array<bool>> := new array<bool>[1];
					var v15: array<D1> := new D1[19](i2 => DC5(DC4(v0, p0, p1)));
					var v16 := DC3(v6);
					var v17 := DC5(v16);
					v15[safeIndex(538, v15.Length)] := v17;
					var v18 := DC3(v6);
					var v19: C4 := new C4(f17, v18, f17, f16);
					var v20: map<C4, int> := map[v19 := i0];
					v13, v14, v15[safeIndex(538, v15.Length)] := p3 + (seq(abs(108), i3  => ('w'))), v14, fm41(v20 == v20, !p2, p0, !v19.f21, globalState);
				case DC0(cf0) =>
					globalState.f13 := fm0(!f17, i0, p2 || p2, false, globalState);
					f17 := f17;
					var v21: multiset<int> := multiset{|map[0x151 := 0x24d]|, p0};
					var v22 := DC3(v21);
					var v23: map<bool, bool> := map[p2 := p1];
					cf0, v22, r2 := if (v23 == v23) then cf0 else cf0, v22, p2;
					r0 := true;
			}
			
			var v24 := DC23(411 - i0, 0x2d3, -(if (!p1) then |map[fm0(f17, p0, f17, p2, globalState) := p2]| else |p3|));
			v24 := v24;
			globalState.f6 := -(if (f17) then p0 else i0);
			if (!!(p1 <== p1)) {
				var v25: map<int, int> := map[i0 := p0];
				var v26 := DC3(multiset([0x123]));
				var v27 := DC5(v26);
				var v28 := DC8(|v25|, i0, v27, f17, p3);
				var v29: multiset<string> := multiset{p3};
				var v30: array<int> := new int[20](i4 => safeDivisionInt(i4, -i0));
				var v31 := DC13(v28, v29, p2, p0, v30);
				var v32: seq<array<int>> := [v31.cf24];
				v32 := (v32 + v32) + v32;
				var v33: map<bool, int> := map[p2 && p2 := p0];
				v33 := fm6(globalState);
				var v34 := DC25(v33);
				var v35: seq<bool> := [f17, p2];
				var v36: array<D8> := new D8[21] [if (f17) then v34 else v34, v34, if (p1) then DC25(v33).(cf48 := v33) else v34, v34, if (false) then v34 else DC25(v33), v34, v34, DC25(v33), v34.(cf48 := v33), if (p2) then v34 else v34, v34, v34, v34, v34, v34, v34, v34, v34, v34.(cf48 := map[v35[safeIndex(i0, |v35|)] := p0]), DC25(v33), v34];
				v36[safeIndex(776, v36.Length)] := DC25(v33);
				v36[safeIndex(776, v36.Length)] := DC25(v33 + map[f17 := p0]);
				var v37: set<bool> := {f17};
				var v38: seq<int> := [i0 * p0, p0, i0, if (f17) then |v37| else p0, p0];
				v38 := (seq(abs(176), i5  => (p0))) + v38;
				var v39: array<D0> := new D0[25](i6 => v0);
				var v40 := DC18(v39, f17, fm1(globalState));
				var v41: map<int, seq<array<int>>> := map[v40.cf34 := [v30]];
				var v42 := 'k';
				var v43: set<char> := {v42};
				v41 := v41[|(if (f17) then v43 else v43)| := v32[safeIndex(|p3|, |v32|) := v30]];
			} else {
				var v44: array<int> := new int[1](i7 => i7 * 462);
				var v45: array<bool> := new bool[8](i8 => p1);
				v45[safeIndex(448, v45.Length)] := p1;
				var v46: map<int, string> := map[fm1(globalState) := p3];
				var v47 := 'i';
				var v48: multiset<string> := multiset{p3, if (fm1(globalState) in v46) then v46[fm1(globalState)] else ("jhowkgrrm")[safeIndex(p0, |"jhowkgrrm"|) := v47], p3};
				var v49: C5 := new C5(p2, f16);
				var v50: seq<C5> := [v49, v49, v49];
				v44, globalState.f9, v45[safeIndex(448, v45.Length)] := v44, v48, v50 != v50;
				r2 := p2 || true;
				var v51: array<string> := new string[2] [p3, "rfu"];
				v51[safeIndex(987, v51.Length)] := p3;
				var v52: map<int, int> := map[i0 := i0];
				var v53: map<int, int> := map[-i0 := |v52|];
				var v54: map<array<int>, int> := map[v44 := |v52|];
				var v55: seq<int> := [p0, fm2(globalState), |v54|];
				v44[safeIndex(987, v44.Length)] := v55[safeIndex(p0, |v55|)];
				var v56: multiset<int> := multiset{0x2f8};
				v51[safeIndex(987, v51.Length)], v44[safeIndex(987, v44.Length)], globalState.f6 := p3, i0, if (p2) then i0 else if (i0 in v56) then v56[i0] else i0;
				var v57: multiset<bool> := multiset{p1, v45[safeIndex(448, v45.Length)]};
				var v58: map<bool, bool> := map[p1 := f17];
				var v59: multiset<D7> := multiset{DC22(v55)};
				var v60 := DC4(v0, v44[safeIndex(987, v44.Length)], p2);
				var v61 := DC31((map[v60.cf6 := |v55|])[p0 := p0]);
				globalState.f6, r0, v45[safeIndex(448, v45.Length)], v53 := v44[safeIndex(987, v44.Length)], f17, |v57| == (|v57| + fm3(f17, v58, v44[safeIndex(987, v44.Length)], |v59|, globalState)), v61.cf58;
				v45[safeIndex(448, v45.Length)] := f17;
			}
			
		}
		if (DC7(f17).cf10) {
			if (p2) {
				var v62: map<bool, bool> := map[false := f17];
				var v63: seq<int> := [p0, p0];
				var v64: map<map<bool, bool>, seq<int>> := map[v62 := v63];
				f17 := v64 == v64;
				var v65: seq<bool> := [p1];
				r2 := fm0(!v65[safeIndex(p0, |v65|)], safeModuloInt(p0, |p3|), p1, fm0(f17, p0, p2, p2, globalState) || p2, globalState);
				var v66: array<string> := new string[1](i9 => p3 + "rfs");
				v66 := v66;
				var v68: map<int, bool> := map[p0 := p1];
				globalState.f13 := (map v67 : int | v67 in {p0, |p3|} :: (v67 * p0) := (f17)) == v68;
				var v69 := 'm';
				var v70: set<char> := {v69};
				globalState.f6, v70, r0 := p0, v70 * {v69, v69, v69}, p2;
			} else {
				globalState.f6 := fm1(globalState);
				var v71: array<array<int>> := new array<int>[2];
				var v73 := DC1(f17, p0, |p3|);
				var v74: C3 := new C3(v71, p2, p2, map v72 : D0 | v72 in [v73] :: (v72) := (p0));
				v74 := v74;
				var v75: multiset<string> := multiset{"cnlnhuw", p3, "kledtosdp", p3 + fm27(globalState), p3};
				globalState.f6, globalState.f13, globalState.f6 := p0 * p0, !v74.f25, -(if ("hdgsjvdm" in v75) then v75["hdgsjvdm"] else p0);
				var v76 := 'g';
				globalState.f12 := v76;
				var v77: map<int, bool> := map[|p3| := p1];
				var v78: multiset<int> := multiset{p0};
				var v79 := DC3(v78);
				var v80 := new C4(!!!(if (p0 in v77) then v77[p0] else true), v79, 0xc6 <= fm1(globalState), f16);
			}
			
			var v81: multiset<bool> := multiset{f17};
			var v82: set<multiset<bool>> := {v81};
			var v83 := DC20(p2, p2, p0, v82);
			var v84: seq<bool> := [p1, p2, p1, f17, f17];
			var v85: array<array<int>> := new array<int>[24];
			var v86: C3 := new C3(v85, f17, p2, f16);
			var v87: multiset<C3> := multiset{v86};
			var v88: set<int> := {p0, p0};
			var v89: array<int> := new int[24] [p0, -74, |v81|, p0, p0, p0, p0, p0, v83.cf38, p0, p0, |v84|, |[p1, p2]|, |v87|, p0, p0, |v84|, 0x316, |v88|, p0, p0, p0, p0, p0];
			var v90: seq<array<int>> := [v89, v89];
			var v91: array<array<int>> := new array<int>[18] [v89, v89, v89, v89, v89, v89, v89, v89, v89, v89, v89, v90[safeIndex(p0, |v90|)], v89, v89, v89, v89, v89, v89];
			var v92: C3 := new C3(v91, p1, -175 <= p0, f16);
			v92 := v92;
			var v93 := new C5(v92.f25, f16 + f16);
			var v94 := DC21(p2, p2, p0);
			var v95: seq<D6> := [v94];
			globalState.f6 := safeModuloInt(p0 + p0, v92.fm32(v95, globalState));
			var v96, v97, v98 := v86.m0(globalState);
		} else {
			var v99: multiset<bool> := multiset{p2, f17, f17, p1};
			var v100 := 'q';
			globalState.f12 := if ((if (p1 in v99) then v99[p1] else p0) > fm1(globalState)) then v100 else DC0(v100).cf0;
			if (p2) {
				globalState.f13 := false;
				var v101 := "x";
				var v102: set<bool> := {f17, p1, p1, true};
				var v103: map<int, int> := map[p0 := 767];
				var v104: set<int> := {|v103|, p0};
				var v105: map<bool, int> := map[!false := |v104|];
				var v106 := DC1(p1, 0x336, |v105|);
				globalState.f13, v101, globalState.f6, globalState.f6, f17 := f17, ("gdmok")[safeIndex(fm1(globalState), |"gdmok"|) := fm9(p2, |v102|, p0, v106.cf1, globalState)], p0, p0, p1;
				globalState.f6 := |v102|;
				var v107: seq<string> := ["deqsppl"];
				v107 := v107 + v107;
				globalState.f6, v101 := fm2(globalState), v101 + p3;
			} else {
				var v108 := DC26(p1);
				v108 := v108;
				var v109: array<int> := new int[29];
				v109[safeIndex(111, v109.Length)] := p0 - p0;
				v109[safeIndex(111, v109.Length)] := p0;
				var v110: seq<int> := [v109[safeIndex(111, v109.Length)], v109[safeIndex(111, v109.Length)], v109[safeIndex(111, v109.Length)]];
				var v111: seq<seq<int>> := [[p0, p0], v110, v110, v110];
				var v112: map<seq<seq<int>>, char> := map[v111 := v100];
				var v113: array<char> := new char[15] ['v', v100, v100, 'p', v100, if ((seq(abs(0xfa), i10  => (seq(abs(0x19a), i11  => (0x324))))) in v112) then v112[seq(abs(0xfa), i10  => (seq(abs(0x19a), i11  => (0x324))))] else fm17(globalState), v100, 'a', v100, v100, v100, v100, v100, v100, v100];
				v113[safeIndex(379, v113.Length)] := 'o';
				v113[safeIndex(379, v113.Length)] := v100;
				globalState.f13 := -v109[safeIndex(111, v109.Length)] != v109[safeIndex(111, v109.Length)];
				var v114 := DC2();
				var v115 := DC5(DC4(v114, p0, p2));
				var v116: map<int, int> := map[p0 := 86];
				var v117 := DC1(!p2, |v116|, fm2(globalState));
				var v118 := new C1(v115, map[v117 := v109[safeIndex(111, v109.Length)]]);
			}
			
			var v119: seq<bool> := [p1];
			var v120 := DC10(v119);
			v120 := v120;
			globalState.f13 := f17;
			globalState.f6 := p0;
		}
		
		globalState.f6 := p0;
		var v121: map<bool, int> := map[true := p0];
		var v122: C6 := new C6(p1, |v121|, p2, f16);
		var v123: set<C6> := {v122, v122};
		var v124 := DC29(p2, multiset{f17, false}, |v123|, p2);
		var v125: multiset<bool> := multiset{f17};
		var v126 := DC29(v124.cf55, v125, v122.f19, false);
		var v127: set<bool> := {f17};
		var v128: array<bool> := new bool[16] [p0 == p0, "kqogpnula" != (seq(abs(-0x2a7), i12  => ('a'))), p1, false, if (f17) then p2 else p1, p1, f17, p2, p2, p0 != 742, |p3| >= p0, v124.cf55, p1, p1 in v127, p2, p2 in fm42(v122.f19, seq(abs(-423), i13  => (|"suvqkajy"|)), p0, p0, globalState)];
		v128[safeIndex(984, v128.Length)] := f17;
		var v129: seq<bool> := [v122.f18, !p1 <==> p1, p2];
		var v131: multiset<int> := multiset{p0};
		v128[safeIndex(984, v128.Length)] := v129[safeIndex(|(map v130 : int | v130 in v131 :: (safeModuloInt(v130, 0x2f9)) := (p2))| - p0, |v129|)];
		globalState.f6 := -0x36a;
		r0 := v122.f18;
		var v132: map<bool, set<bool>> := map[f17 := v127];
		r1 := v132[v128[safeIndex(984, v128.Length)] := v127] + v132;
		var v133: seq<int> := [p0, v122.f19];
		r2 := fm0(p1, p0, fm0(true, v133[safeIndex(115, |v133|)], v128[safeIndex(984, v128.Length)], true, globalState), p2, globalState);
		var v134 := DC2();
		r3 := if (fm0(p1, v122.f19, v122.f18, v128[safeIndex(984, v128.Length)], globalState)) then v134 else v134;
	}
}

function fm0(p0: bool, p1: int, p2: bool, p3: bool, globalState: GlobalState): bool {
	safeModuloInt(0x9, |"nqrc"|) == safeDivisionInt(0x2a5, |map[DC8(|[DC15(map["j" := 629])]|, |map[false := true]|, DC5(DC5(DC4(DC2(), |map[!true := ['f']]|, true))), false, "abnb").cf12 := |"oagqq"|]|)
}
function fm4(globalState: GlobalState): D0 {
	DC2()
}
function fm6(globalState: GlobalState): map<bool, int> {
	(map[false := |[|multiset{false}|, |"cymasvq"|]|] + map[false := |{|[994]|}|]) + map[true := -|{false, false}|]
}
function fm7(p0: bool, p1: bool, p2: bool, globalState: GlobalState): set<int> {
	{--0x209} * ({|"oow"|, |"oyoyfl"|, 0xbc} - {|map[!true := 0x2b1]|})
}
function fm8(p0: bool, p1: char, p2: int, p3: char, globalState: GlobalState): map<char, int> {
	map['g' := |(if (false) then "tagohjvs" else seq(abs(-0x1c6), i0  => ('q')))|]
}
function fm9(p0: bool, p1: int, p2: int, p3: bool, globalState: GlobalState): char {
	match DC34(true, 'l') {
		case DC34(cf62, cf63) => cf63
		case DC35(cf64, cf65, cf66, cf67, cf68) => 'c'
		case DC36(cf69, cf70) => cf69
		case DC33(cf61) => 'e'
	}
}
function fm10(p0: int, p1: bool, p2: int, p3: int, globalState: GlobalState): D0 {
	if (true && true) then DC1(true, -0x20e, -705) else DC1(true, |[false]|, 0x27)
}
function fm12(p0: int, globalState: GlobalState): string {
	"a"
}
function fm13(p0: int, p1: int, globalState: GlobalState): D0 {
	DC1(true, 0x159 - 658, -|({DC10([false, true]), DC10([true]), DC10([true, true])} - {DC10([false])})|)
}
function fm14(globalState: GlobalState): multiset<bool> {
	multiset{!(|map[{866} := |DC39({0x172}).cf74|]| > |[|(seq(abs(0x121), i0  => (|{0xca}|)))|, --|(map v0 : int | (0x324 <= v0) && (v0 < 0x278) :: (v0 + |{true}|) := (0x36f))|, |map[|map[false := |[|"gpbi"|, -0x2cc, |"wda"|, 0x2d4]|]| := true]|]|), if (!true) then false else !!true}
}
function fm15(p0: int, p1: D1, globalState: GlobalState): seq<bool> {
	([true] + [true, true]) + ([true] + [false, false, false])
}
function fm16(p0: char, p1: int, p2: map<bool, int>, p3: bool, globalState: GlobalState): seq<int> {
	if (0x183 >= |[|{true}|]|) then seq(abs(0x255), i0  => (0x2ad)) else [-|(set v2 : int | v2 in [|map[|(set v1 : int | v1 in (map v0 : int | (647 <= v0) && (v0 < -0x63) :: (v0 - |multiset{122, -275}|) := (false)) :: (v1 * 0x367))| := 41]|] :: (v2 * 513))|]
}
function fm17(globalState: GlobalState): char {
	'q'
}
function fm22(p0: bool, p1: int, globalState: GlobalState): char {
	'f'
}
function fm23(p0: D2, p1: int, p2: int, globalState: GlobalState): D0 {
	DC0('t')
}
function fm24(p0: bool, p1: int, p2: char, p3: int, globalState: GlobalState): map<D0, int> {
	map[DC1(!!true, |(seq(abs(932), i0  => ('a')))|, 737) := if (!false) then |(seq(abs(0x111), i1  => ('e')))| else -0x2ac]
}
function fm25(p0: int, globalState: GlobalState): D1 {
	DC4(DC2(), 0x2a8, "gelbtlk" == (seq(abs(559), i0  => ('b'))))
}
function fm26(p0: bool, p1: map<bool, bool>, p2: int, globalState: GlobalState): map<bool, int> {
	map[!true := -|{{false, false}, {true}}|] + map[true := -0x24]
}
function fm27(globalState: GlobalState): seq<char> {
	['t'] + (['b'] + (seq(abs(941), i0  => ('u'))))
}
function fm28(p0: char, p1: bool, p2: bool, globalState: GlobalState): multiset<bool> {
	multiset{!!false} + multiset{true}
}
function fm29(p0: bool, p1: bool, globalState: GlobalState): seq<bool> {
	([true] + [false]) + ([false] + [false])
}
function fm30(globalState: GlobalState): map<string, int> {
	map["bbpxk" := safeDivisionInt(-0x299, 0x269)]
}
function fm31(p0: seq<int>, globalState: GlobalState): D0 {
	DC2()
}
function fm33(globalState: GlobalState): D0 {
	DC2()
}
function fm34(p0: int, p1: bool, p2: bool, globalState: GlobalState): char {
	match DC19({false}) {
		case DC20(cf36, cf37, cf38, cf39) => if (cf37) then 'n' else 'd'
		case DC21(cf40, cf41, cf42) => 'h'
		case DC19(cf35) => 'h'
	}
}
function fm35(p0: bool, globalState: GlobalState): seq<D8> {
	([DC25(map[false := |(seq(abs(97), i0  => (0x32d)))|]), DC25(map[false := -699])] + [DC25(map[!true := 965])]) + [DC25(map[true := 0x5a]), DC25(map[false := |(seq(abs(0x4), i1  => (0x1d)))|]), DC25(map[true := |multiset{|map['j' := true]|, 515}|])]
}
function fm36(p0: int, globalState: GlobalState): multiset<char> {
	multiset{'d', 'e'} - (if (false) then multiset{'a', 'q'} else multiset(['m', 'n']))
}
function fm37(p0: int, p1: int, globalState: GlobalState): map<D0, int> {
	(map[DC1(false, |"stsirt"|, -0x3e1) := -|multiset{|[[true]]|}|] + map[DC1(false, |map[|multiset{|(set v0 : char | v0 in ['w'] :: (v0))|, 174}| := false]|, 401) := -|map[-0x135 := map v1 : int | (0x3b1 <= v1) && (v1 < 0xb9) :: (v1 - -288) := (true)]|]) + ((map v2 : D0 | v2 in multiset{DC1(false, 0xd, --0xcc)} :: (v2) := (0x102)) + map[DC1(DC21(false, false, |multiset([-922, 292])|).cf41, 0x326, |(seq(abs(0x223), i0  => ('e')))|) := 0x347])
}
function fm38(p0: int, p1: int, p2: int, globalState: GlobalState): multiset<int> {
	if (!false) then if (!false) then multiset{764, 872} else multiset{359, 0x6c} else multiset{0x142}
}
function fm39(globalState: GlobalState): seq<seq<bool>> {
	(seq(abs(46), i0  => ([true, true, true]))) + [[true], [!!false], [false, false, true, false, true]]
}
function fm40(p0: string, p1: int, p2: int, globalState: GlobalState): D2 {
	DC7(true)
}
function fm41(p0: bool, p1: bool, p2: int, p3: bool, globalState: GlobalState): D1 {
	match DC4(DC2(), -0x3b7, false) {
		case DC4(cf5, cf6, cf7) => DC5(DC4(cf5, cf6, cf7))
		case DC3(cf4) => DC5(DC4(DC2(), 0x2c6, true))
		case DC5(cf8) => DC5(DC3(multiset{0x28}))
	}
}
function fm42(p0: int, p1: seq<int>, p2: int, p3: int, globalState: GlobalState): map<bool, bool> {
	map[false := false] + (map[!true := false] + map[false := false])
}
function fm43(p0: char, p1: int, p2: int, p3: bool, globalState: GlobalState): int {
	safeModuloInt(|("e" + "cbmug")|, |multiset{-442, 0x137}| - 774)
}
function fm44(p0: bool, globalState: GlobalState): D6 {
	DC19({true, !true, false})
}
function fm45(globalState: GlobalState): D5 {
	DC17()
}
function fm46(p0: string, p1: int, globalState: GlobalState): D7 {
	DC22([0x3c0] + (seq(abs(0x290), i0  => (|(seq(abs(0x1b6), i1  => ('q')))|))))
}
method m11(globalState: GlobalState) returns (r0: char) {
	var v0 := true;
	var i0 := 0;
	while (v0)
		decreases 100 - i0
	{
		if (i0 >= 100) {
			break;
		}
		
		i0 := i0 + 1;
		globalState.f13 := v0;
		var v1: array<array<int>> := new array<int>[26];
		var v2 := DC12(v1);
		v2 := v2;
		var v3 := -0x2b8;
		globalState.f6 := safeDivisionInt(v3, -v3);
		globalState.f6 := v3;
	}
	var v4 := 0x139;
	var v5: map<int, int> := map[v4 := v4];
	var v6: array<bool> := new bool[29];
	var v7: map<array<bool>, bool> := map[v6 := v0];
	v5 := v5[v4 := |v7|];
	if (v0) {
		var v8: array<int> := new int[6];
		var v9: seq<array<int>> := [v8, v8, v8, v8, v8];
		v9 := v9[safeIndex(v4, |v9|) := v8];
		globalState.f13 := v4 <= (v4 * v4);
		var v10: map<D0, int> := map[DC1(true, v4, v4) := -v4];
		var v11 := new C5(v0, v10);
		var v12: seq<bool> := [v0];
		var v13: set<int> := {|v12|};
		globalState.f6 := safeModuloInt(v11.fm1(globalState), safeModuloInt(|v13|, v4));
		globalState.f13 := (if (v0) then v12 else [v0]) == v12;
	} else {
		var v14: array<int> := new int[22](i1 => safeModuloInt(i1, |[[v0, !true], [v0, DC1(v0, v4, 0x66).cf1, v0]]|));
		var v15 := "gwoayl";
		v14[safeIndex(285, v14.Length)] := |v15|;
		v14[safeIndex(285, v14.Length)] := -v4;
		var v16 := 'o';
		var v17: array<char> := new char[13] [v16, v16, v16, v16, v16, v16, v16, v16, v16, v16, v16, v16, v16];
		var v18: map<array<bool>, array<char>> := map[v6 := v17];
		var v19: map<map<array<bool>, array<char>>, bool> := map[v18 + v18 := v0];
		v19 := v19[map[v6 := v17] := v0];
		var v20 := DC17();
		var v21: array<D5> := new D5[14] [DC17(), v20, v20, v20, v20, DC17(), v20, v20, v20, v20, DC17(), v20, v20, fm45(globalState)];
		v21 := v21;
		if ((0x1ab == v14[safeIndex(285, v14.Length)]) <== v0) {
			var v22 := DC1(v0, v4, v14[safeIndex(285, v14.Length)]);
			var v23: map<int, bool> := map[|v15| := v0];
			var v24: map<D0, int> := map[v22 := |v23|];
			var v25 := new C6(!v0, -v14[safeIndex(285, v14.Length)], v0, v24 + v24);
			var v26: array<string> := new string[18];
			v26 := v26;
			var v27: T1 := new C2(v24);
			var v28: set<T1> := {v27};
			var v29: seq<set<T1>> := [v28, v28 + v28, v28, v28];
			v28 := v29[safeIndex(|v15|, |v29|)];
			v0 := fm0(v25.f18, |((seq(abs(0xc2), i2  => (v16))) + v15)|, v0, 0x2ae < v4, globalState);
			var v30: seq<bool> := [v25.f18];
			var v31: multiset<int> := multiset{v25.f19, v4};
			var v32: seq<string> := [v15];
			v4, v30, v30, v15 := safeModuloInt(|v31|, |v32|), v30, fm29(v25.f18, v25.f18, globalState) + (v30 + v30), v15 + v15;
		} else {
			var v33 := DC2();
			var v34 := DC4(v33, v4, false);
			var v35 := DC5(v34);
			var v36 := DC5(v35);
			var v37 := DC5(DC5(v35));
			var v39 := DC1(fm0(true, v4, true, v0, globalState), v14[safeIndex(285, v14.Length)], v4);
			var v40: multiset<D0> := multiset{v39, v39};
			var v41: C1 := new C1(v37, map v38 : D0 | v38 in v40 :: (v38) := (-v14[safeIndex(285, v14.Length)]));
			var v42: multiset<C1> := multiset{v41};
			var v43: T0 := new C6(false, v14[safeIndex(285, v14.Length)], v0, fm24(true, -v4, v16, |v42|, globalState));
			var v44: map<char, bool> := map['t' := !(v14[safeIndex(285, v14.Length)] !in map[v14[safeIndex(285, v14.Length)] := v43])];
			v44 := v44[v16 := v0];
			var v45 := DC22([-0xc]);
			v45 := fm46("lgfhbqv" + "cjcpgdd", v4, globalState);
			var v46: array<array<int>> := new array<int>[8];
			v46[safeIndex(327, v46.Length)] := v14;
			v46[safeIndex(327, v46.Length)] := v14;
			v14[safeIndex(285, v14.Length)] := v14[safeIndex(285, v14.Length)];
			v14[safeIndex(285, v14.Length)] := -v4;
		}
		
		if (v0) {
			var v47 := DC0(v16);
			v14[safeIndex(285, v14.Length)] := -safeDivisionInt(v4, fm43(v47.cf0, v14[safeIndex(285, v14.Length)], v4, v0, globalState));
			globalState.f12 := v16;
			var v48: map<int, bool> := map[v4 := v0];
			var v49 := DC1(v0, v14[safeIndex(285, v14.Length)], |v48[v14[safeIndex(285, v14.Length)] := v0]|);
			var v50: map<D0, int> := map[v49 := 449];
			var v51 := new C7(!v0, v50);
			v6[safeIndex(143, v6.Length)] := v0;
			v6[safeIndex(143, v6.Length)] := v0;
			var v52: map<bool, bool> := map[v6[safeIndex(143, v6.Length)] := v6[safeIndex(143, v6.Length)]];
			var v53: multiset<int> := multiset{|v52[v6[safeIndex(143, v6.Length)] := fm0(v6[safeIndex(143, v6.Length)], v14[safeIndex(285, v14.Length)], v6[safeIndex(143, v6.Length)], v6[safeIndex(143, v6.Length)], globalState)]|};
			var v54 := DC3(v53);
			var v56: seq<D0> := [v49];
			var v57: C4 := new C4(v6[safeIndex(143, v6.Length)], v54, v0, map v55 : D0 | v55 in v56 :: (v55) := (v14[safeIndex(285, v14.Length)]));
			var v58: map<int, C4> := map[v4 := v57];
			v58 := v58;
		} else {
			var v59: array<multiset<bool>> := new multiset<bool>[16](i3 => multiset{v0, !v0} * multiset{v0, v0});
			var v60: multiset<bool> := multiset{v0};
			v59[safeIndex(458, v59.Length)] := v60[v0 := abs(801)];
			v59[safeIndex(458, v59.Length)] := v60;
			v6[safeIndex(419, v6.Length)] := v0;
			v6[safeIndex(419, v6.Length)] := v0;
			globalState.f6 := |(v15 + v15)|;
			r0 := 'p';
			var v61: map<int, bool> := map[0x369 := v6[safeIndex(419, v6.Length)]];
			var v62 := DC1(v0, v14[safeIndex(285, v14.Length)], |v61|);
			var v63: map<D0, int> := map[v62 := -0x321];
			var v64 := new C0(v14[safeIndex(285, v14.Length)], v63);
		}
		
	}
	
	var v65: array<D7> := new D7[25](i4 => DC23(-v4, v4, |map[|multiset{v0}| := v0]|));
	v65 := v65;
	v6[safeIndex(217, v6.Length)] := v0;
	var v66 := "qnbucd";
	var v67 := 'o';
	var v68: map<bool, char> := map[true := v67];
	var v69: seq<bool> := [v0, v0];
	var v70 := DC1(v69[safeIndex(v4, |v69|)], 123, v4);
	var v71: C7 := new C7(v0, map[v70 := v4]);
	var v72: map<bool, C7> := map[v0 := v71];
	var v73 := DC36(if (v0 in v68) then v68[v0] else v67, if (v0 in v72) then v72[v0] else v71);
	var v74: map<int, bool> := map[v4 := v0];
	var v75: map<seq<bool>, bool> := map[v69 := v0];
	var v76: multiset<int> := multiset{|v74[|v75| := v0]|, v4, v4};
	var v77 := DC3(v76);
	var v78 := DC5(v77);
	var v79: multiset<D1> := multiset{v78, v78, v78};
	globalState.f6, v6[safeIndex(217, v6.Length)], v66, globalState.f6, v73 := v4, v67 !in v66, v66, -|v79|, v73;
	var v80: seq<string> := [v66, "ubay", v66, "f", seq(abs(0x188), i5  => ('o'))];
	v0 := v66 !in (v80 + v80);
	r0 := v67;
}
method Main() {
	var v0 := false;
	var v1: array<bool> := new bool[25] [v0, v0, v0, v0, v0, v0, v0, v0, v0, true, v0, v0, true, v0, v0, v0, v0, v0, !v0, v0, v0, false, v0, true, v0];
	var v2 := 'a';
	var v3: map<array<bool>, char> := map[v1 := v2];
	var v4 := 0x317;
	var v5: seq<bool> := [v0];
	var v6: set<int> := {v4};
	var v7: map<int, bool> := map[v4 := v0];
	var v8: multiset<int> := multiset{v4, |v7|, v4, v4};
	var v9: map<bool, int> := map[v0 := -0x336];
	var v10: multiset<bool> := multiset{v0, v0};
	var v11: array<int> := new int[20] [v4, v4, v4, 0x23c, |v5|, v4, v4, -v4, v4, |v6|, 0x100, v4, |v8|, v4, v4, v4, v4, if (v0 in v9) then v9[v0] else v4, v4, |v10|];
	var v12: map<array<int>, int> := map[v11 := v4];
	var v13: map<bool, bool> := map[v0 := v0];
	var v14: seq<map<bool, bool>> := [v13, v13];
	var v15 := "kn";
	var v16: multiset<string> := multiset{"teoupugru", v15};
	var globalState := new GlobalState(v3, v12, true, v14 + v14, v1, v10, 536, false, 'b', v16, 936, 0xa5, 'd', true, true, true);
	var i0 := 0;
	while (fm0(v0, v4, true, v0, globalState))
		decreases 100 - i0
	{
		if (i0 >= 100) {
			break;
		}
		
		i0 := i0 + 1;
		var v17 := DC0(v2);
		globalState.f12 := v17.cf0;
		var v18 := DC1(v0, 0x1d4, v4);
		var v19: map<D0, int> := map[v18 := 616];
		var v20 := new C6(v0, v4, !(v4 < v4), v19);
		var v21: array<seq<bool>> := new seq<bool>[10](i1 => v5);
		v21[safeIndex(150, v21.Length)] := [v0];
		v21[safeIndex(150, v21.Length)] := v5;
		v11[safeIndex(390, v11.Length)] := if (true in v10) then v10[true] else v20.f19;
		v11[safeIndex(390, v11.Length)] := safeDivisionInt(v4, safeModuloInt(v20.f19, v4));
	}
	var v22 := DC11(false);
	match (v22) {
		case DC11(cf18) =>
			var v23: map<seq<int>, int> := map[seq(abs(0x134), i2  => (|map[v2 := !cf18]|)) := 917];
			var v24: set<multiset<bool>> := {v10};
			var v25 := DC20(cf18, fm0(v0, |v9|, v0, true, globalState), v4, v24);
			var v27: map<int, D6> := map[|v23| := v25.(cf39 := set v26 : multiset<bool> | v26 in v24 :: (v26))];
			v27 := v27[v4 := v25];
			v15 := v15;
			var v28 := m11(globalState);
			globalState.f13, v15 := v5[safeIndex(v4 + v4, |v5|)], v15;
		case DC10(cf17) =>
			v4 := v4;
			var v29: array<seq<bool>> := new seq<bool>[19](i3 => cf17);
			v29[safeIndex(945, v29.Length)] := [v0, v0, fm0(v0, v4, true, true, globalState)];
			v29[safeIndex(945, v29.Length)] := cf17;
			globalState.f13 := fm43(v2, v4, --v4, v0, globalState) >= -v4;
			var v30: seq<array<int>> := [v11];
			var v31: array<array<int>> := new array<int>[14] [v11, v11, v11, v11, v11, v11, v11, v11, v11, v11, v11, v11, v30[safeIndex(v4, |v30|)], v11];
			v31, v1 := v31, v1;
	}
	
	forall i4 | 0 <= i4 < v1.Length {
		v1[i4] := v5[safeIndex(0x1a4, |v5|)];
	}
	var v32: seq<D6> := [fm44(v0, globalState)];
	v11[safeIndex(624, v11.Length)] := v4 + v4;
	var v33: map<int, int> := map[|(if (v0) then v5 else v5)| := v4 - v4];
	v2, globalState.f13, globalState.f13, v32, v11[safeIndex(624, v11.Length)] := v2, -v4 >= -v4, v0, v32, -(if (v4 in v33) then v33[v4] else -v4);
	var i5 := 0;
	while (if (v0) then v0 else !v0)
		decreases 100 - i5
	{
		if (i5 >= 100) {
			break;
		}
		
		i5 := i5 + 1;
		v1[safeIndex(84, v1.Length)] := fm0(v0, v4, v0, v0, globalState);
		v1[safeIndex(84, v1.Length)] := v0;
		var v34 := DC5(DC3(v8));
		var v35: map<int, string> := map[v11[safeIndex(624, v11.Length)] := v15];
		var v36 := DC1(v0, |(if (v11[safeIndex(624, v11.Length)] in v35) then v35[v11[safeIndex(624, v11.Length)]] else seq(abs(0x18c), i6  => ('r')))|, v4);
		var v37: map<D0, int> := map[v36 := 0x1ef];
		var v38: T1 := new C1(v34, v37);
		var v39 := DC33(v38);
		v38 := if (v11[safeIndex(624, v11.Length)] != v11[safeIndex(624, v11.Length)]) then v39.cf61 else v38;
		var v40 := DC8(if (v1[safeIndex(84, v1.Length)] in v9) then v9[v1[safeIndex(84, v1.Length)]] else v4, v4, v34, if (v0 in v13) then v13[v0] else v0, v15);
		var v41: seq<string> := [v15, v15];
		var v42 := DC13(v40, multiset(v41), v1[safeIndex(84, v1.Length)], if (true) then v4 else v11[safeIndex(624, v11.Length)], v11);
		match (v42) {
			case DC13(cf20, cf21, cf22, cf23, cf24) =>
				globalState.f12 := v2;
				globalState.f13 := (seq(abs(-952), i7  => (v2))) == v15;
				var v43: map<array<int>, seq<bool>> := map[v11 := [v0]];
				var v44: seq<seq<bool>> := [v5, v5];
				var v45: array<seq<bool>> := new seq<bool>[25] [v5, v5[safeIndex(|fm28('t', false, v0, globalState)|, |v5|) := v0], v5, v5, v5 + v5, v5 + v5, v5, if (v1[safeIndex(84, v1.Length)]) then v5 else v5, v5, v5, fm29(v1[safeIndex(84, v1.Length)], cf22, globalState), v5 + v5, v5, v5, v5, v5, [!false] + v5[safeIndex(-cf23, |v5|) := cf22], v5, v5 + v5, v5, fm29(v1[safeIndex(84, v1.Length)], v0, globalState), v5, [v1[safeIndex(84, v1.Length)], fm0(v1[safeIndex(84, v1.Length)], v11[safeIndex(624, v11.Length)], v1[safeIndex(84, v1.Length)], v0, globalState), v0] + [false], if (cf24 in v43) then v43[cf24] else v5, v44[safeIndex(v11[safeIndex(624, v11.Length)], |v44|)]];
				v45[safeIndex(398, v45.Length)] := v5;
				v45[safeIndex(398, v45.Length)] := v5 + [cf22];
				globalState.f6 := v4;
			case DC12(cf19) =>
				v4 := v11[safeIndex(624, v11.Length)];
				var v46: array<char> := new char[20];
				v46[safeIndex(495, v46.Length)] := v2;
				v46[safeIndex(495, v46.Length)] := fm34(v4, v0 <==> v1[safeIndex(84, v1.Length)], v0, globalState);
				globalState.f6 := v11[safeIndex(624, v11.Length)];
				v4 := v11[safeIndex(624, v11.Length)];
			case DC14(cf25) =>
				var v47 := m11(globalState);
				var v48: set<bool> := {v1[safeIndex(84, v1.Length)]};
				globalState.f6 := |v48|;
				globalState.f6 := safeDivisionInt(|([316] + (seq(abs(-460), i8  => (|v5|))))|, v11[safeIndex(624, v11.Length)]);
				v15 := v15;
		}
		
		globalState.f6 := safeDivisionInt(v4, v11[safeIndex(624, v11.Length)] * v11[safeIndex(624, v11.Length)]);
	}
	for i9 := v4 to fm43(v2, v11[safeIndex(624, v11.Length)], v4, v0, globalState) {
		var v49 := DC5(DC3(v8));
		var v50 := DC1(v0, v4, -0x24d);
		var v51: map<D0, int> := map[v50 := |[v0, v0, false]|];
		var v52: C1 := new C1(v49, v51);
		v52 := v52;
		globalState.f6 := i9;
		if (v0) {
			var v53: map<bool, char> := map[DC32(true, "sjts").cf59 := v2];
			v53 := v53[true := v2];
			globalState.f13 := !v0;
			v1[safeIndex(180, v1.Length)] := i9 >= v4;
			var v54: set<map<bool, int>> := {v9, v9};
			v1[safeIndex(180, v1.Length)] := (v9 + v9) !in v54;
			var v55: seq<string> := [fm27(globalState), v15[safeIndex(v4, |v15|) := v2], v15 + v15, fm27(globalState), "aiej"];
			globalState.f6 := |v55[safeIndex(-v4, |v55|)]|;
			var v56: T0 := new C0(fm43('w', |v5|, v4, v0, globalState), v51);
			var v57 := DC37(v56);
			var v58: seq<T0> := [v57.cf71, v56, v56, v56];
			v58 := v58;
		} else {
			globalState.f13 := v2 !in v15[safeIndex(712, |v15|) := fm17(globalState)];
			v1[safeIndex(384, v1.Length)] := v0;
			v1[safeIndex(384, v1.Length)] := v0;
			var v59: array<C0> := new C0[24];
			var v60: C0 := new C0(v4, map[v50 := v4]);
			v59[safeIndex(475, v59.Length)] := v60;
			v1[safeIndex(384, v1.Length)], v59[safeIndex(475, v59.Length)], v15, v11[safeIndex(624, v11.Length)], v11[safeIndex(624, v11.Length)] := v1[safeIndex(384, v1.Length)] <== v0, v60, v15, v60.f20, DC38({false, v1[safeIndex(384, v1.Length)]}, v11[safeIndex(624, v11.Length)]).cf73;
			var v61: array<C4> := new C4[9];
			var v62 := DC3(v8);
			var v63: C4 := new C4(v0, v62, false, v51);
			v61[safeIndex(656, v61.Length)] := v63;
			v61[safeIndex(656, v61.Length)] := v63;
			v0 := v63.f21;
		}
		
		var v64: C5 := new C5(!(fm43(v2, v11[safeIndex(624, v11.Length)], i9, v0, globalState) <= v4), v51);
		v64 := v64;
	}
	var i10 := 0;
	while (v11[safeIndex(624, v11.Length)] >= v4)
		decreases 100 - i10
	{
		if (i10 >= 100) {
			break;
		}
		
		i10 := i10 + 1;
		var v65 := m11(globalState);
		v15 := v15;
		v11[safeIndex(624, v11.Length)] := v11[safeIndex(624, v11.Length)] * v4;
		var v66: set<char> := {v65, v2};
		var v67: map<D0, int> := map[fm10(fm43('l', -|v66|, v11[safeIndex(624, v11.Length)], v0, globalState), v0, v4, |v10|, globalState) := v11[safeIndex(624, v11.Length)]];
		var v68: T1 := new C2(v67);
		v68 := v68;
	}
	var v69 := m11(globalState);
	var v70 := DC1(DC32(v0, v15).cf59, v4, |{|multiset{v0}|, 466}|);
	var v71: map<D0, int> := map[v70 := fm43(v2, v4, fm43(v2, v11[safeIndex(624, v11.Length)], v4, v0, globalState), v0, globalState)];
	var v72: T0 := new C0(-0x256, v71);
	var v73: multiset<T0> := multiset{v72, v72, v72, v72, v72};
	var v74: seq<multiset<T0>> := [v73, v73, v73, multiset{v72}, v73[v72 := abs(v11[safeIndex(624, v11.Length)])]];
	var v75: map<char, array<bool>> := map[v2 := v1];
	var v76: map<multiset<bool>, bool> := map[v10[v0 := abs(|[v0]|)] := true];
	var v77: map<seq<multiset<T0>>, bool> := map[v74[safeIndex(|v75|, |v74|) := v73] := if (v10 in v76) then v76[v10] else v0];
	v77 := v77[v74[safeIndex(v4, |v74|) := v73] := if (v0 in v13) then v13[v0] else v0];
	var v78 := DC26(v0);
	var v79 := DC27(v78);
	var v80 := DC27(v78);
	var v81 := DC27(v80.cf50);
	var v82: array<C4> := new C4[20];
	var v83: seq<int> := [v11[safeIndex(624, v11.Length)]];
	var v84 := DC3(v8);
	var v86: C4 := new C4(v0, DC3(multiset(v83)).(cf4 := v84.cf4), v0, map v85 : D0 | v85 in map[v70 := v11[safeIndex(624, v11.Length)]] :: (v85) := (v4));
	v82[safeIndex(718, v82.Length)] := v86;
	var v87: seq<C4> := [v86];
	v80, v82[safeIndex(718, v82.Length)] := v81, v87[safeIndex(v11[safeIndex(624, v11.Length)], |v87|)];
	var v88 := DC23(v11[safeIndex(624, v11.Length)], 0x2f8, v4);
	var i11 := 0;
	while (v88.cf46 == v83[safeIndex(v4, |v83|)])
		decreases 100 - i11
	{
		if (i11 >= 100) {
			break;
		}
		
		i11 := i11 + 1;
		v11[safeIndex(624, v11.Length)] := |{if (v11[safeIndex(624, v11.Length)] in v7) then v7[v11[safeIndex(624, v11.Length)]] else v0}| - v4;
		globalState.f13 := v5[safeIndex(safeDivisionInt(|v15|, v4), |v5|)];
		v0 := v86.f21;
		v83 := v83;
	}
	globalState.f6 := v11[safeIndex(624, v11.Length)];
	var i12 := 0;
	while (false)
		decreases 100 - i12
	{
		if (i12 >= 100) {
			break;
		}
		
		i12 := i12 + 1;
		v72 := v72;
		globalState.f6 := -(v4 + v11[safeIndex(624, v11.Length)]);
		var v89: map<int, array<bool>> := map[v4 := v1];
		var v90: map<D0, array<bool>> := map[v70 := if (v11[safeIndex(624, v11.Length)] in v89) then v89[v11[safeIndex(624, v11.Length)]] else v1];
		v11[safeIndex(624, v11.Length)], globalState.f13, globalState.f13 := safeDivisionInt(v4, v11[safeIndex(624, v11.Length)]), v70 !in v90, v0;
		var v91, v92, v93, v94 := v86.m5(v11[safeIndex(624, v11.Length)] + v4, !v0, v70, globalState);
	}
	var v95: map<bool, map<D0, int>> := map[v0 := v72.f16];
	var v96 := new C5(v0, if (v86.f21 in v95) then v95[v86.f21] else v72.f16);
	var v97: array<array<bool>> := new array<bool>[20];
	var v98: map<bool, array<array<bool>>> := map[false := v97];
	v98 := v98[v86.f21 := v97];
	var i13 := 0;
	while (!v86.f21)
		decreases 100 - i13
	{
		if (i13 >= 100) {
			break;
		}
		
		i13 := i13 + 1;
		var v99: map<bool, multiset<int>> := map[v0 ==> v86.f21 := v8];
		var v100: set<bool> := {DC11(v86.f21).cf18, v86.f21, v86.f21, v0};
		var v101: array<array<int>> := new array<int>[27] [v11, v11, v11, v11, v11, v11, v11, v11, v11, v11, v11, v11, v11, v11, v11, v11, v11, v11, v11, v11, v11, v11, v11, v11, v11, v11, v11];
		var v102: seq<array<array<int>>> := [v101];
		var v103 := DC12(v102[safeIndex(|v15|, |v102|)]);
		var v104 := DC14(v103);
		var v105: map<bool, D4> := map[v0 := v104];
		var v106: map<map<bool, D4>, bool> := map[v105 := v86.f21];
		v99 := v99[-|v100| != |v106| := v8];
		globalState.f6 := v96.fm2(globalState);
		v0 := !v0;
		var v107, v108, v109 := v96.m0(globalState);
	}
	print v0, "\n";
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
	print v2, "\n";
	print |v3|, "\n";
	print v4, "\n";
	print v5 == [false], "\n";
	print v6 == {791}, "\n";
	print v7 == map[791 := false], "\n";
	print v8 == multiset{791, 791, 791, 1}, "\n";
	print v9 == map[false := -822], "\n";
	print v10 == multiset{false, false}, "\n";
	print v11[0], "\n";
	print v11[1], "\n";
	print v11[2], "\n";
	print v11[3], "\n";
	print v11[4], "\n";
	print v11[5], "\n";
	print v11[6], "\n";
	print v11[7], "\n";
	print v11[8], "\n";
	print v11[9], "\n";
	print v11[10], "\n";
	print v11[11], "\n";
	print v11[12], "\n";
	print v11[13], "\n";
	print v11[14], "\n";
	print v11[15], "\n";
	print v11[16], "\n";
	print v11[17], "\n";
	print v11[18], "\n";
	print v11[19], "\n";
	print |v12|, "\n";
	print v13 == map[false := false], "\n";
	print v14 == [map[false := false], map[false := false]], "\n";
	print v15, "\n";
	print v16 == multiset{"teoupugru", "kn"}, "\n";
	print |globalState.f0|, "\n";
	print |globalState.f1|, "\n";
	print globalState.f2, "\n";
	print globalState.f3 == [map[false := false], map[false := false], map[false := false], map[false := false]], "\n";
	print globalState.f4[0], "\n";
	print globalState.f4[1], "\n";
	print globalState.f4[2], "\n";
	print globalState.f4[3], "\n";
	print globalState.f4[4], "\n";
	print globalState.f4[5], "\n";
	print globalState.f5 == multiset{false, false}, "\n";
	print globalState.f6, "\n";
	print globalState.f7, "\n";
	print globalState.f8, "\n";
	print globalState.f9 == multiset{"teoupugru", "kn"}, "\n";
	print globalState.f10, "\n";
	print globalState.f11, "\n";
	print globalState.f12, "\n";
	print globalState.f13, "\n";
	print globalState.f14, "\n";
	print globalState.f15, "\n";
	print i0, "\n";
	print v22.cf18, "\n";
	print v32 == [DC19({true, false})], "\n";
	print v33 == map[1 := 0], "\n";
	print i5, "\n";
	print i10, "\n";
	print v69, "\n";
	print v70.cf1, "\n";
	print v70.cf2, "\n";
	print v70.cf3, "\n";
	print v71 == map[DC1(false, 791, 2) := 6], "\n";
	print v72.f16 == map[DC1(false, 791, 2) := 6], "\n";
	print |v73|, "\n";
	print |v74|, "\n";
	print |v75|, "\n";
	print v76 == map[multiset{false} := true], "\n";
	print |v77|, "\n";
	print v78.cf49, "\n";
	print v79.cf50.cf49, "\n";
	print v80.cf50.cf49, "\n";
	print v81.cf50.cf49, "\n";
	print v82[18].f21, "\n";
	print v82[18].f22.cf4 == multiset{791, 791, 791, 1}, "\n";
	print v82[18].f17, "\n";
	print v82[18].f16 == map[DC1(false, 791, 2) := 791], "\n";
	print v83 == [1692869111], "\n";
	print v84.cf4 == multiset{791, 791, 791, 1}, "\n";
	print v86.f21, "\n";
	print v86.f22.cf4 == multiset{791, 791, 791, 1}, "\n";
	print |v87|, "\n";
	print v88.cf44, "\n";
	print v88.cf45, "\n";
	print v88.cf46, "\n";
	print i11, "\n";
	print i12, "\n";
	print v95 == map[false := map[DC1(false, 791, 2) := 6]], "\n";
	print |v98|, "\n";
	print i13, "\n";
}