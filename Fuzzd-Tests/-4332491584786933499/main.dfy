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
datatype D0 = DC0(cf0: char)
datatype D1 = DC1(cf1: bool)
datatype D2 = DC3 | DC2(cf2: seq<int>) | DC4(cf3: D2)
datatype D3 = DC6(cf5: int, cf6: bool, cf7: bool, cf8: int, cf9: bool) | DC7(cf10: bool, cf11: bool, cf12: bool) | DC8 | DC5(cf4: string) | DC9(cf13: D3)
datatype D4 = DC11 | DC12(cf15: bool) | DC10(cf14: seq<array<bool>>)
datatype D5 = DC14(cf17: bool, cf18: bool) | DC15(cf19: int) | DC13(cf16: array<bool>) | DC16(cf20: D5)
datatype D6 = DC17(cf21: map<int, int>)
datatype D7 = DC19(cf23: map<int, bool>, cf24: int) | DC18(cf22: set<int>)
datatype D8 = DC21(cf26: array<bool>, cf27: int) | DC22(cf28: string, cf29: bool, cf30: int) | DC20(cf25: array<D4>) | DC23(cf31: D8)
datatype D9 = DC25(cf33: seq<D8>, cf34: bool) | DC26(cf35: bool, cf36: array<seq<bool>>, cf37: bool, cf38: int, cf39: int) | DC24(cf32: multiset<int>)
datatype D10 = DC28(cf41: int) | DC29(cf42: bool, cf43: D3) | DC27(cf40: array<T0>)
datatype D11 = DC31(cf45: bool, cf46: int) | DC30(cf44: map<bool, bool>) | DC32(cf47: D11)
datatype D12 = DC34(cf49: int, cf50: int, cf51: int) | DC33(cf48: seq<D4>) | DC35(cf52: D12)
datatype D13 = DC37(cf54: bool, cf55: bool) | DC36(cf53: seq<array<int>>) | DC38(cf56: D13)
datatype D14 = DC40(cf58: int, cf59: int, cf60: D3) | DC39(cf57: seq<bool>)
datatype D15 = DC41(cf61: array<int>)
datatype D16 = DC43(cf63: bool, cf64: bool, cf65: char, cf66: bool, cf67: string) | DC42(cf62: map<C5, int>) | DC44(cf68: D16)
datatype D17 = DC45(cf69: T0)
datatype D18 = DC47(cf71: C6) | DC48(cf72: bool) | DC46(cf70: C7) | DC49(cf73: D18)
datatype D19 = DC50(cf74: C4)
datatype D20 = DC52(cf76: int, cf77: seq<int>, cf78: int, cf79: int, cf80: D9) | DC53 | DC51(cf75: map<bool, string>)
trait T0 {
	method m0(p0: set<int>, p1: int, globalState: GlobalState) returns (r0: int) 
}

trait T1 {
	const f17 : int
	const f18 : bool
	function fm1(p0: int, p1: int, p2: int, p3: bool, globalState: GlobalState): bool 
}

class GlobalState {
	const f0 : int
	const f1 : bool
	const f2 : array<bool>
	const f3 : array<array<bool>>
	var f4 : int
	var f5 : map<bool, array<int>>
	var f6 : int
	const f7 : bool
	var f8 : bool
	const f9 : multiset<map<int, char>>
	const f10 : bool
	const f11 : int
	var f12 : int
	const f13 : char
	const f14 : bool
	const f15 : seq<int>
	var f16 : bool
	constructor (f0 : int, f1 : bool, f2 : array<bool>, f3 : array<array<bool>>, f4 : int, f5 : map<bool, array<int>>, f6 : int, f7 : bool, f8 : bool, f9 : multiset<map<int, char>>, f10 : bool, f11 : int, f12 : int, f13 : char, f14 : bool, f15 : seq<int>, f16 : bool) {
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
	}
	
}

class C0 extends T0 {
	const f27 : int
	const f28 : array<bool>
	constructor (f27 : int, f28 : array<bool>) {
		this.f27 := f27;
		this.f28 := f28;
	}
	
	method m0(p0: set<int>, p1: int, globalState: GlobalState) returns (r0: int) {
		var v0 := "xryonwlcw";
		var v1: map<string, bool> := map[v0 := false];
		var v2 := true;
		v1 := v1[fm19(p1, f27, globalState) + v0 := v2];
		globalState.f16 := v2;
		var v3: map<int, int> := map[p1 := f27];
		v2 := !!(f27 in v3);
		v2 := !v2;
		globalState.f8 := v2;
		f28[safeIndex(60, f28.Length)] := v2;
		var v4 := DC1(v2);
		f28[safeIndex(60, f28.Length)] := !v4.cf1;
		r0 := p1;
	}
}

class C1 extends T1, T0 {
	const f26 : array<bool>
	constructor (f26 : array<bool>, f17 : int, f18 : bool) {
		this.f26 := f26;
		this.f17 := f17;
		this.f18 := f18;
	}
	
	function fm1(p0: int, p1: int, p2: int, p3: bool, globalState: GlobalState): bool {
		f18
	}
	method m0(p0: set<int>, p1: int, globalState: GlobalState) returns (r0: int) {
		var i0 := 0;
		while (!((f17 != p1) <== (if (!f18) then f18 else f18)))
			decreases 100 - i0
		{
			if (i0 >= 100) {
				break;
			}
			
			i0 := i0 + 1;
			var v0: map<int, bool> := map[f17 := true];
			if (DC1(f18).cf1 && (v0 != v0)) {
				var v1 := 'b';
				var v2 := "tse";
				globalState.f16 := if (f18) then v1 in v2 else f18;
				var v3: array<bool> := new bool[5](i1 => f18);
				var v4: seq<bool> := [f18];
				var v5: multiset<bool> := multiset{f18};
				globalState.f6, v3, v4 := p1, f26, (v4 + fm15(f18, 0x345, v5[f18 := abs(p1)], globalState)) + v4;
				var v6: map<bool, seq<bool>> := map[f18 := v4];
				var v7: array<int> := new int[3];
				v7[safeIndex(746, v7.Length)] := f17 + f17;
				var v8: seq<int> := [p1, -0xdc];
				var v9: seq<string> := [v2];
				var v10: seq<int> := [safeModuloInt(fm16(f18, v2, |v8|, p1, globalState), p1), |v9[safeIndex(f17, |v9|)]|, safeModuloInt(|v4[safeIndex(f17, |v4|) := f18]|, |"oadfafxt"|)];
				v6, v7[safeIndex(746, v7.Length)], globalState.f12, v2, globalState.f8 := v6, p1, -v8[safeIndex(f17, |v8|)], v2 + v2, fm1(p1, f17, f17, f18, globalState);
				var v11: array<char> := new char[12](i2 => 'j');
				v11[safeIndex(379, v11.Length)] := v1;
				v11[safeIndex(379, v11.Length)] := v1;
				globalState.f8 := f18;
			} else {
				f26[safeIndex(396, f26.Length)] := true;
				f26[safeIndex(396, f26.Length)] := f18;
				globalState.f6 := (f17 + p1) + f17;
				var v12: map<int, string> := map[p1 := fm17(globalState)];
				var v13: seq<bool> := [f18, f17 != p1, f17 >= |v12|];
				v13 := v13[safeIndex(p1, |v13|) := f18] + [f26[safeIndex(396, f26.Length)], f26[safeIndex(396, f26.Length)], f18, f18, f18];
				var v14 := 'm';
				var v15: multiset<char> := multiset{'y', v14};
				v15 := fm18(f18, globalState);
				var v16: array<int> := new int[17];
				v16, globalState.f16 := v16, f18;
			}
			
			f26[safeIndex(924, f26.Length)] := f18;
			f26[safeIndex(924, f26.Length)] := f18;
			globalState.f4 := p1;
			globalState.f6 := -p1;
		}
		var v17 := new C0(-0x31a, f26);
		var v18: array<D0> := new D0[23](i4 => DC0(DC0('d').cf0));
		forall i3 | 0 <= i3 < v18.Length {
			v18[i3] := DC0('r');
		}
		var v19 := 'p';
		var v20: map<int, char> := map[f17 := v19];
		var v21: map<int, int> := map[p1 := f17];
		var v22 := "tpaled";
		var v23: multiset<string> := multiset{v22};
		var i5 := 0;
		while (safeDivisionInt(p1, -|v20|) >= (|v21| * |v23|))
			decreases 100 - i5
		{
			if (i5 >= 100) {
				break;
			}
			
			i5 := i5 + 1;
			globalState.f12 := fm16(f18, v22 + v22, v17.f27, 0x1e7, globalState);
			var v24: array<int> := new int[15](i6 => i6 * |"ikmvl"|);
			v24[safeIndex(634, v24.Length)] := f17;
			v24[safeIndex(634, v24.Length)] := 0x318 + f17;
			var v25 := DC0(v19);
			var v26: array<char> := new char[25] [v19, v25.cf0, v19, v19, 'b', if (f18) then v19 else v19, v19, v19, v19, v19, if (true) then v19 else v19, v19, v19, v19, v19, v19, v19, v19, v25.cf0, fm20(-57, v19, f17, v24[safeIndex(634, v24.Length)], globalState), v19, if (f18) then v19 else v19, v19, v19, v19];
			v26[safeIndex(454, v26.Length)] := if (|v22| in v20) then v20[|v22|] else v19;
			v26[safeIndex(454, v26.Length)] := v19;
			var v27: map<bool, array<int>> := map[f18 := v24];
			globalState.f8 := v27 != v27;
		}
		var v28: map<string, bool> := map[v22 := f18];
		var v29: array<bool> := new bool[8] [f18, f18, f18, f18, f18, DC1(f18).cf1, -f17 == p1, !(if (v22 in v28) then v28[v22] else f18)];
		forall i7 | 0 <= i7 < v29.Length {
			v29[i7] := !(f18 || f18);
		}
		if (p1 != v17.f27) {
			var v30: seq<int> := [|v22|];
			var v31: multiset<int> := multiset{p1};
			var v32: map<bool, multiset<int>> := map[f18 := v31];
			var v33: map<int, bool> := map[v17.f27 := f18];
			var v34: array<int> := new int[13](i8 => safeDivisionInt(i8, v17.f27));
			var v35: seq<array<int>> := [v34];
			var v36: array<int> := new int[25] [|v30|, |v22|, fm16(f18, "oudutcwh", f17, v17.f27, globalState), fm16(f18, v22, f17, v17.f27, globalState), |multiset{|(if (f18 in v32) then v32[f18] else multiset{|fm21(0x14e, v17.f27, globalState)|, |v33|})|, f17}|, 0x238, p1, f17, -v17.f27, -safeDivisionInt(v17.f27, p1), f17, v17.f27, v17.f27, v17.f27, f17, p1, v17.f27, safeModuloInt(-0x2f1, v17.f27), -p1, safeDivisionInt(v17.f27, |v35|), p1, f17, |(v30 + [v17.f27, f17])|, p1, f17];
			v36[safeIndex(65, v36.Length)] := f17;
			v36[safeIndex(65, v36.Length)] := v17.f27;
			var v37: map<bool, int> := map[if (v22 in v28) then v28[v22] else !f18 := p1];
			var v38 := new C0(if (fm1(-383, 0x210, v17.f27, f18, globalState) in v37) then v37[fm1(-383, 0x210, v17.f27, f18, globalState)] else v17.f27, v17.f28);
			var v39: seq<array<bool>> := [v38.f28, v38.f28];
			var v40 := DC6(v38.f27, false, f18, |v30|, f18);
			var v41: seq<string> := [v22, v22[safeIndex(v40.cf8, |v22|) := v19], v22, v22, v22];
			var v42 := DC5(v41[safeIndex(f17, |v41|)]);
			var v43: seq<string> := [v22, v42.cf4];
			var v44 := new C0(v36[safeIndex(65, v36.Length)], v39[safeIndex(|v43|, |v39|)]);
			var v45: array<char> := new char[19](i9 => v19);
			v45[safeIndex(972, v45.Length)] := 'p';
			v45[safeIndex(972, v45.Length)] := v19;
			v21 := v21[-(if (!f18) then v17.f27 else 0x30) := v38.f27];
		} else {
			v21 := v21[-|p0| := f17];
			var v46: array<int> := new int[15];
			var v47: multiset<array<int>> := multiset{v46};
			globalState.f6 := if (v46 in v47) then v47[v46] else |(v22 + v22)|;
			globalState.f8 := true;
			var v48 := DC9(DC5(v22));
			match (v48) {
				case DC6(cf5, cf6, cf7, cf8, cf9) =>
					v46, v19, cf6 := v46, v19, f18;
					var v49 := DC5(fm17(globalState));
					v49, globalState.f4 := v49, --|v49.cf4|;
					v19 := v19;
					cf7 := |(if (cf9) then v22 else v22)| == 0x1da;
				case DC7(cf10, cf11, cf12) =>
					cf12 := false;
					v17.f28[safeIndex(179, v17.f28.Length)] := !cf10 <== cf12;
					v17.f28[safeIndex(179, v17.f28.Length)] := v17.f27 >= f17;
					var v50 := new C0(v17.f27, v29);
					var v51 := DC5(v22);
					var v52 := DC6(-219, cf10, f18, |v51.cf4|, f18);
					var v53: seq<D3> := [v52];
					cf11 := v53 != v53;
				case DC8() =>
					var v54: map<bool, bool> := map[f18 := false];
					var v55 := DC6(|"vdxmkyf"|, true, !f18, |v54|, f18);
					globalState.f12 := v55.cf8;
					var v56: seq<array<bool>> := [v17.f28];
					var v57: seq<seq<array<bool>>> := [v56];
					var v58 := DC10(v56);
					var v59: array<seq<array<bool>>> := new seq<array<bool>>[13] [v56 + v56, v56, [f26], v57[safeIndex(v17.f27, |v57|)], v56, v56 + v56, v56, [v29, v17.f28, v17.f28, v17.f28, v17.f28] + v56, v58.cf14, [f26], v56, v56, v56 + [v17.f28]];
					v59[safeIndex(280, v59.Length)] := v57[safeIndex(p1, |v57|)];
					v59[safeIndex(280, v59.Length)] := v56;
					v29[safeIndex(419, v29.Length)] := f18;
					var v60: seq<bool> := [false];
					v29[safeIndex(419, v29.Length)] := v60[safeIndex(v17.f27, |v60|)];
					globalState.f16 := v60[safeIndex(0x29b, |v60|)];
				case DC5(cf4) =>
					globalState.f8 := f18;
					v22 := "py";
					var v61: C0 := new C0(v17.f27, v17.f28);
					var v62: map<char, bool> := map[v19 := f18];
					v46[safeIndex(231, v46.Length)] := |v62| - v17.f27;
					v61, v46[safeIndex(231, v46.Length)] := v61, safeDivisionInt(|cf4|, v17.f27) * f17;
					r0 := -f17 - |v22|;
				case DC9(cf13) =>
					var v63 := DC3();
					var v64 := DC4(v63);
					var v65: seq<D2> := [v64];
					v65 := v65;
					v21 := v21[p1 := -v17.f27];
					globalState.f8 := v17.f27 > v17.f27;
					var v66: map<int, bool> := map[p1 := f18];
					v66 := v66[p1 := f18];
			}
			
			var v67: map<string, array<int>> := map[("a")[safeIndex(|v22|, |"a"|) := v19] := v46];
			var v68 := new C0(|v67|, v17.f28);
		}
		
		r0 := 0x1d6;
	}
}

class C2 extends T0 {
	const f25 : seq<string>
	constructor (f25 : seq<string>) {
		this.f25 := f25;
	}
	
	function fm11(p0: int, p1: bool, globalState: GlobalState): seq<seq<char>> {
		[(seq(abs(578), i0  => ('s'))) + ['u', 'v', 'j']]
	}
	method m0(p0: set<int>, p1: int, globalState: GlobalState) returns (r0: int) {
		var v0 := false;
		var v1 := 'o';
		var v2: seq<bool> := [true, v0];
		var v3: map<seq<bool>, bool> := map[v2 := false];
		var v4 := "lgfnj";
		var v5: array<bool> := new bool[10] [p1 < p1, v0, fm12(p1, v1, globalState), v3 != v3, v0, v0, v0, v0, !(v4 != v4), false];
		v5[safeIndex(127, v5.Length)] := !v0;
		var v6: array<set<bool>> := new set<bool>[9](i0 => {false, v0} * {v0});
		var v7: map<bool, bool> := map[v0 := v0];
		var v8: set<bool> := {if (v0 in v7) then v7[v0] else v0, v0};
		v6[safeIndex(178, v6.Length)] := v8;
		var v9: seq<int> := [|v4|];
		var v10: seq<set<bool>> := [v8, {fm12(p1, v4[safeIndex(|v9|, |v4|)], globalState)}, fm13(0x83, p1, p1, p1, globalState)];
		v5[safeIndex(127, v5.Length)], v6[safeIndex(178, v6.Length)], globalState.f4 := v0, v10[safeIndex(p1, |v10|)], p1;
		globalState.f12 := 0x6c;
		for i1 := p1 to p1 {
			v5[safeIndex(127, v5.Length)] := v5[safeIndex(127, v5.Length)];
			v1 := v1;
			var v11: array<int> := new int[13];
			v11[safeIndex(512, v11.Length)] := |map[v0 := v5[safeIndex(127, v5.Length)]]|;
			v11[safeIndex(512, v11.Length)] := -p1;
			globalState.f12 := i1;
		}
		if (!v0) {
			v5[safeIndex(127, v5.Length)] := v0;
			v4, globalState.f4, globalState.f16 := seq(abs(-458), i2  => (if (v0) then v1 else v1)), -p1, if (p1 <= p1) then if (v0) then v5[safeIndex(127, v5.Length)] else v5[safeIndex(127, v5.Length)] else v0 && v2[safeIndex(p1, |v2|)];
			if (v0) {
				v5[safeIndex(127, v5.Length)] := v0;
				var v12: map<int, D2> := map[p1 := fm14(p1, globalState).(cf2 := v9)];
				v12 := v12[p1 := DC2(v9)];
				v5[safeIndex(127, v5.Length)] := |(seq(abs(0x11), i3  => ('s')))| > (0x3be - p1);
				var v13 := new C1(v5, if (v0) then p1 else p1, true);
				v4 := v4;
			} else {
				globalState.f4 := |{p1, p1 + p1}|;
				var v14 := DC13(v5);
				var v15: array<array<bool>> := new array<bool>[24] [v5, v5, v5, v5, v5, v14.cf16, v5, v5, v5, v5, v5, v5, v5, v5, v5, v5, v5, v5, v5, v5, v5, v5, v5, v5];
				var v16: map<array<array<bool>>, int> := map[v15 := p1];
				v16 := v16[v15 := p1];
				var v17: C0 := new C0(p1, v5);
				var v18: seq<C0> := [if (v0) then v17 else v17, v17];
				v17 := v18[safeIndex(p1, |v18|)];
				globalState.f6 := |(v4 + ((seq(abs(0x19f), i4  => ('n'))) + v4))|;
				v17 := v17;
			}
			
			globalState.f16 := v0;
			var v19 := DC6(|v9|, v0, v0, |v4|, v0);
			var v20: map<D3, int> := map[v19 := p1];
			v0 := !(v5[safeIndex(127, v5.Length)] || (v20 == v20[v19 := p1]));
		} else {
			var v23: set<map<int, int>> := {fm22(v0, seq(abs(-0x174), i5  => (map[p1 := v5[safeIndex(127, v5.Length)]])), v5[safeIndex(127, v5.Length)], p0, globalState), map v22 : int | (617 <= v22) && (v22 < 0x226) :: (v22 + p1) := (p1)};
			var v24: map<int, int> := map[p1 := |v9|];
			var v25 := DC17(v24);
			var v26 := DC5(v4);
			var v27: map<map<int, int>, D3> := map[v24 := DC9(v26)];
			var v28, v29 := m8(v5, |((map v21 : map<int, int> | v21 in v23 :: (v21) := (DC9(DC9(DC7(if (!v0 in v7) then v7[!v0] else v5[safeIndex(127, v5.Length)], v0, v0)))))[v25.cf21 := DC9(DC9(fm23(true, globalState))).(cf13 := DC6(p1, v0, v0, 0x20, false))] + v27)|, globalState);
			var v30 := new C0(p1, v5);
			var v31: map<char, bool> := map[v1 := v0];
			var v32: seq<map<char, bool>> := [v31];
			var v33 := DC18(p0);
			globalState.f4, globalState.f4 := |v32|, -(if (true) then safeDivisionInt(p1, |v33.cf22|) else v30.f27);
			globalState.f12 := safeModuloInt(p1, p1);
			globalState.f8 := v4 == fm19(v30.f27, |v4|, globalState);
		}
		
		var v34: map<bool, int> := map[v5[safeIndex(127, v5.Length)] := p1];
		v34 := v34[v0 := p1];
		globalState.f16 := fm12(p1, v1, globalState);
		r0 := p1;
	}
	method m8(p0: array<bool>, p1: int, globalState: GlobalState) returns (r0: set<char>, r1: map<bool, int>) {
		var v0: multiset<seq<int>> := multiset{seq(abs(-0x3a4), i0  => (p1))};
		if (v0 != v0) {
			var v1 := true;
			globalState.f8 := v1;
			globalState.f4 := |(seq(abs(0x2de), i1  => (if (v1) then 'l' else 'o')))|;
			var v2: array<string> := new string[16];
			v2[safeIndex(632, v2.Length)] := "ngyoyur";
			var v3 := "jeikkxmhh";
			v2[safeIndex(632, v2.Length)] := v3;
			var v4: array<int> := new int[24];
			v4 := v4;
			var v5: multiset<int> := multiset{p1, p1, p1};
			globalState.f6 := (|{p1}| * p1) + |v5|;
		} else {
			var v6: array<multiset<bool>> := new multiset<bool>[26];
			var v7 := false;
			var v8: multiset<bool> := multiset{v7};
			v6[safeIndex(284, v6.Length)] := if (v7) then fm24(globalState) else v8;
			v6[safeIndex(284, v6.Length)] := v8;
			var v9: map<int, bool> := map[910 := v7];
			var v10 := 'u';
			var v11: set<char> := {v10, v10, v10};
			var v13 := DC19(v9[|v11| := v7] + (map v12 : int | (-0x36b <= v12) && (v12 < 491) :: (v12 * p1) := (v7)), p1 * p1);
			v13 := v13;
			if (!false) {
				var v14: array<int> := new int[1];
				v14 := v14;
				v7 := false;
				var v15 := DC11();
				var v16: array<D4> := new D4[17] [v15, v15, DC11(), v15, v15, v15, v15, v15, v15, v15, v15, v15, DC11(), v15, v15, DC11(), DC11()];
				var v17 := DC7(v7, v7, v7);
				var v18 := DC20(v16);
				var v19: array<array<D4>> := new array<D4>[24] [v16, v16, v16, v16, v16, v16, v16, v16, if (v17.cf11) then v16 else v16, v16, v16, v16, v16, v16, v16, v16, v16, v18.cf25, v16, v16, v16, v16, v16, v16];
				v19 := v19;
				var v20 := "iosg";
				v20 := (v20 + "iewuxs") + v20;
				var v21 := DC5(v20 + v20);
				v21 := v21;
			} else {
				var v22: map<char, int> := map[v10 := p1 + p1];
				v22 := v22[v10 := p1];
				var v23: map<bool, bool> := map[v7 := false ==> v7];
				v23 := v23;
				var v24 := "mvfd";
				var v25 := new C0(|v24|, if (v7) then p0 else p0);
				var v26: set<bool> := {v7, false};
				globalState.f16 := ({!v7} * v26) == v26;
				var v27: array<seq<bool>> := new seq<bool>[12];
				v27 := v27;
			}
			
			if (!v7) {
				globalState.f12 := p1;
				globalState.f16 := v7;
				var v28: array<map<seq<bool>, array<D7>>> := new map<seq<bool>, array<D7>>[3];
				var v29: seq<bool> := [v7];
				var v30: array<D7> := new D7[8];
				var v31: map<seq<bool>, array<D7>> := map[v29[safeIndex(p1, |v29|) := v7] := v30];
				v28[safeIndex(765, v28.Length)] := v31;
				v28[safeIndex(765, v28.Length)] := v31;
				globalState.f8 := v7 <== !v7;
				var v32: map<int, array<bool>> := map[p1 := p0];
				globalState.f6 := -|v32|;
			} else {
				var v33: seq<int> := [p1];
				globalState.f6 := v33[safeIndex(-0x3a0, |v33|)] - -p1;
				var v34: map<bool, int> := map[if (!v7) then v7 else v7 := p1];
				var v35: set<int> := {p1};
				var v36: map<bool, set<int>> := map[v7 := v35];
				globalState.f4 := if (v7 in v34) then v34[v7] else |((seq(abs(0x2d8), i2  => (|map[v7 := false]|))) + ([0x29])[safeIndex(|v36[v7 := v35]|, |[0x29]|) := p1])|;
				globalState.f4 := 0x124;
				var v37: map<int, int> := map[p1 := -p1];
				globalState.f4 := if (p1 in v37) then v37[p1] else p1 + p1;
				globalState.f6 := p1;
			}
			
			var v38: seq<bool> := [false, v7];
			var v39: seq<seq<bool>> := [v38, [fm12(p1, v10, globalState), v7, v7]];
			var v40: map<bool, seq<seq<bool>>> := map[!v7 <==> v7 := v39];
			v40 := v40[v7 := seq(abs(0x1dc), i3  => (v38))];
		}
		
		var v41 := 'f';
		var v42 := "e";
		var v43 := true;
		var v44: map<int, bool> := map[p1 := v43];
		globalState.f16, globalState.f8, globalState.f16, globalState.f12 := v41 !in v42, v43, v43, |((if (v43) then v44 else v44) + v44)|;
		var v45: array<int> := new int[19];
		v45 := v45;
		var v46: array<D4> := new D4[17];
		var v47 := DC20(v46);
		v47 := v47;
		if (p1 >= p1) {
			var v48 := new C0(-p1, p0);
			globalState.f16 := v41 in (v42 + v42);
			globalState.f4 := safeDivisionInt(p1, -v48.f27);
			p0[safeIndex(803, p0.Length)] := v43;
			p0[safeIndex(803, p0.Length)] := true;
			var v49: seq<int> := [p1];
			var v50: seq<int> := [|v49|];
			var v51: array<string> := new string[16] ["lxa", "neyhtfw", v42 + v42[safeIndex(v49[safeIndex(-0x19c, |v49|)], |v42|) := 'm'], v42 + v42, v42 + v42, v42 + "sjpc", v42, "tatwgo", if (p0[safeIndex(803, p0.Length)]) then seq(abs(0x2b5), i4  => (v41)) else fm17(globalState), v42, f25[safeIndex(224, |f25|)], v42, if (!v43) then "kc" else v42, seq(abs(0x2a9), i5  => (v41)), v42, v42];
			v51 := v51;
		} else {
			var v52: array<array<bool>> := new array<bool>[1];
			v52[safeIndex(182, v52.Length)] := p0;
			v52[safeIndex(182, v52.Length)] := p0;
			var v53: set<bool> := {v43, v43, v43, v43, v43};
			var v54: map<bool, set<bool>> := map[v43 := v53];
			var v55: multiset<array<bool>> := multiset{v52[safeIndex(182, v52.Length)]};
			var v56: set<int> := {|(if (v43 in v54) then v54[v43] else {v43, v43})|, -p1, if (p0 in v55) then v55[p0] else p1, p1, p1};
			var v57: map<bool, bool> := map[v43 := v43];
			var v58: map<set<int>, seq<int>> := map[v56 := [|v57|]];
			var v61: multiset<map<int, bool>> := multiset{v44, (map v59 : int | v59 in (set v60 : int | (0xdc <= v60) && (v60 < 0x17d) :: (v60 - p1)) :: (safeModuloInt(v59, p1)) := (v43)) + v44, v44 + v44};
			var v62: seq<map<set<int>, seq<int>>> := [v58];
			var v63: seq<int> := [p1];
			var v64: map<int, int> := map[|map[0x102 := p1]| := p1];
			var v65 := DC17(v64);
			var v67: seq<map<int, bool>> := [map v66 : int | (0x2ac <= v66) && (v66 < 46) :: (safeDivisionInt(v66, p1)) := (v43), v44];
			v58, globalState.f8, globalState.f16, v61 := v58 + v62[safeIndex(p1, |v62|)], !true, false ==> !(|v56| !in v63), if (false) then fm25(v41, v65, p1, globalState) else multiset(v67);
			v45[safeIndex(73, v45.Length)] := p1;
			globalState.f16, v45[safeIndex(73, v45.Length)] := v43, if (v53 == v53) then 0x3d1 else fm16(v43, v42, 0x261, p1, globalState);
			if (v43) {
				var v68: array<set<int>> := new set<int>[27];
				v68[safeIndex(632, v68.Length)] := v56;
				var v69: seq<set<int>> := [v56];
				v68[safeIndex(632, v68.Length)] := v69[safeIndex(p1, |v69|)];
				var v71 := new C1(p0, |(set v70 : int | (486 <= v70) && (v70 < 609) :: (v70 + |v63|))|, v43);
				v45[safeIndex(73, v45.Length)] := v45[safeIndex(73, v45.Length)];
				globalState.f8 := v43;
				var v72: seq<bool> := [v43];
				var v73: multiset<bool> := multiset{!v72[safeIndex(603, |v72|)], v43, v43, v43, false};
				globalState.f12 := fm16(v43, v42 + v42, v45[safeIndex(73, v45.Length)], |(multiset{v43, v43, if (false in v57) then v57[false] else v43, v43} + v73)|, globalState);
			} else {
				v41 := v41;
				var v74: array<D3> := new D3[11];
				var v75: map<seq<bool>, array<D3>> := map[[v43, fm12(p1, v41, globalState)] := if (v43) then v74 else v74];
				var v76: seq<bool> := [v43, v43];
				globalState.f16, v45[safeIndex(73, v45.Length)], globalState.f12, globalState.f16, v75 := p1 <= v45[safeIndex(73, v45.Length)], |(seq(abs(-0xcf), i6  => (v41)))|, -(-855 - p1), fm12(|"xsivqroht"|, v41, globalState), v75[v76 := v74] + v75;
				var v77: map<bool, int> := map[v43 := |v53|];
				globalState.f6 := (if (v43 in v77) then v77[v43] else p1) - (if (v43) then v45[safeIndex(73, v45.Length)] else p1);
				globalState.f16 := v43;
				p0[safeIndex(191, p0.Length)] := v43;
				p0[safeIndex(191, p0.Length)] := v43;
			}
			
			var v78: seq<set<int>> := [v56];
			v56 := (DC18(v56).cf22 - v78[safeIndex(-p1, |v78|)]) * DC18(v56).cf22;
		}
		
		var v79: T0 := new C0(p1, p0);
		var v80 := DC13(p0);
		var v81: multiset<array<bool>> := multiset{v80.cf16, p0, p0, p0, p0};
		var v82: map<T0, int> := map[v79 := fm16(v43, "vg", p1, |v81|, globalState)];
		globalState.f4, v43, globalState.f12 := |v82|, (p1 - p1) !in multiset{p1, p1, p1}, p1;
		var v83: set<char> := {v42[safeIndex(p1, |v42|)], v41};
		r0 := v83;
		var v84: map<bool, int> := map[v43 := p1];
		r1 := v84 + v84;
	}
}

class C3 extends T0 {
	const f23 : int
	const f24 : int
	constructor (f23 : int, f24 : int) {
		this.f23 := f23;
		this.f24 := f24;
	}
	
	method m0(p0: set<int>, p1: int, globalState: GlobalState) returns (r0: int) {
		for i0 := f23 to f23 {
			var v0 := true;
			globalState.f8 := v0;
			r0 := p1;
			var v1: array<multiset<seq<int>>> := new multiset<seq<int>>[2](i1 => multiset{[-f24, i0], [f24], [f23]});
			var v2: seq<int> := [i0];
			var v3 := "yvvelgn";
			var v4 := DC0('o');
			var v5: multiset<seq<int>> := multiset{v2, [|map[v3[safeIndex(|[v0]|, |v3|) := v4.cf0] := f24]|]};
			v1[safeIndex(693, v1.Length)] := v5;
			var v6: seq<bool> := [v0, v0];
			var v7: map<bool, seq<bool>> := map[v0 := v6];
			var v8: map<bool, string> := map[v0 := "cy"];
			var v9: multiset<string> := multiset{if (v0 in v8) then v8[v0] else v3, v3, "plt"};
			var v10: multiset<int> := multiset{|(if (v0 in v7) then v7[v0] else v6)|, f23, |v9|};
			var v11: map<bool, multiset<seq<int>>> := map[v0 := fm10(|v10|, p1, {i0}, !v0, globalState)];
			v1[safeIndex(693, v1.Length)] := if (v0 in v11) then v11[v0] else v5;
			if (--f23 >= -0x30c) {
				var v12: array<D2> := new D2[23](i2 => DC2([0x25c]));
				v12 := v12;
				var v13: array<int> := new int[21](i3 => safeDivisionInt(i3, f24));
				v13 := v13;
				globalState.f6 := f24;
				var v14: array<char> := new char[21];
				v14 := if (v0) then v14 else v14;
				var v15 := 'b';
				var v16: map<int, int> := map[f23 := |p0|];
				v15, globalState.f12 := v15, if (v0) then 0x3b2 else |v16| * p1;
			} else {
				var v17: seq<string> := [v3];
				var v18: C2 := new C2(v17);
				var v19: array<bool> := new bool[6];
				var v20: map<C2, array<bool>> := map[v18 := v19];
				var v21 := new C1(if (v18 in v20) then v20[v18] else v19, f23, v0);
				globalState.f8 := f23 !in multiset{|v3|};
				globalState.f8 := v0;
				var v22 := new C0(p1, v21.f26);
				v0, globalState.f16 := v0, v0;
			}
			
		}
		var v23 := true;
		var v24: map<bool, int> := map[v23 := p1];
		globalState.f12 := f23 + -(if (v23 in v24) then v24[v23] else f24);
		var i4 := 0;
		while (!v23)
			decreases 100 - i4
		{
			if (i4 >= 100) {
				break;
			}
			
			i4 := i4 + 1;
			globalState.f6 := 0x274 + f23;
			var v25 := 'g';
			var v26: map<char, int> := map[v25 := p1];
			var v28: multiset<char> := multiset{v25, v25};
			var v29: set<map<char, int>> := {v26, map v27 : char | v27 in v28[v25 := abs(-f24)] :: (v27) := (|map[v23 := v24]|)};
			var v30 := "xs";
			var v31: map<map<char, int>, int> := map[v26 := -|v30|];
			var v34: map<char, bool> := map[v25 := v23];
			var v35: map<int, map<char, bool>> := map[|(map v33 : int | (0x30c <= v33) && (v33 < 0x395) :: (v33 + f24) := (v23))| := v34];
			v29 := (set v32 : map<char, int> | v32 in v31 :: (v32)) * (set v36 : map<char, int> | v36 in multiset{map[v25 := |v35|]} :: (v36));
			var v37: seq<string> := ["nhkelwm"];
			var v38 := DC5(v30);
			var v39: array<string> := new seq<char>[18] [seq(abs(0x68), i5  => (v25)), (v37[safeIndex(f23, |v37|)])[safeIndex(f24, |v37[safeIndex(f23, |v37|)]|) := v25], v30, seq(abs(-0x29), i6  => (v30[safeIndex(f24, |v30|)])), v30, v30, v30, v30, v30, v30, v30, "ye" + v30, v30, (seq(abs(662), i7  => (v25))) + v30, v30, v30, if (true) then v30 else v38.cf4, v30 + (seq(abs(331), i8  => (v25)))];
			v39[safeIndex(518, v39.Length)] := v30;
			var v40: seq<bool> := [v23, v23, v23];
			v39[safeIndex(518, v39.Length)] := (seq(abs(0x24b), i9  => (v25)))[safeIndex(-|v40|, |(seq(abs(0x24b), i9  => (v25)))|) := v25];
			var v41 := new C2(v37);
		}
		globalState.f6 := |p0|;
		var v42: array<D3> := new D3[17](i10 => DC7(v23, v23, v23));
		var v43: map<array<D3>, bool> := map[v42 := v23];
		v43, globalState.f16 := v43, v23;
		globalState.f12 := f24;
		var v44: set<string> := {"uaihx"};
		r0 := -((if (v23) then f24 else f24) * |(v44 - v44)|);
	}
	method m7(p0: array<char>, p1: int, globalState: GlobalState) returns (r0: bool) {
		var v0: array<string> := new string[3];
		var v1 := "gkwh";
		v0[safeIndex(416, v0.Length)] := v1 + v1[safeIndex(182, |v1|) := 'p'];
		v0[safeIndex(416, v0.Length)] := v1;
		var v2 := true;
		var v3: multiset<bool> := multiset{v2, !true};
		var v4: map<bool, bool> := map[v2 := v2];
		var v5: map<int, bool> := map[|(multiset{p1})[f23 := abs(|v3|)]| := if (v2 in v4) then v4[v2] else v2];
		for i0 := if (!(if (p1 in v5) then v5[p1] else v2)) then p1 else f23 to -p1 {
			var v6: array<array<int>> := new array<int>[29];
			var v7: array<int> := new int[21];
			v6[safeIndex(250, v6.Length)] := v7;
			v6[safeIndex(250, v6.Length)] := v7;
			var v8: array<bool> := new bool[4];
			var v9 := DC21(v8, f23);
			var v10: T0 := new C0(f24, (v9.(cf27 := f24)).cf26);
			var v11: map<set<T0>, int> := map[{v10} := i0];
			var v12: set<T0> := {v10, v10};
			var v13: map<int, array<bool>> := map[if (v12 in v11) then v11[v12] else f23 := v8];
			v13 := v13[f24 := v8];
			globalState.f4 := fm16(false <==> v2, v0[safeIndex(416, v0.Length)], safeModuloInt(588, p1), p1, globalState);
			globalState.f4 := 0x1d2;
		}
		var v14: array<bool> := new bool[19];
		forall i1 | 0 <= i1 < v14.Length {
			v14[i1] := (f23 + p1) <= 0x1e1;
		}
		if (v2) {
			v14[safeIndex(234, v14.Length)] := v2;
			var v15 := 'q';
			v14[safeIndex(234, v14.Length)] := !(f24 > p1) && (v15 !in v1);
			var v16: array<bool> := new bool[25](i2 => v2);
			var v17: map<bool, char> := map[v2 := 'k'];
			var v18: seq<int> := [|v17|, f24, f23];
			var v19 := new C1(v16, f23, !(v18 == v18));
			v2 := v2;
			var v20 := DC11();
			var v21 := DC13(v16);
			var v22: map<D4, D5> := map[v20 := v21];
			v22 := v22[if (v14[safeIndex(234, v14.Length)]) then fm26(0x2e0, (v1[safeIndex(f24, |v1|) := v15])[safeIndex(f23, |v1[safeIndex(f24, |v1|) := v15]|) := v15], globalState) else DC11() := DC13(v16)];
			var v23: seq<bool> := [v2, v14[safeIndex(234, v14.Length)], !v14[safeIndex(234, v14.Length)]];
			var v24 := v19.m0({|v23|}, f23, globalState);
		} else {
			var v25: seq<bool> := [v2];
			v5 := v5[f24 := v25[safeIndex(fm16(v2, "ge", f24, p1, globalState), |v25|)]];
			var v27: map<int, int> := map[f23 := 0x1d5];
			var v28: array<int> := new int[28] [f23, -p1, 0x115, f24, f24, f23, f23, f24, p1, f24, 409, f24, p1, f24, |[v2, v2]|, f23, f23, p1, |[v2, v2]|, f24, |v25|, f24, |(map v26 : int | v26 in v27 :: (v26 - 0x2f9) := (v2))|, p1, f24, f24, f24, --f23];
			var v29: seq<array<int>> := [v28, v28];
			var v30: map<bool, seq<array<int>>> := map[if (v2) then v2 else !v2 := v29];
			v29 := if ((f23 <= |v27|) in v30) then v30[f23 <= |v27|] else [v28, v28, v28];
			globalState.f16 := (if (v2) then v25 else [v2]) == v25;
			v4 := v4[v2 := !v2 <== v2];
			v14[safeIndex(784, v14.Length)] := v2;
			var v31 := DC15(|v25|);
			v14[safeIndex(784, v14.Length)], globalState.f8, v31 := f24 == (p1 - fm16(v2, v1, p1, p1, globalState)), DC6(p1, v2, !v2, p1, !v2).cf7, v31;
		}
		
		var i3 := 0;
		while (v2)
			decreases 100 - i3
		{
			if (i3 >= 100) {
				break;
			}
			
			i3 := i3 + 1;
			globalState.f12 := f23;
			globalState.f6 := f24 * (if (v2) then f24 else f23);
			var v32 := DC15(f24);
			v32 := v32;
			v14 := v14;
		}
		var v33 := 'a';
		v33 := v0[safeIndex(416, v0.Length)][safeIndex(f23, |v0[safeIndex(416, v0.Length)]|)];
		var v34: multiset<char> := multiset{v33, 'f'};
		var v35: set<int> := {p1, p1};
		var v36: map<set<int>, string> := map[v35 := v0[safeIndex(416, v0.Length)]];
		r0 := if (DC6(if (v33 in v34) then v34[v33] else f24, !v2, v2, f23, v2).cf7) then fm12(|v36[v35 := v1]|, v33, globalState) <== false else v2;
	}
}

class C4 extends T0, T1 {
	const f21 : int
	const f22 : array<seq<int>>
	constructor (f21 : int, f22 : array<seq<int>>, f17 : int, f18 : bool) {
		this.f21 := f21;
		this.f22 := f22;
		this.f17 := f17;
		this.f18 := f18;
	}
	
	function fm1(p0: int, p1: int, p2: int, p3: bool, globalState: GlobalState): bool {
		true
	}
	method m0(p0: set<int>, p1: int, globalState: GlobalState) returns (r0: int) {
		var v0: seq<int> := [fm9(f18, f18, false, globalState)];
		var v1 := DC2(v0);
		var v2: array<int> := new int[7] [p1, |v0|, f17, p1, p1, |v1.cf2|, 0x1ef];
		v2[safeIndex(750, v2.Length)] := 962;
		var v3 := "oxbxsm";
		var v4 := 'm';
		v2[safeIndex(750, v2.Length)] := |{v3[safeIndex(f17, |v3|) := v4], v3 + v3, "xyuexx"}|;
		var v5: array<bool> := new bool[21];
		forall i0 | 0 <= i0 < v5.Length {
			v5[i0] := f18 || f18;
		}
		var v6: map<bool, seq<int>> := map[f18 := v0];
		var v7: map<int, D2> := map[f21 := v1];
		var v8: map<int, array<int>> := map[|(if (f18 in v6) then v6[f18] else [p1, |v7|])| := v2];
		r0, v2, globalState.f16 := safeModuloInt(v2[safeIndex(750, v2.Length)], safeDivisionInt(fm9(f18, f18, f18, globalState), p1)), if (p1 in v8) then v8[p1] else v2, (f17 == -f21) || f18;
		var v9: seq<bool> := [f18];
		var v10: map<bool, bool> := map[-f21 <= f21 := -f17 < |v9|];
		v10 := v10;
		if (f18) {
			var v11 := DC1(f18);
			globalState.f16, v2[safeIndex(750, v2.Length)], v11 := v11.cf1, f21 + p1, v11;
			var v12: seq<string> := [v3, v3, v3, v3];
			var v13 := new C1(v5, |v12[safeIndex(p1, |v12|)]|, f18);
			v2 := v2;
			globalState.f16 := f18 || f18;
			var v14 := DC22(v3, false, f17 * |v0|);
			var v15 := DC5(v3);
			var v16 := DC15(|(seq(abs(345), i1  => (v2[safeIndex(750, v2.Length)])))|);
			var v17: seq<D5> := [v16, v16];
			v14 := fm27(v9, v15, 0x2bc, v17, globalState);
		} else {
			var v18: map<bool, char> := map[f18 := v4];
			var v19: map<int, char> := map[p1 := v4];
			var v20: array<char> := new char[21] [v4, v4, v4, if (true) then v4 else v4, v4, v4, fm20(f17, 'k', f21, fm9(f18, f18, true, globalState), globalState), v4, v4, v4, if (f18 in v18) then v18[f18] else v4, v4, v4, v4, if (f18) then v4 else v4, v4, 'a', 'f', v4, v4, if (f17 in v19) then v19[f17] else v4];
			v20[safeIndex(89, v20.Length)] := v4;
			v20[safeIndex(89, v20.Length)] := v3[safeIndex(v2[safeIndex(750, v2.Length)], |v3|)];
			v2[safeIndex(750, v2.Length)] := f17;
			var v21: multiset<int> := multiset{p1};
			globalState.f6 := safeDivisionInt(|v21|, v2[safeIndex(750, v2.Length)] + |[v4]|);
			var v22: map<bool, string> := map[true in v9 := "dxqowltvq" + "p"];
			v22 := (map[f18 := v3])[v9[safeIndex(|v3|, |v9|)] := v3] + map[f18 := "jhc"];
			if (f18) {
				r0 := |(v0 + v0)|;
				r0 := fm16(f18, v3, 0x85, |multiset(v9)| - -f17, globalState);
				var v23: multiset<string> := multiset{v3};
				var v24: set<char> := {v20[safeIndex(89, v20.Length)]};
				var v25: map<int, set<char>> := map[p1 := v24];
				globalState.f12, v3, globalState.f16, v23, globalState.f6 := v2[safeIndex(750, v2.Length)] * v2[safeIndex(750, v2.Length)], "ewgx" + v3, !(v24 != (if (v2[safeIndex(750, v2.Length)] in v25) then v25[v2[safeIndex(750, v2.Length)]] else set v26 : char | v26 in v3 :: (v26))), multiset{v3, v3, v3, ("inmkffe")[safeIndex(p1, |"inmkffe"|) := v4] + v3}, fm16(f17 < v2[safeIndex(750, v2.Length)], v3 + v3, -0x32c, f17, globalState);
				globalState.f4 := f17;
				v3 := v3;
			} else {
				var v27: map<int, string> := map[f17 := v3];
				var v28 := new C1(v5, |v27|, f18);
				v9 := [f18, f18] + [f18];
				var v29: array<multiset<int>> := new multiset<int>[10];
				v29[safeIndex(547, v29.Length)] := v21;
				var v30 := DC9(DC7(!f18, !f18, v9[safeIndex(p1, |v9|)]));
				var v31: multiset<array<int>> := multiset{v2};
				globalState.f6, globalState.f8, globalState.f4, v29[safeIndex(547, v29.Length)], v30 := |((v31[v2 := abs(p1)] - v31) - v31)|, !!(("phx")[safeIndex(|v3|, |"phx"|) := v20[safeIndex(89, v20.Length)]] != v3), p1, DC24(v21).cf32, v30;
				globalState.f16 := f18 || v9[safeIndex(f21, |v9|)];
				r0 := f21 * p1;
			}
			
		}
		
		globalState.f12 := fm16(f18, v3, p1, |v0|, globalState);
		r0 := p1;
	}
}

class C5 extends T0 {
	constructor () {
	}
	
	function fm7(p0: map<map<bool, int>, seq<char>>, p1: bool, p2: D1, p3: int, globalState: GlobalState): bool {
		(false in multiset{false}) <==> true
	}
	method m0(p0: set<int>, p1: int, globalState: GlobalState) returns (r0: int) {
		var v0: map<int, bool> := map[p1 := false];
		var v1 := false;
		var v2 := "xedwnp";
		var v3: map<int, map<bool, string>> := map[p1 := map[v1 := v2]];
		if (safeModuloInt(|v0|, |(if (p1 in v3) then v3[p1] else fm8(globalState))|) != p1) {
			var v4 := 'y';
			var v5 := DC0(v4);
			match (v5.(cf0 := v4)) {
				case DC0(cf0) =>
					var v6: array<bool> := new bool[20];
					v6 := v6;
					var v7: seq<string> := ["rnrwbmdy"];
					var v8 := new C2(v7);
					v2 := v2 + v2;
					var v9, v10 := v8.m8(v6, 778, globalState);
			}
			
			var v11: array<bool> := new bool[28];
			var v12 := new C1(v11, safeModuloInt(p1, 0x25d), v1);
			if (|"hpxvh"| > fm16(v1, v2, -0x1e0, p1, globalState)) {
				globalState.f16 := v1;
				globalState.f6 := -p1;
				v0 := v0[-p1 := v1];
				r0 := p1;
				r0 := 0x23e;
			} else {
				var v13: seq<bool> := [v1, v1];
				var v14: map<bool, bool> := map[v1 := v13[safeIndex(p1, |v13|)]];
				var v15: seq<bool> := [if (v1 in v14) then v14[v1] else v1];
				var v16: multiset<bool> := multiset{false, false, v1, v13[safeIndex(p1, |v13|)]};
				var v17: map<int, int> := map[|fm28(v1, globalState)| := |v16|];
				var v18: array<string> := new string[1](i0 => v2);
				var v19: map<map<int, int>, array<string>> := map[v17 := v18];
				v19 := v19[v17 + v17 := v18];
				var v20 := DC24(fm29(globalState) * multiset{DC22(seq(abs(0x1e9), i1  => (v4)), v1, p1).cf30});
				v20 := v20;
				var v21: map<char, string> := map['x' := "snnetaopo"];
				var v22: array<int> := new int[15](i2 => safeDivisionInt(i2, -p1));
				var v23: map<array<int>, string> := map[v22 := v2];
				v2 := if ('m' in v21) then v21['m'] else if (v22 in v23) then v23[v22] else v2;
				var v24: array<seq<int>> := new seq<int>[17];
				var v25: map<bool, int> := map[false := p1];
				var v26: map<map<bool, int>, seq<char>> := map[v25 := (seq(abs(0x2dd), i3  => (v4)))[safeIndex(p1, |(seq(abs(0x2dd), i3  => (v4)))|) := v4]];
				var v27 := DC1(v1);
				var v28 := new C4(safeDivisionInt(p1, -p1), v24, fm9(v1, v1, fm7(v26, v1, v27, p1, globalState), globalState), v1);
				globalState.f4 := p1;
			}
			
			if (!(-safeDivisionInt(p1, |multiset{v1, v1}|) < p1)) {
				var v29: seq<int> := [p1];
				var v30: array<int> := new int[1] [p1];
				var v31: map<seq<int>, array<int>> := map[v29 + [-p1] := v30];
				v31 := v31[v29 := v30];
				globalState.f4 := fm16(false, seq(abs(806), i4  => (v4)), safeDivisionInt(0x232, p1), p1 - -685, globalState);
				v2 := v2 + v2;
				var v32 := DC16(DC13(v11));
				v32 := v32;
				var v33: array<seq<int>> := new seq<int>[11];
				var v34 := new C4(p1 + |v2|, v33, p1, v0 == v0);
			} else {
				globalState.f12 := p1 - p1;
				globalState.f12 := fm9(v1, p1 > p1, v1, globalState);
				var v35: array<int> := new int[22];
				v35 := v35;
				globalState.f12 := -0x12f;
				var v36: seq<string> := [fm17(globalState), v2, v2, v2, fm17(globalState)];
				var v37: C2 := new C2(v36);
				v37 := v37;
			}
			
			v12.f26[safeIndex(751, v12.f26.Length)] := v1;
			var v38: seq<string> := [v2];
			var v39: C2 := new C2(v38);
			var v40: map<bool, C2> := map[v1 := v39];
			var v41: seq<map<bool, C2>> := [v40[v1 := v39]];
			var v42: map<seq<map<bool, C2>>, bool> := map[v41 := v1];
			var v43: seq<int> := [p1];
			v12.f26[safeIndex(751, v12.f26.Length)] := if (v41 in v42) then v42[v41] else v43 != v43;
		} else {
			var v44: array<int> := new int[3](i5 => safeDivisionInt(i5, 921));
			var v45: multiset<array<int>> := multiset{v44};
			var v46: map<string, multiset<array<int>>> := map[v2 := v45 - v45];
			v46 := v46[fm19(p1, p1, globalState) := v45];
			globalState.f8 := false;
			globalState.f8 := p1 == --p1;
			var v47 := DC11();
			match (v47) {
				case DC11() =>
					var v48: array<D3> := new D3[2](i6 => DC9(DC5(v2)));
					v48 := v48;
					v1 := v1;
					v44[safeIndex(41, v44.Length)] := p1;
					var v49: map<int, int> := map[p1 := p1];
					var v50 := DC17(v49);
					v2, v44[safeIndex(41, v44.Length)], v50 := "bic", safeModuloInt(680, p1), v50;
					var v51: map<bool, int> := map[true := p1];
					var v52 := DC1(v1);
					var v53: seq<bool> := [v1, v1, fm7(map[v51 := v2], v1, v52, -0x319, globalState), v1, v1];
					var v54: multiset<bool> := multiset{v1};
					var v55: seq<int> := [|(multiset(v53) + v54)|, if (!v1 in v51) then v51[!v1] else 0xea, p1];
					v55 := v55 + (seq(abs(0x17b), i7  => (v44[safeIndex(41, v44.Length)])));
				case DC12(cf15) =>
					var v56, v57 := m6(globalState);
					var v58: set<bool> := {v1, cf15, cf15};
					var v59: map<int, int> := map[p1 := |v58|];
					var v60: multiset<map<int, int>> := multiset{v59[p1 := p1]};
					var v61: seq<map<int, int>> := [v59];
					v60 := (multiset{v59} + multiset(v61)) * (v60 * v60);
					var v62: array<bool> := new bool[5];
					var v63: map<array<int>, bool> := map[v44 := cf15];
					var v64: C1 := new C1(v62, -|v63|, v1);
					var v65: array<T0> := new T0[14];
					var v66: map<map<int, bool>, array<T0>> := map[v0 := DC27(v65).cf40];
					var v67: seq<bool> := [v1];
					var v68: seq<int> := [p1];
					globalState.f8, v64, v66, globalState.f16, v67 := true <== (p1 !in v68), if (false) then v64 else v64, v66, cf15, v67 + v67;
					var v69: seq<seq<int>> := [v68, v68];
					var v70: map<seq<seq<int>>, int> := map[v69 := p1];
					v70 := v70[v69 := 606];
				case DC10(cf14) =>
					globalState.f4 := p1 * p1;
					globalState.f16 := false;
					var v71: array<bool> := new bool[15](i8 => v1);
					var v72: seq<string> := [v2];
					var v73: set<int> := {|v72|, safeModuloInt(|"odbyf"|, fm16(v1, v2, p1, p1, globalState))};
					v71, globalState.f6, r0, v73, v44 := cf14[safeIndex(p1, |cf14|)], p1, if (v1) then p1 else p1, p0, v44;
					var v74: map<bool, bool> := map[v1 := v1];
					v74 := map[v1 := v1] + v74;
			}
			
			var v75 := 'e';
			globalState.f8 := p1 >= |(if (v1) then "fhpds" else "q")[safeIndex(p1, |(if (v1) then "fhpds" else "q")|) := v75]|;
		}
		
		if (v1) {
			var v76 := DC7(!v1, v1, v1);
			var v77 := DC9(v76);
			var v78: seq<bool> := [v1, DC29(v1, v77).cf42];
			var v79: map<int, string> := map[p1 := seq(abs(0x363), i9  => ('f'))];
			var v80: map<bool, map<int, string>> := map[v78[safeIndex(0x18c, |v78|)] := v79];
			var v81: map<bool, int> := map[v1 := |(if (v1 in v80) then v80[v1] else v79)|];
			r0 := if (v1 ==> v1) then |v81| else p1;
			var v82 := DC15(p1);
			var v83 := DC16(v82);
			var v84: map<int, D5> := map[p1 := v83];
			globalState.f6 := p1 - |v84|;
			v1 := v1;
			globalState.f12 := p1;
			match (DC16(v82)) {
				case DC14(cf17, cf18) =>
					var v85: array<int> := new int[16](i10 => safeDivisionInt(i10, p1));
					var v86: map<array<int>, int> := map[v85 := p1];
					v0 := v0[|(v86 + v86)| := v2 != v2];
					globalState.f4 := if (p1 < p1) then p1 else p1;
					v78 := v78;
					globalState.f12 := p1;
				case DC15(cf19) =>
					var v87: array<string> := new string[16](i11 => v2);
					v87[safeIndex(365, v87.Length)] := v2 + (seq(abs(0x33), i12  => ('d')));
					v87[safeIndex(365, v87.Length)] := "biqe";
					var v88: multiset<int> := multiset{p1};
					var v89: seq<int> := [|v88|];
					var v90 := 'm';
					var v91: array<bool> := new bool[23];
					var v92: T0 := new C1(v91, |v87[safeIndex(365, v87.Length)]|, v1);
					var v93: map<int, T0> := map[|v78[safeIndex(|v89|, |v78|) := v1]| := v92];
					var v94: array<seq<int>> := new seq<int>[2] [v89, v89];
					var v95: C4 := new C4(|v88|, v94, 0x22a, v1);
					var v96: map<int, C4> := map[|v93| := v95];
					var v97: map<bool, map<int, C4>> := map[!v1 := v96];
					var v98: array<int> := new int[16] [p1, p1, p1, p1, p1, safeDivisionInt(|fm15(fm12(0xda, v90, globalState), p1, multiset(v78), globalState)|, p1), 504, cf19, cf19, p1, cf19, fm16(!!v1, v87[safeIndex(365, v87.Length)], p1, p1, globalState), p1 * cf19, p1, cf19, |(if (v1 in v97) then v97[v1] else v96)|];
					v98[safeIndex(2, v98.Length)] := |map[v1 := cf19]|;
					v89, globalState.f16, globalState.f16, r0, v98[safeIndex(2, v98.Length)] := (v89 + v89)[safeIndex(v95.f21, |(v89 + v89)|) := cf19] + v89, v1, !v1, if (v1) then safeDivisionInt(0x210, v95.f21) else -p1, cf19 + v95.f21;
					var v99: map<bool, D7> := map[v1 := DC19(v0, 842)];
					var v100 := DC19(map[|v88| := true], cf19);
					globalState.f16, r0, v91, globalState.f8, v99 := v1, v95.f21, v91, v1 in v78, v99[v1 := v100] + v99;
					globalState.f16 := v1;
				case DC13(cf16) =>
					var v101: seq<int> := [p1];
					var v102 := DC2(v101);
					var v103 := DC4(v102);
					v103 := v103;
					globalState.f16 := v1;
					v1 := v1;
					var v104 := 'h';
					var v105: map<char, int> := map[v104 := |v101|];
					globalState.f6 := if (v1) then if (v104 in v105) then v105[v104] else p1 else 0x207;
				case DC16(cf20) =>
					globalState.f12 := safeModuloInt(fm16(v1, v2, |(map v106 : int | (0x3df <= v106) && (v106 < 0x357) :: (v106 + p1) := (p1))|, |[v1]|, globalState), p1);
					var v107: array<D10> := new D10[9];
					var v108: map<int, array<D10>> := map[p1 := v107];
					v108 := v108;
					var v109 := new C3(p1, p1);
					var v110: seq<int> := [-0x3b5];
					var v111: array<bool> := new bool[28](i13 => v1);
					var v112 := DC21(v111, v109.f24);
					v110 := [-|v78|, v109.f24, v112.cf27, v109.f23] + ((seq(abs(326), i14  => (|v2|))) + v110);
			}
			
		} else {
			var v113: multiset<bool> := multiset{false};
			var v114: map<seq<bool>, int> := map[fm15(v1, p1, v113, globalState) := |v0|];
			var v115: seq<int> := [if ([v1] in v114) then v114[[v1]] else p1, p1, p1];
			var v116: array<int> := new int[12] [-840, p1 * -|fm19(p1, p1, globalState)|, |"gkdmge"|, p1, safeDivisionInt(-p1, -p1), p1, -p1, |v115|, p1, |fm15(v1, -p1, v113, globalState)|, p1, p1];
			v116[safeIndex(447, v116.Length)] := |v2|;
			var v117: set<bool> := {v1};
			var v118: map<set<bool>, int> := map[v117 := p1];
			v116[safeIndex(447, v116.Length)] := |v118| + p1;
			var v119 := 'k';
			var v120: array<bool> := new bool[29] [v1, v1, v1, false, v1, false, v1, v1, v1, v1, false, v1, v1, v1, v1, v1, v1, !v1, v1, v1, v1, v1, v1, v1, false, v1, !v1, v1, v1];
			var v121: map<char, array<bool>> := map[v119 := if (v1) then v120 else v120];
			v121 := v121;
			v116[safeIndex(447, v116.Length)] := -safeModuloInt(-safeDivisionInt(p1, |multiset(v115)|), v116[safeIndex(447, v116.Length)]);
			var v122: multiset<array<bool>> := multiset{v120};
			var v123: map<multiset<array<bool>>, char> := map[v122 + v122 := v2[safeIndex(|v2|, |v2|)]];
			v123 := v123[v122 * v122 := v119];
			globalState.f12 := -11;
		}
		
		var v124: array<int> := new int[13];
		v124[safeIndex(940, v124.Length)] := p1;
		v124[safeIndex(429, v124.Length)] := DC22("uopj", v1, p1).cf30;
		globalState.f8, globalState.f6, v124[safeIndex(940, v124.Length)], v124[safeIndex(429, v124.Length)] := v1, |v2|, p1, (if (v1) then p1 else p1) - p1;
		globalState.f16 := v124[safeIndex(940, v124.Length)] < -p1;
		var v125: multiset<int> := multiset{p1};
		var v126: set<bool> := {v1};
		var v127: map<multiset<int>, int> := map[v125 := |[--v124[safeIndex(940, v124.Length)], |v126|]|];
		globalState.f8 := p1 > -(if (v125 in v127) then v127[v125] else 808);
		var i15 := 0;
		while (true)
			decreases 100 - i15
		{
			if (i15 >= 100) {
				break;
			}
			
			i15 := i15 + 1;
			var v128: map<string, int> := map[v2 := v124[safeIndex(940, v124.Length)]];
			var v129: multiset<bool> := multiset{v1, v124[safeIndex(940, v124.Length)] >= p1, v1};
			v128, v129 := map[v2 := p1], v129;
			var v130 := 'g';
			var v131: map<bool, bool> := map[v1 := fm12(p1, v130, globalState)];
			var v132: map<bool, int> := map[v1 := p1];
			var v133: map<map<bool, int>, seq<char>> := map[v132 := v2];
			var v134 := DC1(v1);
			v131 := v131[fm7(v133, v1, v134, v124[safeIndex(940, v124.Length)], globalState) := true];
			v0 := v0;
			var v135: array<bool> := new bool[14] [v1, v1, v1, v1, fm7(v133, !v1, v134, p1, globalState), v1, true, v130 !in v2, 800 > |fm13(v124[safeIndex(940, v124.Length)], p1, v124[safeIndex(940, v124.Length)], v124[safeIndex(940, v124.Length)], globalState)|, true <== v1, !v1, v1, v1, v1];
			var v136 := DC11();
			var v137: array<D4> := new D4[2] [v136, v136];
			var v138 := DC20(v137);
			var v139: seq<D8> := [v138];
			var v140 := DC25(v139, v1);
			v135[safeIndex(935, v135.Length)] := v140.cf34;
			v135[safeIndex(935, v135.Length)] := v1 <== (-v124[safeIndex(940, v124.Length)] <= p1);
		}
		r0 := p1 * (fm9(v1, v1, !v1, globalState) - |v2|);
	}
	method m5(p0: string, p1: array<array<int>>, globalState: GlobalState) returns (r0: int, r1: seq<bool>, r2: int, r3: bool) {
		var v0 := 352;
		var v1 := true;
		var v2: map<bool, bool> := map[v1 := v1];
		var v3: map<bool, int> := map[v1 := v0];
		var v4: map<map<bool, int>, seq<char>> := map[v3 := p0];
		var v5 := DC1(v1);
		var v6: seq<int> := [v0, safeDivisionInt(|v2|, v0), safeDivisionInt(v0, v0), safeDivisionInt(v0, fm9(v1, v1, fm7(v4, v1, v5, v0, globalState), globalState))];
		v6 := seq(abs(0x20c), i0  => (|p0| - v0));
		if (if (v1) then false else v1) {
			var v7: array<int> := new int[3] [v0 * v0, v0, -v0 * |multiset(v6)|];
			var v8: map<int, bool> := map[v0 := v1];
			v7[safeIndex(196, v7.Length)] := |(v8 + v8)|;
			var v9: seq<bool> := [v1];
			v7[safeIndex(196, v7.Length)] := safeModuloInt(fm9(false, v1, v9[safeIndex(v0, |v9|)], globalState), fm16(v1, p0, v0, v0, globalState));
			var v10: map<int, int> := map[|(seq(abs(83), i1  => (445)))| := -v0];
			v7[safeIndex(196, v7.Length)], globalState.f4 := -v7[safeIndex(196, v7.Length)], -(if (v0 in v10) then v10[v0] else v7[safeIndex(196, v7.Length)]) + v7[safeIndex(196, v7.Length)];
			var v11 := DC6(v0, v1, v1, |v9|, true);
			var v12 := DC9(v11);
			var v13 := DC29(v1, v12);
			var v14: set<bool> := {if (v1) then v1 else v13.cf42, v1, v1};
			var v15: seq<set<bool>> := [v14, v14];
			v14 := if (v0 > v0) then v15[safeIndex(0x14d, |v15|)] else v14;
			var v16: array<array<bool>> := new array<bool>[10];
			var v17 := DC6(v7[safeIndex(196, v7.Length)], true, v1, v7[safeIndex(196, v7.Length)], v1);
			var v18 := DC7(v1, false, !v1);
			var v19: array<bool> := new bool[22] [v17.cf9, v1, true, v1, v1, v1, v1, v18.cf10, v1, false, v1, v1, true, v1, v1, !v1, true, v1, v1, v1, v1, v1];
			v16[safeIndex(760, v16.Length)] := v19;
			v16[safeIndex(760, v16.Length)] := v19;
			v1 := v1;
		} else {
			var v21: array<map<string, int>> := new map<string, int>[5](i2 => map v20 : string | v20 in multiset{p0, "bbkjim"} :: (v20) := (v0));
			v21[safeIndex(367, v21.Length)] := fm30(false, fm28(v1, globalState), map[v1 := true], false, globalState) + (map v22 : string | v22 in {p0} :: (v22) := (v0));
			var v23: set<bool> := {v1};
			v21[safeIndex(367, v21.Length)], v0, v1, r0, r3 := map["x" + "x" := -(v0 * |p0|)], v6[safeIndex(v0, |v6|)], true ==> v1, 0x342, v0 <= |v23|;
			var v24 := 'c';
			if (v24 !in p0) {
				var v25: array<bool> := new bool[12](i3 => v1);
				var v26 := DC21(v25, v0);
				var v27: multiset<bool> := multiset{fm7(v4, v1, v5, -v0, globalState)};
				var v28: C1 := new C1(v25, -779, false);
				var v29: map<C1, bool> := map[v28 := if (v1 in v2) then v2[v1] else v1];
				var v30: map<bool, map<bool, bool>> := map[v1 := v2];
				var v31: multiset<int> := multiset{v0, v0, v0, -|fm31(v1, globalState)|};
				var v32: map<char, int> := map[v24 := |v31|];
				var v33: set<int> := {if (v24 in v32) then v32[v24] else 0x277};
				var v34: seq<string> := [p0, p0];
				var v35: array<int> := new int[25] [v0, if (v1) then v26.cf27 else v0, v0, v0, safeModuloInt(fm9(v1, v1, v1, globalState), v0), |v27|, v0, v0 * v0, v6[safeIndex(fm16(v1, p0, -|v29|, 0x3b0, globalState), |v6|)], v0, v0, |(if (!false in v30) then v30[!false] else v2[v1 := v1])|, fm16(v1, "qnwj", v0, v0, globalState), v0 + v0, v0, v0, |v31|, |v27|, v0, safeModuloInt(v0, |p0|), v0 - |v33|, v0, safeModuloInt(v0, v0), |(fm32(v1, v1, v0, globalState) + v34)|, -v0];
				v35[safeIndex(617, v35.Length)] := v0 * v0;
				var v36: map<int, bool> := map[|multiset{v1}| := v1 <==> v1];
				v35[safeIndex(617, v35.Length)], v23, globalState.f8 := -|v36|, (v23 + v23) - {v1, v1}, v1;
				globalState.f16 := v1;
				v6 := (if (v1) then DC2(v6) else DC2(v6).(cf2 := v6)).cf2;
				v0 := v0;
				var v37: array<array<bool>> := new array<bool>[4] [v28.f26, v28.f26, v28.f26, v25];
				r3, v37, v24 := v1, v37, v24;
			} else {
				var v38: map<seq<int>, int> := map[v6 := v0];
				globalState.f8 := (v0 != v0) ==> (v0 < |v38|);
				v1 := v1;
				var v39: array<int> := new int[2](i4 => safeDivisionInt(i4, v6[safeIndex(|"v"|, |v6|)]));
				v39[safeIndex(21, v39.Length)] := v0;
				var v40: seq<bool> := [v1, fm12(v0, v24, globalState)];
				var v41: array<bool> := new bool[21] [v1, v1, true, v1, v1, v1, false, v1, v1, v1, v1, v1, v1, v1, v1, v1, v1, v1, v1, v1, v40[safeIndex(v0, |v40|)]];
				var v42: set<array<bool>> := {v41, v41, v41};
				var v43: map<int, bool> := map[0x16c := v1];
				v39[safeIndex(21, v39.Length)] := safeModuloInt(safeDivisionInt(|v42|, v0), |v43|);
				var v44: set<seq<int>> := {v6, v6, seq(abs(672), i5  => (v39[safeIndex(21, v39.Length)])), v6, v6};
				globalState.f16 := v44 != (v44 * {v6, v6, seq(abs(0x258), i6  => (v0))});
				globalState.f4 := v0;
			}
			
			var v45: seq<bool> := [v1, v1];
			r1 := (v45 + v45) + v45;
			r3 := v1;
			r3 := v1;
		}
		
		r2 := v0;
		var v46: map<int, string> := map[-v0 := p0];
		r2 := v0 + |v46|;
		var v47 := DC7(v1, v1, v1);
		var v48: multiset<D3> := multiset{v47};
		var v49: map<int, bool> := map[v0 := v1];
		var v50 := DC19(v49, v0);
		var v51: map<int, int> := map[v0 := 501];
		var v52 := DC6(v0, v1, v1, v0, !!v1);
		var v53: array<bool> := new bool[23] [v1, false <==> v1, |p0| >= (if (v47 in v48) then v48[v47] else v0), v1, |fm33(!true, |v6|, globalState)| >= v0, 0x316 >= v0, v1 ==> v1, -v0 < 0x89, v1, v1, v0 >= v50.cf24, true, if (if (v1 in v2) then v2[v1] else v1) then v1 else v1, v1 ==> v1, v1, v1, v1, |map[v1 := v0]| !in v51, !v1, v52.cf9, false && (if (true in v2) then v2[true] else v1), v1 <==> v1, v1 ==> v1];
		v53[safeIndex(165, v53.Length)] := v6 != v6;
		v53[safeIndex(165, v53.Length)] := v0 > v0;
		var v54: array<int> := new int[23];
		var v55: seq<array<int>> := [v54];
		var v56: seq<string> := ["yfckv"];
		var v57: T0 := new C2(v56);
		var v58 := 'l';
		var v59: map<T0, char> := map[v57 := v58];
		var v61: seq<array<bool>> := [v53];
		var v62: array<int> := new int[18] [-v0, v0, safeDivisionInt(v0, |p0|), 0x16d + |p0|, v0, safeDivisionInt(v0, v0), -v0 - -|p0|, v0, v0, |v55| * v0, v0, -v0, -|v59|, v0, |(map v60 : int | v60 in {|v61|} :: (v60 + v0) := (v0))|, v0, v0, 0x321];
		v62[safeIndex(252, v62.Length)] := v0;
		var v63: multiset<int> := multiset{|"xsqjs"|, fm9(v53[safeIndex(165, v53.Length)], v53[safeIndex(165, v53.Length)], false, globalState)};
		v62[safeIndex(252, v62.Length)] := if ((if (!v53[safeIndex(165, v53.Length)]) then v53[safeIndex(165, v53.Length)] else v1) in v3) then v3[if (!v53[safeIndex(165, v53.Length)]) then v53[safeIndex(165, v53.Length)] else v1] else |v63|;
		r0 := fm9(true, v1, v53[safeIndex(165, v53.Length)], globalState);
		var v64: seq<bool> := [v1, v1];
		r1 := v64 + ([v1, v1, false, !v53[safeIndex(165, v53.Length)], v53[safeIndex(165, v53.Length)]] + v64);
		r2 := fm16(!v1, p0, v0, if (true) then v0 else |v3|, globalState);
		var v65: map<int, char> := map[0x1e9 := 'c'];
		r3 := !!v1 <== fm12(v62[safeIndex(252, v62.Length)], if (|p0| in v65) then v65[|p0|] else 'l', globalState);
	}
	method m6(globalState: GlobalState) returns (r0: D0, r1: array<map<bool, bool>>) {
		var v0 := false;
		for i0 := 471 to fm9(v0, v0, v0, globalState) {
			v0 := v0;
			var v1: map<bool, bool> := map[v0 := v0];
			v1 := v1[v0 := v0];
			var v2: seq<int> := [i0];
			var v3: array<bool> := new bool[11] [v0, !v0, v0, v0, v0, v0, v0, !!fm12(|v2|, 'r', globalState), false, v0, v0];
			var v4 := new C1(v3, i0 - i0, v0);
			var v5: map<map<bool, bool>, int> := map[v1 := i0];
			var v7: map<int, bool> := map[0x3ac := v0];
			var v8: seq<map<bool, bool>> := [DC30(map[v0 := if (|(seq(abs(0xc7), i1  => ('x')))| in v7) then v7[|(seq(abs(0xc7), i1  => ('x')))|] else v0]).cf44, v1, v1, v1, v1];
			var v9 := "mt";
			var v10: seq<map<bool, bool>> := [v8[safeIndex(|v9|, |v8|)]];
			v5 := (map v6 : map<bool, bool> | v6 in v8 :: (v6) := (i0)) + v5;
		}
		var v11 := 737;
		var v12 := "eswfnyouq";
		var v13: array<int> := new int[9] [v11, v11, 75, -fm16(true, v12, v11, -v11, globalState), v11, 0x35e, v11, v11, v11];
		forall i2 | 0 <= i2 < v13.Length {
			v13[i2] := i2 - v11;
		}
		var v14 := 'c';
		globalState.f16 := v14 in v12;
		globalState.f4 := v11 - v11;
		if (v0) {
			var v15: map<map<bool, int>, seq<char>> := map[map[false := v11] := v12];
			var v16 := DC1(v0);
			var v17: map<bool, string> := map[v0 := v12];
			var v18: map<bool, int> := map[fm7(v15, false, v16, |v17|, globalState) := v11];
			var v19: map<map<bool, int>, seq<char>> := map[v18 := v12];
			var v20: seq<bool> := [!fm7(v19, v0, v16, |v12|, globalState), v0];
			globalState.f16 := (v20 == v20) && (!v0 !in v18);
			v11 := safeDivisionInt(v11, v11);
			var v21: array<map<seq<int>, array<int>>> := new map<seq<int>, array<int>>[8];
			var v22: map<seq<int>, array<int>> := map[[v11, |v18|] := v13];
			v21[safeIndex(2, v21.Length)] := v22;
			v21[safeIndex(2, v21.Length)] := v22;
			globalState.f8 := v0;
			var v23: array<bool> := new bool[11] [v0, v0, v0, v0, v0, v0, v0, v0, true, true, false];
			var v24: seq<int> := [v11];
			var v25: seq<seq<int>> := [v24];
			var v26: multiset<seq<int>> := multiset{v24, seq(abs(541), i3  => (v11)), v24, v25[safeIndex(v11, |v25|)]};
			var v27 := new C1(v23, |v26|, v0);
		} else {
			var v28: map<int, char> := map[v11 - v11 := fm20(v11, v14, -0x210, v11, globalState)];
			v28 := v28[v11 := v14];
			var v29: map<bool, bool> := map[true := v0];
			var v30: map<map<bool, bool>, bool> := map[v29 := v0 ==> false];
			v30 := v30 + v30;
			v14 := v14;
			var v31: array<D10> := new D10[3](i4 => DC28(DC22(v12[safeIndex(|"msvgppfb"|, |v12|) := v14], false, v11).cf30));
			var v32: set<array<D10>> := {v31};
			v32 := v32;
			globalState.f8 := !(v14 !in v12);
		}
		
		var v33: seq<int> := [v11];
		globalState.f6 := |([v11] + (v33 + [v11]))|;
		var v34 := DC0(v14);
		r0 := v34;
		var v35: map<bool, bool> := map[v0 := v0];
		var v36: array<map<bool, bool>> := new map<bool, bool>[5] [v35, v35, v35, map[v0 := v0], v35];
		r1 := v36;
	}
}

class C6 extends T0 {
	const f20 : map<bool, string>
	constructor (f20 : map<bool, string>) {
		this.f20 := f20;
	}
	
	function fm5(p0: int, p1: int, p2: bool, globalState: GlobalState): bool {
		false || false
	}
	function fm6(p0: bool, p1: set<seq<int>>, p2: string, globalState: GlobalState): int {
		match DC0('x') {
			case DC0(cf0) => -|"al"|
		}
	}
	method m0(p0: set<int>, p1: int, globalState: GlobalState) returns (r0: int) {
		var v0 := false;
		globalState.f8 := !!((p1 > p1) <== fm5(p1, p1, v0, globalState));
		var v1 := DC1(v0);
		var v2: seq<bool> := [v1.cf1, v0];
		if (!v2[safeIndex(p1, |v2|)]) {
			v2 := v2;
			var v3 := 'i';
			var v4: map<bool, char> := map[v0 := v3];
			v4 := v4[v0 := v3];
			r0 := p1;
			v0, globalState.f12 := v0 <== v0, p1;
			var v5: set<bool> := {!v0 ==> v0, v0};
			v5 := v5;
		} else {
			var v6 := new C5();
			var v7: array<bool> := new bool[1];
			v7[safeIndex(635, v7.Length)] := v0;
			v7[safeIndex(635, v7.Length)] := !(!(p1 > p1) || v0);
			var v8: multiset<int> := multiset{|v2|, p1};
			globalState.f16 := !((if (p1 in v8) then v8[p1] else p1) < (p1 * 0x1bc));
			if (v0) {
				var v9: map<bool, set<int>> := map[v0 in v2 := p0];
				var v10 := "yx";
				var v11: seq<int> := [p1, |v10|];
				var v12: set<seq<int>> := {v11};
				var v13 := 't';
				v9 := v9[fm6(v7[safeIndex(635, v7.Length)], v12, ("uqoo")[safeIndex(p1, |"uqoo"|) := v13], globalState) == |p0| := p0];
				var v14: array<map<string, bool>> := new map<string, bool>[13];
				v14[safeIndex(82, v14.Length)] := map[v10[safeIndex(p1, |v10|) := v13] := v7[safeIndex(635, v7.Length)]];
				var v15: map<string, bool> := map["jjy" := v0];
				v14[safeIndex(82, v14.Length)] := v15;
				globalState.f16 := v0;
				globalState.f8 := v7[safeIndex(635, v7.Length)];
				var v16: seq<array<bool>> := [v7];
				var v17 := DC10(v16);
				var v18: map<multiset<D4>, string> := map[multiset{v17, v17, v17.(cf14 := v16)} := "lsk"];
				var v19: seq<D4> := [v17];
				var v20 := DC33(v19);
				v18 := v18[multiset(v19) * multiset(v20.cf48) := v10];
			} else {
				var v21 := new C0(p1, v7);
				var v22 := 'n';
				v22 := v22;
				var v23 := "jxirw";
				var v24: map<bool, int> := map[v7[safeIndex(635, v7.Length)] := |v23|];
				var v25: map<int, map<bool, int>> := map[v21.f27 := v24];
				v7[safeIndex(635, v7.Length)] := !fm5(|(map[false := p1] + (if (p1 in v25) then v25[p1] else v24))|, p1, v0, globalState);
				v23 := v23 + "a";
				var v26: C3 := new C3(p1 + p1, v21.f27);
				v26 := v26;
			}
			
			var v28: map<int, bool> := map[p1 := v7[safeIndex(635, v7.Length)]];
			var v29: seq<map<int, bool>> := [v28];
			globalState.f8 := v0 ==> ((map v27 : int | (0x1fd <= v27) && (v27 < 0x2fd) :: (v27 - p1) := (p1)) != fm22(v7[safeIndex(635, v7.Length)], v29, v0, p0, globalState));
		}
		
		globalState.f12 := safeModuloInt(p1, p1);
		var v30 := "wrxq";
		var v31: array<bool> := new bool[14](i1 => v0);
		var v32: C1 := new C1(v31, |map[p1 := false]|, v0);
		var v33: map<C1, int> := map[v32 := p1];
		var v34: array<int> := new int[18] [|fm17(globalState)|, safeDivisionInt(p1, p1), p1 - 0x133, p1, |v30[safeIndex(|v30|, |v30|) := 'l']|, p1, 0x43 + p1, |v33|, p1, safeModuloInt(p1, p1), |(map[v31 := v0] + map[v32.f26 := v0])|, p1 - p1, |"nafk"| - p1, p1, |(p0 + p0)|, p1, |"qmerhnsg"|, |(v2 + v2)|];
		forall i0 | 0 <= i0 < v34.Length {
			v34[i0] := safeDivisionInt(i0, p1);
		}
		if (v0) {
			v34[safeIndex(930, v34.Length)] := p1 * p1;
			var v35: map<bool, bool> := map[v0 := v0];
			var v36: map<map<bool, bool>, int> := map[v35 := p1];
			v34[safeIndex(930, v34.Length)] := if (v35 in v36) then v36[v35] else 0x7;
			var v37: array<array<bool>> := new array<bool>[24];
			v37[safeIndex(906, v37.Length)] := v32.f26;
			var v38: multiset<D7> := multiset{DC18(p0)};
			var v39: multiset<int> := multiset{p1};
			var v40: set<int> := {fm9(v0, v0, v0, globalState), |p0|, if (p1 in v39) then v39[p1] else v34[safeIndex(930, v34.Length)], v34[safeIndex(930, v34.Length)]};
			var v41 := 'c';
			globalState.f8, v37[safeIndex(906, v37.Length)], v38, v40 := !(v30[safeIndex(p1, |v30|) := v41] != v30), v32.f26, v38, {p1};
			var v42 := DC21(v31, p1);
			var v43: array<int> := new int[14] [DC34(|(seq(abs(148), i2  => (0x200)))|, v34[safeIndex(930, v34.Length)], v34[safeIndex(930, v34.Length)]).cf51, p1, v34[safeIndex(930, v34.Length)], v34[safeIndex(930, v34.Length)], v34[safeIndex(930, v34.Length)], v34[safeIndex(930, v34.Length)], p1, v34[safeIndex(930, v34.Length)], p1, |map[v0 := v42.cf26]|, v34[safeIndex(930, v34.Length)], p1, |map[v0 := |[v0]|]|, |v39|];
			var v44: seq<array<int>> := [v43];
			var v45 := DC36(v44);
			v34[safeIndex(930, v34.Length)] := v34[safeIndex(930, v34.Length)] + |v45.cf53|;
			var v46: map<bool, int> := map[!fm5(v34[safeIndex(930, v34.Length)], p1, v0, globalState) := p1 + 0x39d];
			v46 := map[false := -(p1 + v34[safeIndex(930, v34.Length)])];
			if (v0 || (v30 != v30)) {
				globalState.f6 := if (v0) then v34[safeIndex(930, v34.Length)] else p1;
				globalState.f16 := v0;
				globalState.f4 := |fm17(globalState)|;
				var v47: map<int, seq<char>> := map[v34[safeIndex(930, v34.Length)] := v30];
				var v48: map<bool, map<int, seq<char>>> := map[v0 ==> v0 := v47];
				v48 := v48[v32.fm1(--v34[safeIndex(930, v34.Length)], v34[safeIndex(930, v34.Length)], p1, v0, globalState) := v47];
				v37[safeIndex(906, v37.Length)][safeIndex(211, v37[safeIndex(906, v37.Length)].Length)] := v0 <== v0;
				v37[safeIndex(906, v37.Length)][safeIndex(211, v37[safeIndex(906, v37.Length)].Length)] := v0;
			} else {
				var v49: map<int, bool> := map[v34[safeIndex(930, v34.Length)] := v0];
				v49 := v49[-p1 := p1 != 0x3de];
				var v50 := DC39(v2);
				var v51: array<seq<bool>> := new seq<bool>[7](i3 => v50.cf57);
				var v52 := DC26(v0, v51, v0, p1, p1);
				var v53 := DC6(v34[safeIndex(930, v34.Length)], v0, true, p1, v52.cf37);
				var v54: seq<seq<bool>> := [v2, v2, v2, v2];
				var v55: array<seq<bool>> := new seq<bool>[24] [v2, v2, v50.cf57, [fm5(0x381, v34[safeIndex(930, v34.Length)], v0, globalState)], v2, v2, v50.cf57, v2 + v2, v2, v50.cf57 + [v0], if (v0) then v2 else [v0], [v0], if (!v53.cf9) then v2[safeIndex(v34[safeIndex(930, v34.Length)], |v2|) := !v0] else v2, v2, v2 + fm15(v0, v34[safeIndex(930, v34.Length)], multiset{v0}, globalState), [v0, v0], [v0, v0, v0, true] + v2, v54[safeIndex(p1, |v54|)], v2, v2, v2, v2, v2, v2 + v2];
				v55 := new seq<bool>[22];
				globalState.f16 := v0 || false;
				var v56: array<array<int>> := new array<int>[16];
				v56[safeIndex(131, v56.Length)] := v43;
				v56[safeIndex(131, v56.Length)] := DC41(v43).cf61;
				v32 := v32;
			}
			
		} else {
			var v57: array<array<int>> := new array<int>[8];
			v57 := v57;
			var v58: seq<string> := ["klpx", v30];
			var v59 := new C2(v58 + v58);
			var v60: seq<int> := [-563, p1 + 15];
			v60, v31, globalState.f8 := v60 + v60, v32.f26, fm5(p1, p1, v0, globalState);
			m3(v30, v0, "ahhtwlqf", p1, globalState);
			var v61: array<char> := new char[23];
			var v62 := 'y';
			v61[safeIndex(184, v61.Length)] := v62;
			v61[safeIndex(184, v61.Length)] := v30[safeIndex(p1, |v30|)];
		}
		
		v34[safeIndex(569, v34.Length)] := p1;
		v34[safeIndex(569, v34.Length)] := p1;
		var v63: map<int, int> := map[0x32f := |v30| * -0x3a3];
		r0 := |v63|;
	}
	method m3(p0: string, p1: bool, p2: string, p3: int, globalState: GlobalState) {
		var v0: array<D4> := new D4[17];
		var v1 := DC20(v0);
		match (v1) {
			case DC21(cf26, cf27) =>
				cf26[safeIndex(457, cf26.Length)] := false;
				cf26[safeIndex(457, cf26.Length)] := !p1;
				globalState.f16 := cf26[safeIndex(457, cf26.Length)];
				var v2: seq<bool> := [cf26[safeIndex(457, cf26.Length)]];
				globalState.f16 := fm5(cf27, p3, false, globalState) && v2[safeIndex(p3, |v2|)];
				var v3: set<int> := {cf27, p3};
				var v4: array<seq<int>> := new seq<int>[26](i0 => [0x3b9]);
				var v5 := new C4(|v3|, v4, cf27, p1);
			case DC22(cf28, cf29, cf30) =>
				var v6 := new C5();
				var v7: set<bool> := {p1};
				var v8: map<D8, int> := map[v1 := cf30];
				cf30, globalState.f12 := cf30, (cf30 * |v7|) * -|(v8 + v8)|;
				globalState.f8 := p1;
				var v9: map<int, int> := map[p3 := p3];
				var v10: seq<string> := [p0, cf28];
				v9 := v9[|v10| := |p0|];
			case DC20(cf25) =>
				var v11: array<int> := new int[22];
				v11[safeIndex(128, v11.Length)] := p3;
				v11[safeIndex(128, v11.Length)] := p3;
				var v12: array<seq<int>> := new seq<int>[18](i1 => [p3]);
				var v13: array<bool> := new bool[22](i2 => p1);
				var v14: map<array<bool>, bool> := map[v13 := p1];
				var v15: C4 := new C4(p3, v12, v11[safeIndex(128, v11.Length)], if (v13 in v14) then v14[v13] else p1);
				var v16: map<bool, C4> := map[p1 := v15];
				var v17 := new C4(fm16(p1, p0, |v16|, v15.f21, globalState), v12, p3, p1);
				var v18 := 's';
				var v19: array<char> := new char[20] [v18, v18, v18, v18, 'o', v18, v18, v18, v18, v18, 'w', v18, v18, v18, v18, fm20(p3, v18, v17.f21, p3, globalState), v18, v18, v18, 'n'];
				v19[safeIndex(123, v19.Length)] := v18;
				v19[safeIndex(123, v19.Length)] := v18;
				var v20: seq<int> := [p3, v11[safeIndex(128, v11.Length)], safeModuloInt(v17.f21, p3)];
				globalState.f12 := v20[safeIndex(if (p1) then v17.f21 else v11[safeIndex(128, v11.Length)], |v20|)];
			case DC23(cf31) =>
				var v21 := 'q';
				v21 := v21;
				globalState.f8 := p3 == (p3 - p3);
				globalState.f16 := !p1;
				var v22: seq<bool> := [p1];
				v22 := v22;
		}
		
		var v23: array<int> := new int[6];
		v23[safeIndex(849, v23.Length)] := p3;
		var v24: map<bool, bool> := map[p1 := p1];
		var v25: set<bool> := {if (p1 in v24) then v24[p1] else p1, p1};
		var v26: map<int, int> := map[|v25| := p3];
		v23[safeIndex(553, v23.Length)] := |v26|;
		var v27: array<string> := new string[27](i3 => p2);
		var v28 := 'y';
		v27[safeIndex(593, v27.Length)] := ("sgn")[safeIndex(|p2|, |"sgn"|) := v28];
		v23[safeIndex(849, v23.Length)], v23[safeIndex(553, v23.Length)], v27[safeIndex(593, v27.Length)] := p3, safeDivisionInt(p3, p3), (p0 + (seq(abs(0x130), i4  => ('g'))))[safeIndex(0x8, |(p0 + (seq(abs(0x130), i4  => ('g'))))|) := if (p1) then v28 else v28];
		var v29: map<int, bool> := map[p3 + -v23[safeIndex(849, v23.Length)] := p1];
		v29 := v29[|(map[true := p1] + v24)| := p1];
		var i5 := 0;
		while (fm5(p3, 0x3c - v23[safeIndex(849, v23.Length)], p3 <= v23[safeIndex(849, v23.Length)], globalState))
			decreases 100 - i5
		{
			if (i5 >= 100) {
				break;
			}
			
			i5 := i5 + 1;
			globalState.f16, globalState.f6 := if (|v24| > v23[safeIndex(849, v23.Length)]) then v23[safeIndex(849, v23.Length)] <= |"kgbqwb"| else !p1, p3;
			globalState.f16, globalState.f8, globalState.f8 := p1, v23[safeIndex(849, v23.Length)] >= v23[safeIndex(849, v23.Length)], p3 !in ({v23[safeIndex(849, v23.Length)]} - fm28(p1, globalState));
			var v30: seq<bool> := [p1];
			var v31: map<int, seq<int>> := map[v23[safeIndex(849, v23.Length)] := fm34(!v30[safeIndex(|v29|, |v30|)], globalState) + [0x14a]];
			var v32: seq<int> := [910, |p0|];
			v31 := v31[0x73 := v32 + [v23[safeIndex(849, v23.Length)], v23[safeIndex(849, v23.Length)], p3, 303]];
			var v33 := DC31(p1 <==> p1, p3);
			match (v33) {
				case DC31(cf45, cf46) =>
					var v34 := new C5();
					v27[safeIndex(593, v27.Length)] := v27[safeIndex(593, v27.Length)];
					globalState.f4 := v23[safeIndex(849, v23.Length)];
					var v35 := new C5();
				case DC30(cf44) =>
					var v36: map<D3, char> := map[DC7(true, true, p1) := v28];
					v28 := if (DC7(p1, p1, false) in v36) then v36[DC7(p1, p1, false)] else v28;
					v30, v30 := (v30 + v30)[safeIndex(-585, |(v30 + v30)|) := p1], v30[safeIndex(p3, |v30|) := !p1];
					globalState.f6 := -v23[safeIndex(849, v23.Length)];
					globalState.f8 := p1;
				case DC32(cf47) =>
					globalState.f8 := p1;
					var v37: map<int, char> := map[v23[safeIndex(849, v23.Length)] := v28];
					v37 := v37[v23[safeIndex(849, v23.Length)] := p0[safeIndex(0x368, |p0|)]];
					v27[safeIndex(593, v27.Length)], globalState.f8, globalState.f6, globalState.f12, globalState.f12 := v27[safeIndex(593, v27.Length)], p1, p3, v23[safeIndex(849, v23.Length)], safeModuloInt(|(v24[p1 := p1] + v24)|, v23[safeIndex(849, v23.Length)]);
					var v38: seq<string> := [p2];
					var v39: C2 := new C2([p2, seq(abs(0x16f), i6  => (v28)), v27[safeIndex(593, v27.Length)], p2, p2] + v38);
					v39 := if (fm12(v23[safeIndex(849, v23.Length)], v28, globalState)) then v39 else v39;
			}
			
		}
		v23[safeIndex(849, v23.Length)] := if (fm12(v23[safeIndex(849, v23.Length)], v28, globalState)) then -(v23[safeIndex(849, v23.Length)] - v23[safeIndex(849, v23.Length)]) else p3 + p3;
		var v40: multiset<bool> := multiset{p1};
		var v41: map<multiset<bool>, int> := map[v40 + v40 := -908];
		v41 := v41[multiset{p1} := -0x258];
	}
	method m4(p0: array<bool>, p1: map<string, bool>, p2: int, p3: int, globalState: GlobalState) {
		var v0: map<bool, int> := map[true := safeModuloInt(|multiset{-p2}|, p2)];
		var v1 := true;
		var v2: seq<bool> := [v1, v1];
		var v3 := DC7(v2[safeIndex(p2, |v2|)], false, v1);
		var v4 := DC40(-0x274, p3, v3);
		globalState.f4 := if (v1 in v0) then v0[v1] else (v4.(cf60 := v3)).cf59;
		var v5: array<int> := new int[21];
		v5 := v5;
		if (v1) {
			var v6: map<int, bool> := map[p2 := fm5(p2, -p3, v1, globalState)];
			v6 := v6[p2 := v1];
			globalState.f4 := p2;
			var v7 := "rkafcu";
			var v8 := DC6(p3, v1, true, |{v1}|, v1);
			var v9 := DC9(v8);
			var v10 := DC29(v1, v9);
			m3(v7, v10.cf42, v7, p2 - p2, globalState);
			if (false) {
				var v11: map<bool, bool> := map[v1 := v1];
				var v12: map<int, int> := map[p3 := |v11|];
				v12 := v12[safeDivisionInt(p2, 310) := |(v7 + v7)|];
				var v13 := DC17(v12 + v12);
				v13 := DC17(v12);
				globalState.f16 := p2 != p2;
				var v14: seq<int> := [0x1bd];
				var v15: set<bool> := {v1};
				var v16: array<seq<int>> := new seq<int>[15] [v14, v14, v14, v14, [|v15|], [p3], [p3, p3], v14, v14, v14, seq(abs(-0x2ff), i0  => (p3)), v14, v14, v14, v14];
				var v17: array<C1> := new C1[1];
				var v18 := new C4(p2, v16, fm6(v1, {seq(abs(-258), i1  => (|{|v2|}|))}, fm19(|multiset{|"tn"|, -|[v17]|, p2}|, p3, globalState), globalState), p2 >= p2);
				var v19 := DC30(v11);
				var v20 := DC32(DC32(DC32(v19)));
				var v21: array<D11> := new D11[2] [v20, v20];
				var v22: map<int, array<D11>> := map[|v7| := v21];
				v22 := v22;
			} else {
				var v23: array<D10> := new D10[10];
				var v24: array<T0> := new T0[28];
				var v25 := DC27(v24);
				v23[safeIndex(655, v23.Length)] := v25;
				v23[safeIndex(655, v23.Length)] := v25.(cf40 := v24);
				globalState.f16 := v1;
				var v26: map<bool, bool> := map[v1 := v1];
				var v27 := DC30(v26);
				var v28: map<D11, bool> := map[v27 := if (p2 in v6) then v6[p2] else v1];
				var v29 := DC22(v7, v1, p2);
				var v30: seq<map<bool, int>> := [v0, v0];
				v28, v7, v7, globalState.f6 := map[v27 := false] + v28, (v7 + (seq(abs(-0x240), i2  => ('j')))) + v7, v29.cf28, safeDivisionInt(0xeb, if (v1) then p3 else |v30|);
				v5[safeIndex(967, v5.Length)] := -p2;
				v5[safeIndex(967, v5.Length)] := -|v7|;
				var v31: seq<int> := [v5[safeIndex(967, v5.Length)], v5[safeIndex(967, v5.Length)]];
				var v32: map<seq<int>, int> := map[v31 + v31 := p3];
				var v33: array<map<int, bool>> := new map<int, bool>[12];
				var v35: seq<seq<int>> := [seq(abs(330), i3  => (p3))];
				v32, v33 := map v34 : seq<int> | v34 in (v35 + [v31, v31]) :: (v34) := (p3), v33;
			}
			
			globalState.f4 := |v7|;
		} else {
			var v36 := 'd';
			var v37 := "ssxsa";
			var v38: map<bool, char> := map[!v1 := v37[safeIndex(p3, |v37|)]];
			var v39: seq<array<bool>> := [p0];
			var v40 := DC21(v39[safeIndex(0x5f, |v39|)], p3);
			var v41: map<D8, char> := map[v40 := v36];
			var v42: array<char> := new char[13] [v36, v36, if (!!v1 in v38) then v38[!!v1] else v36, 's', if (v1) then v36 else 'b', v36, v36, v36, v36, v36, v36, if (v40 in v41) then v41[v40] else v36, v36];
			v42[safeIndex(473, v42.Length)] := v36;
			v42[safeIndex(473, v42.Length)] := v36;
			var v43 := DC11();
			v43 := v43;
			var v44: array<multiset<bool>> := new multiset<bool>[17](i4 => multiset{v1} + multiset(v2));
			v44 := new multiset<bool>[8](i5 => multiset{v1} - multiset{v1, v1});
			var v45: seq<int> := [p3, p2, p2];
			var v46: set<seq<int>> := {v45, [p3], v45, v45, v45};
			var v47: multiset<int> := multiset{p2, fm6(v1, v46, v37, globalState)};
			var v48: set<bool> := {v1, v1, v1};
			globalState.f12, v47, globalState.f12 := |((if (v1) then v48 else v48) * {v1, v1})|, v47, 0x1f9;
			if (v1) {
				var v49 := new C3(fm16(v1, v37, p2, 704, globalState), 0x169);
				v36 := v42[safeIndex(473, v42.Length)];
				var v50: map<bool, array<int>> := map[fm12(p3, v42[safeIndex(473, v42.Length)], globalState) := v5];
				var v51: map<int, array<int>> := map[v49.f24 := v5];
				var v52: array<array<int>> := new array<int>[25] [v5, v5, v5, v5, v5, v5, v5, if (v1 in v50) then v50[v1] else v5, v5, v5, v5, v5, v5, v5, v5, v5, v5, v5, if (p2 in v51) then v51[p2] else v5, v5, v5, v5, v5, v5, v5];
				v52 := v52;
				v2, globalState.f8 := (if (v1) then v2 else v2) + (v2 + v2), v1;
				v45 := v45;
			} else {
				var v53: multiset<D8> := multiset{v40};
				var v54: seq<D8> := [v40, v40, v40, v40];
				v53 := multiset(v54 + v54) * v53;
				v5[safeIndex(204, v5.Length)] := |(v2 + v2)|;
				v5[safeIndex(204, v5.Length)] := v45[safeIndex(p2, |v45|)];
				globalState.f8 := false;
				var v55: array<int> := new int[11](i6 => i6 + 0x3d7);
				var v56: seq<array<int>> := [v55, v55, v55, v55, v55];
				var v57 := DC36(v56);
				v57 := v57.(cf53 := v56);
				globalState.f6 := p3;
			}
			
		}
		
		var v58 := 'k';
		var v59: map<char, bool> := map[v58 := v1];
		v59 := v59[v58 := v1];
		var v60 := "eogliiry";
		v58 := match if (v1) then DC5("csfr") else DC5(v60) {
			case DC6(cf5, cf6, cf7, cf8, cf9) => 't'
			case DC7(cf10, cf11, cf12) => 'p'
			case DC8() => v58
			case DC5(cf4) => v58
			case DC9(cf13) => v58
		};
		globalState.f16 := v1;
	}
}

class C7 extends T0, T1 {
	var f19 : bool
	constructor (f19 : bool, f17 : int, f18 : bool) {
		this.f19 := f19;
		this.f17 := f17;
		this.f18 := f18;
	}
	
	function fm1(p0: int, p1: int, p2: int, p3: bool, globalState: GlobalState): bool {
		f18 || (f17 < f17)
	}
	function fm2(p0: bool, p1: int, globalState: GlobalState): set<string> {
		if (f18) then {seq(abs(0x3ab), i0  => ('u')), seq(abs(309), i1  => ('o'))} else {"hsarijbq", seq(abs(0x1e2), i2  => ('p')), "p"}
	}
	function fm3(p0: int, globalState: GlobalState): bool {
		!(f18 || (!f18 <== f19))
	}
	method m0(p0: set<int>, p1: int, globalState: GlobalState) returns (r0: int) {
		for i0 := f17 to -f17 - p1 {
			globalState.f6 := f17;
			var v0: map<bool, bool> := map[f18 := f19];
			var v1: seq<map<bool, bool>> := [v0];
			v1 := v1;
			globalState.f4 := p1;
			globalState.f8 := f19;
		}
		var v2: map<int, bool> := map[p1 := f19];
		var v3: map<bool, int> := map[f19 := f17];
		var v4 := 'y';
		var v5: map<int, char> := map[f17 := v4];
		var v6: multiset<int> := multiset{0x231, p1, f17};
		var v7: seq<int> := [|"t"|, |v6|];
		var v8 := "kat";
		var v9: map<int, int> := map[p1 := |v8|];
		var v10: array<bool> := new bool[23] [!f19, f19, true, v2 == v2, f19, f18, if (fm3(f17, globalState)) then f18 else f18, -|v3| != f17, f18, f18, f19, v5 != v5, 0x215 >= f17, f19, f19, if (f18) then f18 else true, f19, f19, -p1 <= |v7|, v9 != v9, true, f18, f19];
		var v11: array<char> := new char[16] [v4, 'e', v4, v4, v4, v4, v4, v4, v4, v4, v4, v4, v4, v4, v4, DC0(v4).cf0];
		v11[safeIndex(633, v11.Length)] := v4;
		v10, v11[safeIndex(633, v11.Length)], f19 := v10, v4, f18;
		r0, r0 := f17, p1;
		var i1 := 0;
		while (f18)
			decreases 100 - i1
		{
			if (i1 >= 100) {
				break;
			}
			
			i1 := i1 + 1;
			v8 := "cmvwa" + ("yvbt" + "g");
			r0 := -f17 + safeDivisionInt(f17, p1);
			var v12: seq<multiset<int>> := [multiset(seq(abs(990), i2  => (p1)))];
			v6 := (v6 - v12[safeIndex(p1, |v12|)])[fm4(fm4(-f17, globalState), globalState) := abs(f17)];
			var v13: seq<bool> := [f18, f18, f18, f19, f18];
			v10[safeIndex(593, v10.Length)] := v13[safeIndex(p1, |v13|)];
			v10[safeIndex(593, v10.Length)] := f19;
		}
		var v14: array<array<int>> := new array<int>[28];
		var v15: array<int> := new int[3];
		v14[safeIndex(502, v14.Length)] := v15;
		v14[safeIndex(502, v14.Length)] := if (f19) then v15 else v15;
		v14[safeIndex(502, v14.Length)][safeIndex(105, v14[safeIndex(502, v14.Length)].Length)] := if (!f18 in v3) then v3[!f18] else p1;
		var v16: map<string, int> := map[v8[safeIndex(f17, |v8|) := v4] := f17];
		var v17: T0 := new C3(p1, p1);
		var v18: map<int, T0> := map[f17 := v17];
		var v19: seq<map<int, T0>> := [v18, map[-f17 := v17]];
		globalState.f8, v14[safeIndex(502, v14.Length)][safeIndex(105, v14[safeIndex(502, v14.Length)].Length)], globalState.f8, v16 := v18 in (v19 + v19), -|DC2(v7).cf2|, f19, v16 + v16;
		r0 := -safeModuloInt(p1, f17);
	}
}

class C8 extends T0 {
	constructor () {
	}
	
	method m0(p0: set<int>, p1: int, globalState: GlobalState) returns (r0: int) {
		var v0: multiset<int> := multiset{-(|p0| + p1)};
		var v1 := "popri";
		globalState.f4 := -(if (p1 in v0) then v0[p1] else |v1|);
		var v2 := false;
		if (v2) {
			globalState.f12 := p1;
			if (v2) {
				var v3: array<int> := new int[13];
				v3[safeIndex(856, v3.Length)] := -p1;
				v3[safeIndex(856, v3.Length)] := p1;
				var v4: array<bool> := new bool[13](i0 => v2);
				var v5: map<array<bool>, int> := map[v4 := p1];
				var v6: seq<bool> := [v2, true, !v2];
				var v7: map<int, bool> := map[v3[safeIndex(856, v3.Length)] := v2];
				v5 := v5[if (v6[safeIndex(|v7|, |v6|)]) then v4 else v4 := p1];
				var v8: multiset<seq<bool>> := multiset{v6, v6, v6};
				globalState.f16 := ([v2, v2, v2] !in v8) || (v3[safeIndex(856, v3.Length)] !in [|v1|, |v1|]);
				globalState.f8 := v2;
				var v9: map<set<int>, int> := map[p0 := safeDivisionInt(v3[safeIndex(856, v3.Length)], v3[safeIndex(856, v3.Length)])];
				v9 := v9;
			} else {
				var v10: array<int> := new int[6];
				var v11: seq<array<int>> := [v10, v10, v10];
				v10 := v11[safeIndex(fm0(p1, v2, v2, globalState), |v11|)];
				var v12: set<bool> := {v2, true, v2};
				var v13: map<int, int> := map[p1 := |v12|];
				var v14 := 'k';
				var v15: map<char, bool> := map[v14 := v2];
				var v16: map<int, bool> := map[p1 := v2];
				var v17: map<bool, int> := map[if (p1 in v16) then v16[p1] else v2 := p1];
				var v18: seq<int> := [p1, if (v2 in v17) then v17[v2] else p1];
				var v19: map<seq<int>, map<int, int>> := map[[p1, -|v15|] + v18 := v13];
				v13 := if (v18 in v19) then v19[v18] else v13 + v13;
				v2 := v2;
				globalState.f12 := safeDivisionInt(fm0(p1, v2, v2, globalState), p1);
				v1 := seq(abs(178), i1  => (v14));
			}
			
			globalState.f6 := -p1;
			var v20: array<bool> := new bool[10](i2 => v2);
			var v21: set<array<bool>> := {v20};
			var v22: array<int> := new int[11] [0x222, safeModuloInt(p1, p1), 648, p1, -p1, p1, |v21| + p1, safeDivisionInt(p1, p1), p1, -(0x1e2 + p1), p1];
			v22[safeIndex(613, v22.Length)] := p1;
			var v23: map<int, bool> := map[fm0(p1, v2, v2, globalState) := v2];
			v22[safeIndex(613, v22.Length)] := fm0(safeDivisionInt(-fm0(p1, v2, v2, globalState), p1), p1 == p1, if (p1 in v23) then v23[p1] else false, globalState);
			globalState.f16 := !(v22[safeIndex(613, v22.Length)] >= p1);
		} else {
			var v24: map<string, int> := map[seq(abs(0x317), i3  => ('k')) := p1];
			var v25: seq<string> := [v1, v1];
			var v26: seq<bool> := [!v2, v2, v2];
			v24 := v24[v25[safeIndex(p1, |v25|)] := safeDivisionInt(|v26|, p1)];
			var v27: array<bool> := new bool[13] [v2, v2, v2, v2, v2, v2, v2, v2, v2, v2, v2, true, false];
			var v28 := new C1(v27, 0x367, v2);
			var v29: map<int, bool> := map[p1 := v2];
			var v30 := DC22(v1, v2, safeDivisionInt(|v29|, p1));
			v30 := v30.(cf29 := v2);
			var v31: multiset<bool> := multiset{v2};
			v31 := v31;
			var v32: array<int> := new int[4](i4 => safeDivisionInt(i4, p1));
			var v33 := DC41(v32);
			var v34: multiset<array<int>> := multiset{v32, v33.cf61, v32, v32};
			v32[safeIndex(895, v32.Length)] := (if (v32 in v34) then v34[v32] else |[fm12(p1, 'j', globalState)]|) - |v29|;
			var v35: seq<int> := [|v1|];
			var v36: set<bool> := {v2, v2, v2, v2};
			v32[safeIndex(895, v32.Length)] := -safeDivisionInt(p1, p1) * (|v0| * |v35[safeIndex(p1, |v35|) := |v36|]|);
		}
		
		var v37: array<bool> := new bool[7];
		var v38 := DC13(v37);
		var v39: seq<array<bool>> := [v38.cf16, v37];
		var v40: map<int, int> := map[p1 := 0x131];
		var v41: map<string, bool> := map[v1[safeIndex(|map[v2 := p1]|, |v1|) := 'a'] := v2];
		var v42: array<array<bool>> := new array<bool>[28] [v37, v37, v37, v37, v39[safeIndex(if (p1 in v40) then v40[p1] else p1, |v39|)], if (if (fm19(p1, p1, globalState) in v41) then v41[fm19(p1, p1, globalState)] else v2) then v37 else v37, v37, v37, v37, v37, v37, v37, v37, v37, v37, v37, if (v2) then v37 else v37, v37, v37, v37, v37, v37, v37, v37, v37, v37, v37, v37];
		v42 := v42;
		if (true <== !v2) {
			var v43: map<bool, string> := map[!v2 := v1];
			var v44 := new C6(v43);
			var v45: seq<bool> := [v2];
			var v46: map<int, seq<bool>> := map[|p0| := v45];
			var v47: map<int, set<int>> := map[p1 := {p1, p1, p1, |(if (-p1 in v46) then v46[-p1] else [v2, v2])|}];
			v47 := v47[p1 := {p1, p1} + p0];
			var v48 := DC12(v2);
			var v49: array<D4> := new D4[14] [DC12(v2), v48, DC12(v2), v48.(cf15 := true), v48, v48, v48, DC12(v2), DC12(false), v48.(cf15 := true).(cf15 := false), v48, v48, v48, v48];
			var v50: map<array<D4>, int> := map[v49 := safeDivisionInt(|p0|, p1)];
			v50 := v50;
			var v51: C5 := new C5();
			var v52: set<C5> := {v51, v51};
			var v53: map<C5, int> := map[v51 := |v52|];
			var v54 := DC42(v53);
			var v55: multiset<map<C5, int>> := multiset{v54.cf62};
			v55, v2 := (multiset{v53} - v55) * v55, v2;
			r0 := --(p1 * p1);
		} else {
			var v56: array<int> := new int[8];
			var v57: seq<array<int>> := [v56, v56, v56];
			var v58 := DC36(v57);
			var v59: seq<bool> := [!v2];
			var v60: array<seq<array<int>>> := new seq<array<int>>[9] [v57, v57[safeIndex(|v1|, |v57|) := v56], v57, v57, v57, v58.cf53, v57, v57[safeIndex(0x3e, |v57|) := v56], v57[safeIndex(|v59|, |v57|) := v56]];
			v60[safeIndex(60, v60.Length)] := v57;
			v60[safeIndex(60, v60.Length)] := v57;
			var v61: array<char> := new char[4];
			var v62: seq<int> := [fm0(p1, v2, v2, globalState)];
			var v63: T0 := new C7(v59[safeIndex(p1, |v59|)], v62[safeIndex(p1, |v62|)], v2);
			v61, v1, v63 := v61, fm19(|v0|, p1 - 984, globalState), v63;
			var v64, v65 := m1(globalState);
			v37[safeIndex(843, v37.Length)] := !v2;
			v37[safeIndex(987, v37.Length)] := false;
			var v66 := DC12(v2);
			var v67: map<bool, seq<int>> := map[v2 := v62];
			var v68: array<seq<int>> := new seq<int>[4] [v62, v62, if (v2 in v67) then v67[v2] else [p1, p1, p1, p1], [p1]];
			var v69: C4 := new C4(p1, v68, p1, v2);
			var v70: map<D4, C4> := map[v66 := v69];
			var v71: map<map<D4, C4>, bool> := map[v70 := !false];
			v37[safeIndex(843, v37.Length)], globalState.f6, v37[safeIndex(987, v37.Length)] := if (v70[DC12(v2) := v69] in v71) then v71[v70[DC12(v2) := v69]] else v2, 257, v2;
			globalState.f8 := p1 > safeModuloInt(v69.f21, p1);
		}
		
		var v72 := 'j';
		v72 := v72;
		for i5 := p1 to p1 {
			v42[safeIndex(973, v42.Length)] := v37;
			var v73: array<int> := new int[28](i6 => i6 - i5);
			v73[safeIndex(697, v73.Length)] := p1;
			var v74: T0 := new C0(i5, v37);
			var v75: seq<T0> := [v74];
			var v76: array<T0> := new T0[25] [v74, if (v2) then v74 else v74, v74, DC45(v74).cf69, v74, v74, v74, v74, v74, v75[safeIndex(|v1|, |v75|)], v74, v74, v74, v74, v74, v74, v74, v74, v74, v74, v74, v74, v74, v74, v74];
			v76[safeIndex(41, v76.Length)] := v74;
			var v77: seq<bool> := [v2, v2];
			var v78: array<seq<bool>> := new seq<bool>[22];
			var v79: set<char> := {v72};
			var v80 := DC26(v2, v78, v2, p1, |v79|);
			var v81: seq<int> := [safeDivisionInt(p1, |v77|), v80.cf38, p1, p1, safeDivisionInt(i5, p1)];
			v42[safeIndex(973, v42.Length)], r0, v73[safeIndex(697, v73.Length)], v76[safeIndex(41, v76.Length)], globalState.f16 := v37, v81[safeIndex(v81[safeIndex(p1, |v81|)], |v81|)], i5, v74, v2;
			globalState.f6 := i5 + v73[safeIndex(697, v73.Length)];
			var v82: map<int, bool> := map[|v77| := v2];
			var v83: set<bool> := {if (p1 in v82) then v82[p1] else v2};
			var v84: multiset<bool> := multiset{!v2, v2};
			v73 := new int[18] [|({false} + v83)|, if (v2) then |v84| else v73[safeIndex(697, v73.Length)], safeDivisionInt(v73[safeIndex(697, v73.Length)], i5), -0x1ad * |[v2, v2, v2, false]|, p1, (if (i5 in v40) then v40[i5] else v73[safeIndex(697, v73.Length)]) * fm16(!v2, "h", i5, i5, globalState), p1, safeModuloInt(|v1[safeIndex(p1, |v1|) := v72]|, i5), 0x189, -p1 + i5, v73[safeIndex(697, v73.Length)], v73[safeIndex(697, v73.Length)], 0x2bd, p1, fm16(v2, v1, |(seq(abs(377), i7  => (v72)))|, p1, globalState), i5 + p1, p1, v73[safeIndex(697, v73.Length)]];
			var v85: map<bool, bool> := map[v2 := v2];
			v82 := v82[-(v73[safeIndex(697, v73.Length)] - |v40[p1 := i5]|) := fm12(v73[safeIndex(697, v73.Length)], fm20(|v85|, v72, |v1[safeIndex(v73[safeIndex(697, v73.Length)], |v1|) := v72]|, v73[safeIndex(697, v73.Length)], globalState), globalState)];
		}
		r0 := p1;
	}
	method m1(globalState: GlobalState) returns (r0: string, r1: seq<seq<bool>>) {
		var v0 := true;
		if (!v0) {
			var v1: array<int> := new int[16](i0 => i0 - 0x3b6);
			var v2 := -502;
			var v3: map<bool, int> := map[v0 := --v2];
			var v4: seq<map<bool, int>> := [v3, v3, v3];
			var v5: seq<int> := [v2];
			v1[safeIndex(613, v1.Length)] := -(|v4[safeIndex(|v5|, |v4|) := v3]| + v2);
			v1[safeIndex(613, v1.Length)] := safeDivisionInt(v2, safeDivisionInt(v2, v2));
			var v6 := 'v';
			var v7: map<int, char> := map[v2 := v6];
			var v8: seq<bool> := [v0];
			var v9: map<char, seq<bool>> := map[if (v2 in v7) then v7[v2] else v6 := v8];
			var v10 := DC12(v0);
			v9 := v9[v6 := [v10.cf15]];
			globalState.f16 := false && true;
			var v11: map<bool, bool> := map[v0 := true];
			var v12 := DC30(v11);
			match (if (v0) then DC30(v11) else v12) {
				case DC31(cf45, cf46) =>
					globalState.f12 := -safeModuloInt(cf46, cf46);
					var v13: C3 := new C3(|v11|, v1[safeIndex(613, v1.Length)]);
					var v14: multiset<int> := multiset{-0x1cc};
					var v15: set<int> := {v13.f24, v13.f23, -|map[cf45 := v1[safeIndex(613, v1.Length)]]| + (if (cf45 in v3) then v3[cf45] else v1[safeIndex(613, v1.Length)]), v1[safeIndex(613, v1.Length)], v13.f24 - v2};
					var v16: map<int, C3> := map[if (cf45) then -cf46 else v1[safeIndex(613, v1.Length)] := v13];
					var v17 := "qdtne";
					var v18 := DC43(cf45, cf45, v6, v0, v17);
					var v19: map<int, int> := map[|{v18.cf67, v17}| := v1[safeIndex(613, v1.Length)]];
					var v21 := DC18(set v20 : int | v20 in v19 :: (safeDivisionInt(v20, 0x137)));
					v13, v14, v15, r0, globalState.f8 := if (v13.f23 in v16) then v16[v13.f23] else v13, v14, v21.cf22, ((seq(abs(0x15), i1  => (v6))) + v17) + v17, v6 !in v17;
					var v22: seq<seq<bool>> := [v8];
					var v23: array<bool> := new bool[16] [cf46 < |v22|, !cf45 ==> !true, v1[safeIndex(613, v1.Length)] >= cf46, !(v0 <==> cf45), v2 > v1[safeIndex(613, v1.Length)], v0, cf45, v0, v0 <==> cf45, v6 in "ctey", |v17| <= -v1[safeIndex(613, v1.Length)], !(cf45 <==> cf45), false && cf45, cf45, v17 != v17, v0];
					v23 := v23;
					var v24: map<string, char> := map[v17 := v6];
					v24 := v24[v17 + v17 := v6];
				case DC30(cf44) =>
					var v25: array<bool> := new bool[5] [v0, v0, v0, true, v0];
					var v26 := new C1(v25, v2, v0);
					v1[safeIndex(613, v1.Length)] := v2;
					var v27: map<int, bool> := map[v2 := v0];
					v27 := v27 + v27;
					globalState.f16 := true;
				case DC32(cf47) =>
					var v28: multiset<int> := multiset{-v1[safeIndex(613, v1.Length)]};
					var v29: map<int, bool> := map[|v28| := v8[safeIndex(477, |v8|)]];
					globalState.f8 := v2 in v29;
					v5 := fm34(v0, globalState);
					var v30: array<bool> := new bool[20];
					v30 := v30;
					var v31 := "cixakqse";
					var v32: T0 := new C1(v30, |(v31 + "rowymjkuu")|, true);
					v32 := v32;
			}
			
			globalState.f12 := if (false <==> v0) then v2 + v1[safeIndex(613, v1.Length)] else v2;
		} else {
			var v33: set<bool> := {!!v0, v0, v0};
			if (true !in v33) {
				var v34 := new C5();
				var v35: array<array<bool>> := new array<bool>[18];
				var v36: seq<bool> := [v0];
				var v37 := 0x149;
				var v38: seq<int> := [|v36|, v37];
				var v39: seq<seq<int>> := [v38, v38, v38, v38];
				v35, globalState.f16 := v35, v39 != v39;
				var v40: map<int, bool> := map[v37 := v0];
				v40 := v40[safeModuloInt(v37, v37) := v0];
				var v41 := "gapxf";
				var v42: set<int> := {v37 - v37, v37, -v37, |v41|, v37};
				var v43 := DC19(v40, v37);
				v42 := {if (v0) then v37 else v37, v37, |v43.cf23|};
				var v44 := 'f';
				var v45: set<char> := {v44};
				var v46: map<bool, set<char>> := map[v0 := v45];
				globalState.f4 := safeDivisionInt(v37, |v46| * v37);
			} else {
				globalState.f12 := -fm9(true, true <==> v0, v0, globalState);
				var v47 := -0x180;
				var v48 := 'c';
				var v49: array<bool> := new bool[8] [v0, v0, v0, fm12(v47, v48, globalState), v0, v0, v0, v0];
				var v50: seq<array<bool>> := [v49, v49, v49];
				var v51 := "oxmgnqkdd";
				var v52: seq<bool> := [!v0, !v0];
				var v53: array<bool> := new bool[16] [|fm17(globalState)| != v47, if (v0) then true else v0, true, v0, v0, true, v0, v49 !in v50, v0, false, 'n' in v51, fm12(v47, v48, globalState), v52[safeIndex(v47, |v52|)], v0, false, v0];
				v53[safeIndex(83, v53.Length)] := !v0;
				v53[safeIndex(83, v53.Length)] := !(v0 <==> v0);
				globalState.f8 := v0;
				var v54: map<int, int> := map[v47 := v47];
				var v55: T1 := new C7(v53[safeIndex(83, v53.Length)], |v54|, v0 <==> v0);
				v55 := v55;
				var v56: array<int> := new int[22];
				v56[safeIndex(981, v56.Length)] := v47;
				var v57: array<char> := new char[15];
				var v58: map<array<char>, map<int, int>> := map[v57 := v54];
				v56[safeIndex(981, v56.Length)] := |(v58 + v58)|;
			}
			
			var v59: array<bool> := new bool[14];
			v59[safeIndex(433, v59.Length)] := v0;
			v59[safeIndex(433, v59.Length)] := !v0;
			var v60: multiset<bool> := multiset{v0};
			var v61 := "eplogt";
			var v62 := 329;
			var v63: multiset<int> := multiset{|v60|, |v61|, 0x288 - v62};
			v63 := (multiset{v62})[v62 := abs(v62)];
			var v64 := 'x';
			var v65: array<char> := new char[6] [v64, v64, 'v', v64, v64, v64];
			var v66: map<int, array<char>> := map[v62 := v65];
			var v67: array<array<char>> := new array<char>[15] [v65, v65, v65, v65, v65, v65, if (v62 in v66) then v66[v62] else v65, v65, v65, v65, v65, v65, v65, v65, v65];
			var v68: map<int, array<array<char>>> := map[-0x1cc * fm9(v59[safeIndex(433, v59.Length)], v59[safeIndex(433, v59.Length)], v0, globalState) := v67];
			v67 := if (fm0(-0x1ac, v59[safeIndex(433, v59.Length)], v0, globalState) in v68) then v68[fm0(-0x1ac, v59[safeIndex(433, v59.Length)], v0, globalState)] else v67;
			var v69: seq<int> := [126 + |map[v62 := v0]|, v62, if (!v0) then v62 else v62, v62];
			v69 := (v69 + v69) + (v69 + v69);
		}
		
		var v70 := -0x395;
		var v71: set<int> := {v70};
		var v72: map<set<int>, char> := map[v71 := 'c'];
		var v73 := 'w';
		var v74: set<char> := {v73, v73};
		var v75: map<map<set<int>, char>, int> := map[v72 := safeDivisionInt(|[v74, v74]|, -v70)];
		v75 := v75[v72 := fm9(v0, v0, fm12(v70, v73, globalState), globalState)];
		v0 := !v0;
		var v76: seq<bool> := [true];
		var v77: map<int, bool> := map[v70 := v0];
		var v79: seq<int> := [v70, v70, -v70];
		var v80 := DC7(v0, !v76[safeIndex(v70, |v76|)], v70 in ([|(set v78 : int | v78 in v77 :: (safeModuloInt(v78, |[!true]|)))|])[safeIndex(v79[safeIndex(v70, |v79|)], |[|(set v78 : int | v78 in v77 :: (safeModuloInt(v78, |[!true]|)))|]|) := v70]);
		v80 := v80;
		var v81: seq<string> := ["bxun"];
		var v82 := new C2(v81 + v81);
		if (v0) {
			var v83 := "dpamug";
			var v85: map<int, string> := map[-v70 := v83];
			var v86: multiset<bool> := multiset{v0, v0};
			var v87: array<seq<int>> := new seq<int>[13] [v79, seq(abs(0x1da), i2  => (v70)), [v70, v70], v79, fm34(v0, globalState), v79, v79, seq(abs(462), i3  => (|v74|)), v79, seq(abs(0x1f0), i4  => (v70)), [v70, v70], v79, v79];
			var v88: T0 := new C4(|v86|, v87, v70, v0);
			var v89: array<map<int, string>> := new map<int, string>[5] [map[v70 := v83], map v84 : int | v84 in v79 :: (v84 - v70) := (v83), v85, map[0x320 := fm19(v70, -|multiset{v88}|, globalState)], v85];
			var v90 := DC6(v70, v0, v0, v70, v0);
			v89[safeIndex(41, v89.Length)] := map[v90.cf5 := v83];
			v89[safeIndex(41, v89.Length)] := v85;
			var v91: array<bool> := new bool[5];
			var v92: seq<array<bool>> := [v91];
			var v93 := DC10(v92);
			match (v93) {
				case DC11() =>
					var v94: seq<D5> := [DC15(v70)];
					v94, globalState.f16, v73 := v94, !((v70 - v70) != -safeModuloInt(v70, v70)), v73;
					var v95: array<seq<map<bool, int>>> := new seq<map<bool, int>>[25];
					var v96: map<bool, int> := map[v0 := v70];
					var v97: seq<map<bool, int>> := [v96];
					v95[safeIndex(419, v95.Length)] := v97[safeIndex(v70, |v97|) := map[!v0 := v70]];
					v95[safeIndex(419, v95.Length)], globalState.f4, globalState.f8 := v97[safeIndex(|v76|, |v97|) := v96 + v96], -|v79| - safeModuloInt(v70, v70), |(seq(abs(0x3e2), i5  => (v73)))| < 939;
					var v98: set<bool> := {v76[safeIndex(v70, |v76|)], v0};
					globalState.f12 := fm9(v0 !in v98, v0, v0, globalState);
					v91[safeIndex(239, v91.Length)] := v0;
					v91[safeIndex(239, v91.Length)] := v0;
				case DC12(cf15) =>
					var v99 := new C7(cf15, |multiset(v79)|, v0);
					globalState.f6 := v70 * v70;
					var v100: array<int> := new int[17];
					v100[safeIndex(293, v100.Length)] := v70;
					var v101 := DC40(v70, 0x337, v80);
					v100[safeIndex(293, v100.Length)] := v101.cf58 - v70;
					globalState.f4 := -v70;
				case DC10(cf14) =>
					var v102: array<map<multiset<bool>, int>> := new map<multiset<bool>, int>[14](i6 => map[v86 := v70] + map[v86 := v70]);
					var v103: map<multiset<bool>, int> := map[v86 := -v70];
					v102[safeIndex(384, v102.Length)] := v103;
					v102[safeIndex(384, v102.Length)] := v103 + v103;
					globalState.f4 := v70 * -v70;
					var v104 := DC8();
					var v105: map<bool, string> := map[v0 := v83];
					var v106: C6 := new C6(v105);
					v104, globalState.f16, v86 := fm23(v0, globalState), safeModuloInt(v70, v70) == 0x30, if (v106 in multiset{v106, v106}) then multiset(v76) else v86;
					v91[safeIndex(839, v91.Length)] := v0;
					var v107 := DC3();
					var v108: multiset<multiset<bool>> := multiset{v86};
					globalState.f16, v91[safeIndex(839, v91.Length)], globalState.f8, v107 := v70 >= v70, v0, v70 >= |(v108 - multiset([fm24(globalState)]))|, v107;
			}
			
			var v109: map<array<bool>, bool> := map[v91 := v0];
			var v110: C5 := new C5();
			var v111: map<C5, int> := map[v110 := |v83|];
			var v112: array<int> := new int[4] [|(v109 + v109)|, v70 * v70, v70, fm16(v0, v83, |v111|, v70, globalState)];
			v112[safeIndex(176, v112.Length)] := v70;
			v112[safeIndex(176, v112.Length)] := if (v0) then v70 else |v83|;
			globalState.f4 := v112[safeIndex(176, v112.Length)] * |v83|;
			globalState.f16 := |v86| >= v70;
		} else {
			var v113 := "dnviqibt";
			var v114 := new C6(map[v0 := v113]);
			globalState.f12 := v70 + v70;
			globalState.f12 := v70;
			v70 := 749;
			globalState.f16 := v0;
		}
		
		var v115: map<bool, int> := map[v0 := |v76|];
		var v116 := DC6(v70, !v0, v0, if (v0 in v115) then v115[v0] else v70, false);
		var v117 := DC9(v116);
		var v118 := DC29(v0, v117);
		r0 := match v118 {
			case DC28(cf41) => "yjmdon"
			case DC29(cf42, cf43) => (seq(abs(0x318), i7  => (v73))) + (seq(abs(0xca), i8  => (v73)))
			case DC27(cf40) => ((seq(abs(0x56), i9  => (v73))) + "aohqnud")[safeIndex(v70, |((seq(abs(0x56), i9  => (v73))) + "aohqnud")|) := 'y']
		};
		var v119: seq<seq<bool>> := [v76];
		r1 := v119 + (v119 + fm35(v0, !v0, v70, globalState));
	}
	method m2(p0: int, p1: string, p2: seq<bool>, p3: bool, globalState: GlobalState) returns (r0: array<bool>, r1: bool) {
		globalState.f8 := !p3;
		r0 := new bool[13];
		var v1: set<int> := {608};
		var v2: map<int, set<int>> := map[p0 := v1];
		var v3: seq<seq<bool>> := [p2];
		globalState.f16 := (|(seq(abs(-0x5e), i0  => (|(map v0 : int | (0x255 <= v0) && (v0 < 0x8a) :: (v0 + p0) := (p0))|)))| - -|(if (p0 in v2) then v2[p0] else {-p0, p0, p0, p0})|) <= |v3|;
		var v4: map<int, bool> := map[p0 := p3];
		var v5: array<int> := new int[20] [p0, p0, p0, p0, -0x35b, p0, p0, p0, p0, |p1|, -0x261, |map[false := !false]|, p0, -(|p2| - p0), safeDivisionInt(p0, |multiset(p2)|), p0, p0, p0, |v4|, p0];
		v5[safeIndex(97, v5.Length)] := p0;
		v5[safeIndex(97, v5.Length)] := p0;
		v5[safeIndex(97, v5.Length)] := -(p0 * -|((seq(abs(-0x398), i1  => ('o'))) + p1)|);
		var v6: array<map<string, array<char>>> := new map<string, array<char>>[10];
		var v7 := 'f';
		var v8: array<char> := new char[28];
		var v9: map<string, array<char>> := map[p1[safeIndex(|p1|, |p1|) := v7] := v8];
		v6[safeIndex(158, v6.Length)] := v9;
		v6[safeIndex(158, v6.Length)] := v9;
		var v10 := DC37(p3, true);
		var v11: C5 := new C5();
		var v12: seq<C5> := [v11];
		var v13: array<bool> := new bool[29] [p3 && p2[safeIndex(p0, |p2|)], p3, p3, !p3, -v5[safeIndex(97, v5.Length)] < p0, p3, p3, p3, !p3 || p3, v10.cf54, p3, true, p3, true, if (false) then p3 else !p3, fm12(p0, p1[safeIndex(v5[safeIndex(97, v5.Length)], |p1|)], globalState), false, !p3, p3 <== p3, p3, fm12(p0, v7, globalState), p3, p3 <== p3, 0x13d > v5[safeIndex(97, v5.Length)], p3, p2[safeIndex(|v12|, |p2|)], p3, true, p3];
		r0 := v13;
		r1 := (v5[safeIndex(97, v5.Length)] - p0) != v5[safeIndex(97, v5.Length)];
	}
}

function fm0(p0: int, p1: bool, p2: bool, globalState: GlobalState): int {
	(if (false) then |map[true := |{|{true}|}|]| else 0x1b3) * -317
}
function fm4(p0: int, globalState: GlobalState): int {
	safeDivisionInt(|(seq(abs(-0x1ac), i0  => ('c')))|, 0x210) * safeDivisionInt(|"dbvpxj"|, |"nxwwmfcs"|)
}
function fm8(globalState: GlobalState): map<bool, string> {
	map[true := "vuxpm"] + DC51(map[true := DC5("pk").cf4]).cf75
}
function fm9(p0: bool, p1: bool, p2: bool, globalState: GlobalState): int {
	|(if (true) then "udfmncv" else "uy")| - -0x132
}
function fm10(p0: int, p1: int, p2: set<int>, p3: bool, globalState: GlobalState): multiset<seq<int>> {
	multiset{DC52(-0x161, [|[true]|], |{map[true := true]}|, 793, DC24(multiset{-0x7a})).cf77, [368]} * multiset((seq(abs(0x1dc), i0  => ([0x32e]))) + [[|"bxgaxuxp"|], [579, 0x2f6]])
}
function fm12(p0: int, p1: char, globalState: GlobalState): bool {
	!true
}
function fm13(p0: int, p1: int, p2: int, p3: int, globalState: GlobalState): set<bool> {
	{false}
}
function fm14(p0: int, globalState: GlobalState): D2 {
	match if (false) then DC30(map[true := true]) else DC30(map[false := true]) {
		case DC31(cf45, cf46) => DC2([cf46])
		case DC30(cf44) => if (!false) then DC2([433, 0x15c]) else DC2([-0x12c])
		case DC32(cf47) => DC2([|[true]|, |multiset{|multiset{true, !true}|}|])
	}
}
function fm15(p0: bool, p1: int, p2: multiset<bool>, globalState: GlobalState): seq<bool> {
	[!DC29(false, DC9(DC9(DC8()))).cf42, true && true]
}
function fm16(p0: bool, p1: string, p2: int, p3: int, globalState: GlobalState): int {
	|((seq(abs(0), i0  => (-640))) + (seq(abs(-111), i1  => (|"dbmeqit"|))))|
}
function fm17(globalState: GlobalState): string {
	("envp" + (seq(abs(0x109), i0  => ('j')))) + "wtuat"
}
function fm18(p0: bool, globalState: GlobalState): multiset<char> {
	multiset{if (true) then 'w' else 'g'}
}
function fm19(p0: int, p1: int, globalState: GlobalState): string {
	"hxkaa" + ("nnprjkdbi" + (seq(abs(838), i0  => ('k'))))
}
function fm20(p0: int, p1: char, p2: int, p3: int, globalState: GlobalState): char {
	DC0('g').cf0
}
function fm21(p0: int, p1: int, globalState: GlobalState): map<bool, bool> {
	map[false := false] + (map[true := true] + map[false := !true])
}
function fm22(p0: bool, p1: seq<map<int, bool>>, p2: bool, p3: set<int>, globalState: GlobalState): map<int, int> {
	map[|([|multiset{|map[DC11() := -0x35a]|}|, 0x308] + (seq(abs(0x14f), i0  => (|(seq(abs(0x19b), i1  => (|[false]|)))|))))| := |([false, true] + [true])|]
}
function fm23(p0: bool, globalState: GlobalState): D3 {
	DC6(|[0x2]|, true, !false, -(|(map v0 : int | (0x17f <= v0) && (v0 < 0x2c4) :: (v0 - 771) := (492))| - -0x24f), false ==> false)
}
function fm24(globalState: GlobalState): multiset<bool> {
	multiset{!!DC12(!true).cf15}
}
function fm25(p0: char, p1: D6, p2: int, globalState: GlobalState): multiset<map<int, bool>> {
	multiset{map v0 : int | (194 <= v0) && (v0 < 374) :: (v0 - |map[false := true]|) := (!false), map[-|"jocxrsypm"| := false] + (map v1 : int | v1 in (map v2 : int | v2 in [0x385] :: (safeDivisionInt(v2, 0x299)) := (617)) :: (v1 - -|(seq(abs(0xf5), i0  => ('t')))|) := (true)), map[-|multiset{|"mtecm"|}| := !false] + map[DC22("txuuubcs", true, 0x347).cf30 := !false], map[0x3e2 := false] + map[|[|(set v3 : int | v3 in [|{multiset{|"w"|}}|, 467, -0x313, -0x119, |[false]|] :: (v3 * |map[[true] := true]|))|]| := false], map v4 : int | v4 in (set v5 : int | (-480 <= v5) && (v5 < 407) :: (safeDivisionInt(v5, -0x35a))) :: (v4 - |multiset{|map[-|[|[false]|, 0x1a1]| := false]|}|) := (true)}
}
function fm26(p0: int, p1: seq<char>, globalState: GlobalState): D4 {
	DC11()
}
function fm27(p0: seq<bool>, p1: D3, p2: int, p3: seq<D5>, globalState: GlobalState): D8 {
	DC22(seq(abs(0x1b5), i0  => ('s')), true, -|(multiset{true, !true} - multiset{false})|)
}
function fm28(p0: bool, globalState: GlobalState): set<int> {
	{--|multiset{|"sdwvujmtt"|, |{|{false}|}|, 0x3a8}|}
}
function fm29(globalState: GlobalState): multiset<int> {
	multiset{|([false, false] + [!DC43(!true, !false, 'j', true, "idovgvsx").cf63])|, if (false) then -280 else |"wkq"|, safeDivisionInt(|"gyngolhfj"|, -|{true}|), -0xa3 - DC19(map v0 : int | v0 in map[|"fka"| := false] :: (v0 - |multiset([true])|) := (false), -0x241).cf24}
}
function fm30(p0: bool, p1: set<int>, p2: map<bool, bool>, p3: bool, globalState: GlobalState): map<string, int> {
	map["nwcnlhmx" := 0xd7] + map[seq(abs(0x23), i0  => ('w')) := -|map[true := "aqvurqj"]|]
}
function fm31(p0: bool, globalState: GlobalState): seq<D3> {
	([DC6(-0x1a0, true, false, |"mucpw"|, !true)] + (seq(abs(0x3bc), i0  => (DC6(137, true, !false, 0x1db, true))))) + ([DC6(|(seq(abs(0x233), i1  => ('v')))|, false, false, |map[|"glhqupuua"| := 0xce]|, false)] + (seq(abs(0x1c1), i2  => (DC6(0x33f, false, false, 0x2dd, true)))))
}
function fm32(p0: bool, p1: bool, p2: int, globalState: GlobalState): seq<string> {
	["pu"]
}
function fm33(p0: bool, p1: int, globalState: GlobalState): map<int, char> {
	(map[0x17b := 'w'] + map[0x293 := 'r']) + map[|"dael"| := 'm']
}
function fm34(p0: bool, globalState: GlobalState): seq<int> {
	seq(abs(-445), i0  => (|multiset{map[false := |{"myh"}|]}| + -0x94))
}
function fm35(p0: bool, p1: bool, p2: int, globalState: GlobalState): seq<seq<bool>> {
	[[false]] + ([[true]] + (seq(abs(947), i0  => ([!false]))))
}
function fm36(p0: int, globalState: GlobalState): map<int, bool> {
	map[-|(if (false) then seq(abs(-0x350), i0  => ('m')) else seq(abs(0x17c), i1  => ('v')))| := true]
}
method m9(p0: map<T1, bool>, p1: array<bool>, p2: C6, p3: int, globalState: GlobalState) {
	for i0 := p3 to p3 {
		var v0 := true;
		globalState.f16 := v0;
		globalState.f12 := i0;
		var v1: map<int, int> := map[safeModuloInt(i0, i0) := i0];
		v1 := v1[p3 := 0x143];
		var v2: C3 := new C3(i0, i0 + -fm0(p3, true, false, globalState));
		v2 := v2;
	}
	var v3 := true;
	var v4 := "itwhxeo";
	var v5: C7 := new C7(v3, p3, -|v4| >= p3);
	v5 := v5;
	p1[safeIndex(896, p1.Length)] := v3;
	var v6: map<int, int> := map[p3 := p3];
	p1[safeIndex(896, p1.Length)] := !(p3 < (if (|multiset{v3, v3}| in v6) then v6[|multiset{v3, v3}|] else p3));
	var v7 := new C3(p3, p3);
	if (v5.f19) {
		p1[safeIndex(896, p1.Length)] := (v7.f24 * -614) > -v7.f23;
		globalState.f6 := |v4| * (0x379 * v7.f24);
		var v8 := 'j';
		var v9: array<char> := new char[20] ['n', v8, v8, v8, v8, v8, v8, v8, v8, v8, v8, v8, v8, v8, v8, v8, v8, fm20(v7.f24, v8, v7.f24, p3, globalState), 'i', v8];
		v9[safeIndex(674, v9.Length)] := v8;
		v9[safeIndex(674, v9.Length)] := if (v5.f19) then v8 else v8;
		var v10: array<bool> := new bool[5];
		p1[safeIndex(896, p1.Length)], v4, v4, v4, v10 := v5.f19, v4, ((seq(abs(-214), i1  => (v8))) + v4) + "rsttupa", v4, p1;
		globalState.f6 := p3;
	} else {
		var v11: multiset<int> := multiset{v7.f24};
		var v12: multiset<int> := multiset{v7.f24, p3, |v11|, v7.f24};
		var v13: map<int, multiset<int>> := map[v7.f24 := v12];
		var v14: array<seq<int>> := new seq<int>[26];
		var v15: map<int, array<seq<int>>> := map[|(if (-v7.f23 in v13) then v13[-v7.f23] else v12)| := v14];
		var v16: seq<array<seq<int>>> := [v14, v14];
		var v17: T0 := new C4(v7.f24, if (v7.f23 in v15) then v15[v7.f23] else v16[safeIndex(v7.f23, |v16|)], safeDivisionInt(v7.f23, v7.f24), p1[safeIndex(896, p1.Length)]);
		v17 := v17;
		var v18: multiset<T0> := multiset{v17, v17};
		var v19: seq<multiset<int>> := [v12[|v18| := abs(p3)]];
		var v20: seq<int> := [p3, |v4|];
		var v21: set<seq<int>> := {v20, seq(abs(0xe5), i2  => (v7.f23))};
		var v22: array<bool> := new bool[22] [v5.f19, p1[safeIndex(896, p1.Length)], v5.f19, v3, p1[safeIndex(896, p1.Length)], v3, v3, p1[safeIndex(896, p1.Length)], if (v5.f19) then v3 else v5.f19, v5.f19, p1[safeIndex(896, p1.Length)], !v5.f19, v5.f19, v7.f24 !in v19[safeIndex(v7.f24, |v19|)], v5.f19, v5.f19, p1[safeIndex(896, p1.Length)], false, if (v5.fm1(v7.f23, v7.f23, p3, v5.f19, globalState)) then v3 else v3, p2.fm6(false, v21, v4, globalState) != -159, v3, true <==> v5.f19];
		v22 := p1;
		var v23: seq<array<bool>> := [p1, v22];
		var v24: C4 := new C4(v7.f24, v14, |v23|, true);
		var v25: map<C4, bool> := map[v24 := v5.f19];
		if (if (DC50(v24).cf74 in v25) then v25[DC50(v24).cf74] else p1[safeIndex(896, p1.Length)]) {
			p1[safeIndex(896, p1.Length)] := v5.f19;
			var v26: T1 := new C4(v7.f23, v24.f22, v7.f23, v5.f19);
			var v27: map<T1, multiset<int>> := map[v26 := v11];
			var v28: map<int, bool> := map[-v7.f23 := v5.f19];
			var v29 := 'k';
			var v30: map<char, bool> := map[v29 := p1[safeIndex(896, p1.Length)]];
			var v31: map<bool, map<T0, int>> := map[v5.f19 := map[v17 := |v12|]];
			var v32: map<T0, int> := map[v17 := |[v6, v6]|];
			var v33: array<multiset<int>> := new multiset<int>[29] [(if (v26 in v27) then v27[v26] else multiset{p3, |map[true := v5.f19]|, |v28|, v7.f23, v7.f23}) - v11, v12 * v11, v12, v11, multiset{v7.f23, 906}, multiset{|(seq(abs(0x363), i3  => ('d')))|}, v11, v12 * v12, multiset{v7.f24}, v11, v11, multiset(v20) + multiset{v24.f21, |{|v30|}|}, v11, fm29(globalState), v11, multiset{0x15d, 5, p2.fm6(v3, v21, "q", globalState)}, fm29(globalState), v11, v12, v11, v11 + v11, fm29(globalState), v12, multiset{v7.f24} + v12, v11, v12, v11, v12 + v11, v12[v7.f23 := abs(|(if (v3 in v31) then v31[v3] else v32)|)]];
			v33[safeIndex(561, v33.Length)] := v12;
			var v34: C5 := new C5();
			var v35: map<C5, int> := map[v34 := v26.f17];
			var v36 := DC42(v35);
			var v37 := DC44(v36);
			var v38: array<D16> := new D16[4] [v37, v37, v37, v37];
			var v39: seq<array<D16>> := [if (p1[safeIndex(896, p1.Length)]) then v38 else v38];
			v33[safeIndex(561, v33.Length)], v39 := v12, v39;
			globalState.f8 := p1[safeIndex(896, p1.Length)];
			var v40 := new C6(p2.f20);
			globalState.f8 := p3 >= v7.f23;
		} else {
			globalState.f16 := !v5.f19;
			globalState.f12 := v24.f21;
			v4 := v4;
			globalState.f8 := p1[safeIndex(896, p1.Length)];
			var v41: map<bool, int> := map[v5.f19 := v7.f23];
			v41 := v41 + (if (v3) then v41 else map[v5.f19 := -v7.f24]);
		}
		
		var v42: C0 := new C0(v24.f21, v22);
		var v43: map<C0, int> := map[v42 := v7.f23];
		globalState.f6 := |(v43 + v43)|;
		v20 := [v7.f24] + v20;
	}
	
	var v44 := new C3(v7.f23 - |"hck"|, v7.f23);
}
method Main() {
	var v0: array<bool> := new bool[1](i0 => true);
	var v1: array<array<bool>> := new array<bool>[5] [v0, v0, v0, v0, v0];
	var v2 := true;
	var v3 := 0x34e;
	var v4: map<bool, int> := map[false := v3];
	var v5: array<map<bool, int>> := new map<bool, int>[8] [map[v2 := v3], v4, v4[false := v3], v4, v4, v4, map[v2 := v3], map[v2 := 258]];
	var v6: array<int> := new int[1](i1 => i1 * |map[v3 := v2]|);
	var v7: map<array<map<bool, int>>, array<int>> := map[v5 := v6];
	var v8: map<bool, array<int>> := map[v2 := if (v5 in v7) then v7[v5] else v6];
	var v9: seq<bool> := [!v2];
	var v10 := 'r';
	var v11: map<int, char> := map[|v9| := v10];
	var v12: seq<int> := [v3, v3];
	var globalState := new GlobalState(0x2fe, false, v0, v1, 0x76, v8, -0x10f, false, true, multiset{v11, map[0xe6 := 'c']} * multiset{v11, v11}, false, 0x21e, 0x131, 'v', true, v12, true);
	var i2 := 0;
	while (v2)
		decreases 100 - i2
	{
		if (i2 >= 100) {
			break;
		}
		
		i2 := i2 + 1;
		var v13 := new C1(v0, v3, v2);
		var v14: seq<seq<int>> := [v12, v12];
		var v15 := "j";
		var v16: seq<string> := [v15];
		var v17: C2 := new C2(v16);
		var v18: map<C2, bool> := map[v17 := v2];
		var v19: array<seq<int>> := new seq<int>[17] [v12, v12 + v12, v12, [-|(seq(abs(-0x3a9), i3  => (v10)))|] + v12, [v3, v3, -v3], v12 + v12, seq(abs(0x4d), i4  => (v3)), v12 + (v14[safeIndex(0x253, |v14|)])[safeIndex(v3, |v14[safeIndex(0x253, |v14|)]|) := v3], v12, v12, v12, v12, v12, v12, v12, v12, if (v13.fm1(v3, |v18|, v3, v2, globalState)) then seq(abs(-0x31b), i5  => (v3)) else seq(abs(-0x2d4), i6  => (v3))];
		v19[safeIndex(338, v19.Length)] := v12;
		v19[safeIndex(338, v19.Length)] := [|multiset{v2}|] + ([|v15|, v3] + [|"rovp"|]);
		globalState.f8 := v2;
		var v20, v21 := v17.m8(v13.f26, 0xec * v3, globalState);
	}
	var v22: array<map<bool, bool>> := new map<bool, bool>[26];
	forall i7 | 0 <= i7 < v22.Length {
		v22[i7] := map[!v2 := v9[safeIndex(|map[v2 := v2]|, |v9|)]];
	}
	var v23: map<bool, seq<int>> := map[v2 := [-0x309]];
	if (v3 >= safeModuloInt(|v23|, v3)) {
		globalState.f16 := fm12(v3, v10, globalState) ==> fm12(v3, v10, globalState);
		var v24 := "h";
		var v25 := new C7(v2 || v2, -|(v24 + v24)|, v2);
		v6[safeIndex(601, v6.Length)] := -0x131;
		v6[safeIndex(601, v6.Length)] := v3;
		var v26: map<int, bool> := map[safeModuloInt(-0x7e, v6[safeIndex(601, v6.Length)]) := v25.f19];
		var v27: map<bool, seq<bool>> := map[v2 := v9];
		v26 := v26[|v27| := v2];
		v10 := v10;
	} else {
		if (!true) {
			var v28 := DC1(v2);
			var v29: map<seq<bool>, seq<int>> := map[v9 := v12];
			var v30 := "aesxffnqr";
			var v31: set<int> := {v3};
			var v32: array<seq<int>> := new seq<int>[26] [v12, [fm0(v3, v28.cf1, v2, globalState)], if (v9 in v29) then v29[v9] else (seq(abs(255), i8  => (|v9|)))[safeIndex(v3, |(seq(abs(255), i8  => (|v9|)))|) := |v30|], v12, v12, v12, v12, [v3, |v30|], v12, v12, v12, v12, v12, seq(abs(-861), i9  => (v3)), [v3], [v3], v12, v12, v12, seq(abs(123), i10  => (|v4|)), v12, v12, v12, v12, v12, [|v31|, v3, |v30|]];
			var v33: T1 := new C4(v3, if (true) then v32 else v32, -|"yobsnur"|, v2);
			v33 := v33;
			v30 := "cmn";
			var v34: map<T1, bool> := map[v33 := v33.f18];
			var v35: map<bool, string> := map[v33.f18 := v30];
			var v36: C6 := new C6(v35);
			m9(v34, v0, v36, v33.f17, globalState);
			var v37: multiset<bool> := multiset{v33.fm1(-0x247, |v30|, v3, v33.f18, globalState)};
			var v38: map<seq<bool>, multiset<bool>> := map[v9 := v37 + multiset(v9)];
			v38 := v38[v9 := v37 + v37];
			v30 := v30 + "kbjk";
		} else {
			v4 := v4[v2 := v3];
			globalState.f8 := v2;
			var v39 := "wp";
			var v40: C7 := new C7(|v39| < v3, v3, v2);
			v40 := v40;
			var v41: map<int, array<int>> := map[-v3 := v6];
			v41 := v41;
			globalState.f8 := v2;
		}
		
		var v42 := "so";
		v6[safeIndex(759, v6.Length)] := |((seq(abs(-0x1a6), i11  => (v10))) + v42)|;
		v6[safeIndex(759, v6.Length)] := v3;
		globalState.f16 := v2;
		var v43 := new C0(|multiset{v2}|, v0);
		globalState.f8 := v2;
	}
	
	var v44 := "ugj";
	var v45: map<int, string> := map[|v12| := v44];
	var v46: map<bool, string> := map[v2 := if (v3 in v45) then v45[v3] else v44];
	var v47: T0 := new C6(v46);
	v47 := v47;
	v10 := fm20(fm0(v3, v2, v2, globalState), fm20(|(map v48 : int | (0x269 <= v48) && (v48 < -0x1fa) :: (v48 + v3) := (v2))|, v10, v3, v3, globalState), -safeDivisionInt(|v4|, v3), v3, globalState);
	forall i12 | 0 <= i12 < v0.Length {
		v0[i12] := v2;
	}
	globalState.f8 := v2;
	globalState.f4 := v3;
	globalState.f4 := v3;
	var v49: map<char, int> := map[v10 := v3];
	var v50: T1 := new C1(v0, |v49|, v2);
	var v51: array<T1> := new T1[18] [v50, v50, v50, v50, if (v50.f18) then v50 else v50, v50, v50, v50, v50, v50, v50, v50, v50, v50, v50, v50, v50, v50];
	v51[safeIndex(129, v51.Length)] := v50;
	var v52 := DC5(v44);
	v51[safeIndex(129, v51.Length)], v44 := if (|v12| <= v50.f17) then v50 else v50, v52.cf4;
	var v53: map<int, int> := map[v3 := v3];
	var v54: seq<map<int, bool>> := [fm36(v3, globalState)];
	var v55: set<int> := {v3};
	v53 := (fm22(v2, v54, v2, v55, globalState) + fm22(v2, v54, v50.f18, v55, globalState)) + (if (v2) then map[fm9(v50.f18, v50.f18, false, globalState) := v50.f17] else v53);
	globalState.f4 := 0x22d;
	var v56: map<map<bool, int>, int> := map[v4 := v3];
	if ((|v56| + v3) > 289) {
		globalState.f8 := v2;
		var v57 := new C6(v46);
		var v58: map<string, bool> := map["owqccy" := v50.f18];
		v57.m4(v0, v58, v50.f17, v50.f17, globalState);
		v10 := v10;
		globalState.f8 := v50.f18;
	} else {
		var v59: seq<T1> := [v50, v51[safeIndex(129, v51.Length)]];
		globalState.f6 := |((if (fm12(0x1b2, 's', globalState)) then v59 else [v50, v51[safeIndex(129, v51.Length)]]) + v59)|;
		var v60: map<string, bool> := map[v44 := if (v50.f18) then v50.f18 else v50.f18];
		var v61: seq<string> := [seq(abs(267), i13  => (v10))];
		var v62: map<T0, bool> := map[v47 := false];
		var v63: map<bool, bool> := map[false := true];
		var v64: map<bool, bool> := map[v50.fm1(|v62|, v50.f17, |v63|, v50.f18, globalState) := v50.f18];
		var v65: map<map<bool, bool>, bool> := map[v64 := v50.f18];
		var v66 := DC43(if (v64 in v65) then v65[v64] else v50.f18, v9[safeIndex(v50.f17, |v9|)], v10, v50.f18, v44);
		v60 := v60[v61[safeIndex(v3, |v61|)] := fm12(v3, v66.cf65, globalState)];
		globalState.f16 := v9[safeIndex(v50.f17, |v9|)];
		var v67: seq<array<int>> := [v6];
		v67 := v67 + (v67 + v67);
		v6[safeIndex(400, v6.Length)] := v3;
		var v68: map<int, bool> := map[v50.f17 := v2];
		var v69 := DC19(v68, 0x130);
		var v70: multiset<D7> := multiset{v69};
		var v71: seq<D7> := [v69, v69];
		var v72: set<multiset<D7>> := {v70 - multiset{v69, v69, v69, v69}, v70 * v70, v70 - v70, multiset(v71)};
		v6[safeIndex(400, v6.Length)] := |v72|;
	}
	
	var v73 := DC8();
	if (match if (v50.f18) then v73 else v73 {
		case DC6(cf5, cf6, cf7, cf8, cf9) => -v3 != |[v50.f17, |v4|, -v3]|
		case DC7(cf10, cf11, cf12) => cf11
		case DC8() => -320 >= v50.f17
		case DC5(cf4) => v50.f18
		case DC9(cf13) => v50.f18
	}) {
		globalState.f16 := v2;
		if (false <==> (v2 && v50.f18)) {
			var v74: array<C1> := new C1[26];
			var v75: seq<array<bool>> := [v0];
			var v76: C1 := new C1(v75[safeIndex(v3, |v75|)], v50.f17, true);
			v74[safeIndex(612, v74.Length)] := v76;
			v74[safeIndex(612, v74.Length)] := v76;
			var v77: map<T1, bool> := map[v51[safeIndex(129, v51.Length)] := v50.f18];
			var v78: C6 := new C6(v46);
			m9((map[v50 := v50.f18])[v51[safeIndex(129, v51.Length)] := v50.f18] + v77, v76.f26, v78, fm4(|v53|, globalState), globalState);
			globalState.f16 := v9[safeIndex(-699, |v9|)];
			globalState.f6 := safeModuloInt(v50.f17, |(seq(abs(0xa1), i14  => (v10)))|);
			v0[safeIndex(705, v0.Length)] := v2;
			v0[safeIndex(705, v0.Length)] := v50.f18;
		} else {
			var v79: map<T1, bool> := map[v51[safeIndex(129, v51.Length)] := v2];
			var v80 := DC21(v0, v50.f17);
			var v81: C6 := new C6(v46);
			m9(v79, v80.cf26, v81, if (!v50.f18) then v50.f17 else v3, globalState);
			v47 := v47;
			v81.m3(v44, v50.f18, v44, v12[safeIndex(v50.f17, |v12|)], globalState);
			v81.m3(v44 + "itxyqjhol", v50.f18, v44 + v44, 0x1f3, globalState);
			v44 := v44;
		}
		
		var v82: C5 := new C5();
		var v83: map<C5, int> := map[v82 := v50.f17];
		var v84 := DC42(v83);
		var v85: set<D16> := {v84};
		var v86: multiset<bool> := multiset{v50.f18};
		var v87: map<set<D16>, bool> := map[v85 := v86 != v86];
		v87 := v87[v85 := v50.f18 <==> v2];
		var v88: map<bool, bool> := map[v2 := v50.f18];
		var v89: map<multiset<bool>, bool> := map[v86 := v50.f18];
		globalState.f16 := v50.fm1(v50.f17, safeModuloInt(v50.f17, v3), safeDivisionInt(fm9(v2, v2, if (v50.f18 in v88) then v88[v50.f18] else if (v86 in v89) then v89[v86] else v50.f18, globalState), v3), v50.f18, globalState);
		v88 := v88[v2 := true];
	} else {
		globalState.f12 := v50.f17;
		if (v50.f18) {
			var v90: array<seq<int>> := new seq<int>[16];
			var v91: C4 := new C4(v50.f17, v90, -v50.f17, v50.f18);
			var v92: array<C4> := new C4[5] [v91, v91, v91, v91, v91];
			v92[safeIndex(753, v92.Length)] := v91;
			v92[safeIndex(753, v92.Length)] := v91;
			var v93 := DC12(v2);
			var v94: C7 := new C7(v50.f18, -0x29d, v93.cf15);
			var v95: map<bool, C7> := map[v94.f19 := v94];
			var v96: seq<C7> := [v94];
			var v97 := DC46(v94);
			var v98: array<C7> := new C7[16] [v94, v94, if (true in v95) then v95[true] else v94, v94, v96[safeIndex(v3, |v96|)], v97.cf70, v94, v94, v94, v94, v94, v94, v94, v94, v94, v94];
			v98 := v98;
			globalState.f4 := v50.f17 - -858;
			v3 := -v50.f17;
			globalState.f8 := v2;
		} else {
			var v99: multiset<bool> := multiset{v50.f18, v2};
			v0[safeIndex(651, v0.Length)] := v50.f18 in v99;
			var v100: map<int, bool> := map[|v44| := v2];
			v0[safeIndex(651, v0.Length)] := v50.f18 <==> !!(fm36(v50.f17, globalState) == v100);
			var v101: array<bool> := new bool[27];
			v51[safeIndex(129, v51.Length)] := new C1(v101, -v50.f17, v2);
			var v102: map<T1, bool> := map[v51[safeIndex(129, v51.Length)] := v0[safeIndex(651, v0.Length)]];
			var v103: C6 := new C6(v46);
			m9(v102, v101, v103, -0xd9, globalState);
			var v104: seq<string> := [v44];
			var v105: C7 := new C7(v9[safeIndex(v50.f17, |v9|)], |(v44 + fm19(|v104|, |map[-v50.f17 := v50.f18]|, globalState))|, !(if (true) then !v2 else v0[safeIndex(651, v0.Length)]));
			v105 := if (!v105.f19) then v105 else v105;
			var v106: seq<array<int>> := [v6];
			var v107 := DC36(v106);
			v0[safeIndex(651, v0.Length)] := ([v6] + [v6]) == v107.cf53;
		}
		
		var v108: array<multiset<int>> := new multiset<int>[12];
		v108[safeIndex(193, v108.Length)] := multiset{v50.f17};
		var v109: C0 := new C0(v3, v0);
		var v110: multiset<int> := multiset{v50.f17};
		var v111: multiset<int> := multiset{safeDivisionInt(if (-0x359 in v110) then v110[-0x359] else v50.f17, v109.f27), v50.f17 * 0x3c1, v50.f17};
		v108[safeIndex(193, v108.Length)], v109, globalState.f6 := v110, v109, -v3;
		globalState.f16, v0 := v2, v109.f28;
		v108[safeIndex(193, v108.Length)] := v108[safeIndex(193, v108.Length)] - (if (!v50.f18) then v108[safeIndex(193, v108.Length)] else v111);
	}
	
	globalState.f8 := !v50.f18 <== v2;
	var v112: map<bool, bool> := map[v2 := v3 != v50.f17];
	v112 := v112[v2 := !v50.f18];
	print v0[0], "\n";
	print v1[0][0], "\n";
	print v1[1][0], "\n";
	print v1[2][0], "\n";
	print v1[3][0], "\n";
	print v1[4][0], "\n";
	print v2, "\n";
	print v3, "\n";
	print v4 == map[false := 846], "\n";
	print v5[0] == map[true := 846], "\n";
	print v5[1] == map[false := 846], "\n";
	print v5[2] == map[false := 846], "\n";
	print v5[3] == map[false := 846], "\n";
	print v5[4] == map[false := 846], "\n";
	print v5[5] == map[false := 846], "\n";
	print v5[6] == map[true := 846], "\n";
	print v5[7] == map[true := 258], "\n";
	print v6[0], "\n";
	print |v7|, "\n";
	print |v8|, "\n";
	print v9 == [false], "\n";
	print v10, "\n";
	print v11 == map[1 := 'r'], "\n";
	print v12 == [846, 846], "\n";
	print globalState.f0, "\n";
	print globalState.f1, "\n";
	print globalState.f2[0], "\n";
	print globalState.f3[0][0], "\n";
	print globalState.f3[1][0], "\n";
	print globalState.f3[2][0], "\n";
	print globalState.f3[3][0], "\n";
	print globalState.f3[4][0], "\n";
	print globalState.f4, "\n";
	print |globalState.f5|, "\n";
	print globalState.f6, "\n";
	print globalState.f7, "\n";
	print globalState.f8, "\n";
	print globalState.f9 == multiset{map[1 := 'r']}, "\n";
	print globalState.f10, "\n";
	print globalState.f11, "\n";
	print globalState.f12, "\n";
	print globalState.f13, "\n";
	print globalState.f14, "\n";
	print globalState.f15 == [846, 846], "\n";
	print globalState.f16, "\n";
	print i2, "\n";
	print v22[0] == map[false := false], "\n";
	print v22[1] == map[false := false], "\n";
	print v22[2] == map[false := false], "\n";
	print v22[3] == map[false := false], "\n";
	print v22[4] == map[false := false], "\n";
	print v22[5] == map[false := false], "\n";
	print v22[6] == map[false := false], "\n";
	print v22[7] == map[false := false], "\n";
	print v22[8] == map[false := false], "\n";
	print v22[9] == map[false := false], "\n";
	print v22[10] == map[false := false], "\n";
	print v22[11] == map[false := false], "\n";
	print v22[12] == map[false := false], "\n";
	print v22[13] == map[false := false], "\n";
	print v22[14] == map[false := false], "\n";
	print v22[15] == map[false := false], "\n";
	print v22[16] == map[false := false], "\n";
	print v22[17] == map[false := false], "\n";
	print v22[18] == map[false := false], "\n";
	print v22[19] == map[false := false], "\n";
	print v22[20] == map[false := false], "\n";
	print v22[21] == map[false := false], "\n";
	print v22[22] == map[false := false], "\n";
	print v22[23] == map[false := false], "\n";
	print v22[24] == map[false := false], "\n";
	print v22[25] == map[false := false], "\n";
	print v23 == map[true := [-777]], "\n";
	print v44, "\n";
	print v45 == map[2 := "ugj"], "\n";
	print v46 == map[true := "ugj"], "\n";
	print v49 == map['g' := 846], "\n";
	print v50.f17, "\n";
	print v50.f18, "\n";
	print v51[0].f17, "\n";
	print v51[0].f18, "\n";
	print v51[1].f17, "\n";
	print v51[1].f18, "\n";
	print v51[2].f17, "\n";
	print v51[2].f18, "\n";
	print v51[3].f17, "\n";
	print v51[3].f18, "\n";
	print v51[4].f17, "\n";
	print v51[4].f18, "\n";
	print v51[5].f17, "\n";
	print v51[5].f18, "\n";
	print v51[6].f17, "\n";
	print v51[6].f18, "\n";
	print v51[7].f17, "\n";
	print v51[7].f18, "\n";
	print v51[8].f17, "\n";
	print v51[8].f18, "\n";
	print v51[9].f17, "\n";
	print v51[9].f18, "\n";
	print v51[10].f17, "\n";
	print v51[10].f18, "\n";
	print v51[11].f17, "\n";
	print v51[11].f18, "\n";
	print v51[12].f17, "\n";
	print v51[12].f18, "\n";
	print v51[13].f17, "\n";
	print v51[13].f18, "\n";
	print v51[14].f17, "\n";
	print v51[14].f18, "\n";
	print v51[15].f17, "\n";
	print v51[15].f18, "\n";
	print v51[16].f17, "\n";
	print v51[16].f18, "\n";
	print v51[17].f17, "\n";
	print v51[17].f18, "\n";
	print v52.cf4, "\n";
	print v53 == map[337 := 3, 313 := 1], "\n";
	print v54 == [map[-380 := true]], "\n";
	print v55 == {846}, "\n";
	print v56 == map[map[false := 846] := 846], "\n";
	print v112 == map[true := false], "\n";
}