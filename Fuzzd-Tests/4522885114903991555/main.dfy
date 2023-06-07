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
datatype D0 = DC1 | DC0(cf0: seq<int>) | DC2(cf1: D0)
datatype D1 = DC3(cf2: array<string>)
datatype D2 = DC5(cf4: char) | DC6 | DC7(cf5: int, cf6: bool) | DC4(cf3: char)
datatype D3 = DC9(cf8: bool) | DC10(cf9: int, cf10: int, cf11: array<bool>) | DC8(cf7: array<seq<bool>>)
datatype D4 = DC12 | DC11(cf12: array<int>) | DC13(cf13: D4)
datatype D5 = DC15 | DC14(cf14: string)
trait T0 {
	function fm3(p0: bool, globalState: GlobalState): bool 
	function fm4(p0: seq<seq<bool>>, p1: bool, globalState: GlobalState): map<bool, bool> 
}

class GlobalState {
	const f0 : int
	const f1 : map<array<int>, bool>
	const f2 : int
	const f3 : seq<int>
	const f4 : bool
	const f5 : int
	const f6 : bool
	var f7 : int
	const f8 : array<bool>
	const f9 : seq<int>
	const f10 : int
	const f11 : array<bool>
	const f12 : bool
	var f13 : bool
	constructor (f0 : int, f1 : map<array<int>, bool>, f2 : int, f3 : seq<int>, f4 : bool, f5 : int, f6 : bool, f7 : int, f8 : array<bool>, f9 : seq<int>, f10 : int, f11 : array<bool>, f12 : bool, f13 : bool) {
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
	}
	
}

class C0 extends T0 {
	const f14 : int
	const f15 : int
	constructor (f14 : int, f15 : int) {
		this.f14 := f14;
		this.f15 := f15;
	}
	
	function fm3(p0: bool, globalState: GlobalState): bool {
		map[f15 := 966] == (map[|{true}| := f15] + map[f15 := f14])
	}
	function fm4(p0: seq<seq<bool>>, p1: bool, globalState: GlobalState): map<bool, bool> {
		map[true || true := false ==> true]
	}
	method m1(p0: bool, p1: bool, p2: bool, p3: int, globalState: GlobalState) returns (r0: bool, r1: int) {
		var v0: set<int> := {f15};
		var v1 := DC6();
		var v2: map<set<int>, D2> := map[v0 := v1];
		v2 := v2[v0 := v1];
		var v3: array<int> := new int[16](i0 => safeDivisionInt(i0, 645));
		v3 := v3;
		var v4: seq<int> := [f14];
		var v5 := DC0(v4);
		v5 := v5;
		r0 := !p0;
		globalState.f7 := -f14;
		var v6: multiset<bool> := multiset{false};
		var v7: array<multiset<bool>> := new multiset<bool>[2] [v6, v6];
		v7[safeIndex(809, v7.Length)] := v6;
		v7[safeIndex(809, v7.Length)] := v6;
		r0 := (true || p1) && p2;
		r1 := p3;
	}
}

function fm0(p0: map<seq<int>, string>, globalState: GlobalState): bool {
	multiset([[DC1(), DC1()]]) == multiset{[DC1()], seq(abs(658), i0  => (DC1()))}
}
function fm1(p0: bool, p1: bool, globalState: GlobalState): D0 {
	DC0([344, |map[|map[|multiset{false, true}| := false]| := 'e']|] + [-0x8e, 0x33])
}
function fm2(p0: map<int, int>, p1: bool, p2: bool, p3: bool, globalState: GlobalState): int {
	safeModuloInt(|[false, !true]|, -|"nwbirxm"|) * (|multiset{false, false}| - |(seq(abs(0x3a5), i0  => (0x3a3)))|)
}
function fm5(p0: map<bool, char>, globalState: GlobalState): string {
	match DC5('c') {
		case DC5(cf4) => "simohutgv" + "drviamvg"
		case DC6() => "b" + "hmdekwhd"
		case DC7(cf5, cf6) => "cqeaiex"
		case DC4(cf3) => "whgofxusm" + "osuhwgh"
	}
}
function fm6(p0: bool, p1: bool, globalState: GlobalState): seq<int> {
	seq(abs(389), i0  => (-215))
}
method m0(p0: array<bool>, globalState: GlobalState) {
	var v0 := true;
	var v1: multiset<bool> := multiset{v0, v0, v0, v0, v0};
	var v2 := 0x2b5;
	var v3 := "y";
	for i0 := |v1| to -safeModuloInt(v2, |v3|) {
		v3 := seq(abs(0xbd), i1  => (DC5('y').cf4));
		var v4: seq<int> := [i0];
		var v5 := new C0(v2, i0 * -|v4|);
		var v6: map<int, int> := map[0xe3 := i0];
		var v7: map<bool, int> := map[v0 := if (v5.f14 in v6) then v6[v5.f14] else 431];
		var v8 := new C0(safeModuloInt(v5.f14, -570), -|v7|);
		var v9: multiset<int> := multiset{v5.f15};
		var v10: seq<bool> := [v0];
		var v11: array<multiset<int>> := new multiset<int>[12] [v9, v9 + multiset{v5.f15, |v10|, v2, i0}, v9, multiset{v2, v2}, v9, multiset{v5.f14}, v9, v9, v9, if (v0) then v9 else v9, v9, v9];
		v11[safeIndex(203, v11.Length)] := multiset(fm6(v0, v0, globalState));
		v11[safeIndex(203, v11.Length)] := v9;
	}
	globalState.f7 := v2;
	if (v0) {
		var v12: map<int, int> := map[v2 := v2];
		var v13 := DC10(-v2, fm2(v12, v0, v0, v0, globalState), p0);
		var v15 := 'e';
		var v16: set<char> := {v15};
		var v17: map<char, bool> := map[v15 := v0];
		var v18: seq<int> := [v2];
		var v19: C0 := new C0(v2, |v18|);
		var v20: multiset<C0> := multiset{v19};
		var v21: array<int> := new int[23] [v2, v2, v13.cf10, fm2(v12, v0, v0, false, globalState), 260, v2, v2, safeModuloInt(v2, v2), |((map v14 : char | v14 in v16 :: (v14) := (v0)) + v17)|, v2, fm2(map[0x30e := v18[safeIndex(v2, |v18|)]], v0, v0, v0, globalState), v2, v2, v2, v2, v2, v2, v2, if (v0) then v2 else -637, 969, v2, v2, if (v0) then v2 else |v20|];
		var v22 := DC14((fm5(map[v0 := v15], globalState))[safeIndex(0x210, |fm5(map[v0 := v15], globalState)|) := v15]);
		v21[safeIndex(203, v21.Length)] := |(v22.cf14 + "tjsj")|;
		v21[safeIndex(203, v21.Length)] := v2;
		var v23: array<C0> := new C0[5];
		var v24: multiset<array<C0>> := multiset{v23};
		var v25: T0 := new C0(v19.f15, |v3|);
		var v26: set<T0> := {v25, v25};
		var v27 := new C0(if (v23 in v24) then v24[v23] else |v26|, v21[safeIndex(203, v21.Length)]);
		v2 := v2;
		var v28: seq<bool> := [v0, v0];
		var v29 := new C0(v21[safeIndex(203, v21.Length)], |(v28 + [true])|);
		v29 := v19;
	} else {
		var v30: seq<string> := [v3 + v3, v3 + "wha"];
		v30 := v30 + [v3];
		var v31 := 'a';
		var v32: map<bool, char> := map[v0 := v31];
		globalState.f13 := fm5(v32, globalState) == v3[safeIndex(v2, |v3|) := v31];
		globalState.f7 := v2;
		var v33: C0 := new C0(-v2, safeDivisionInt(v2, v2));
		globalState.f7, v3, v33, v2 := v33.f14, v3 + fm5(map[v0 := v31], globalState), v33, v2;
		var v34: map<int, set<bool>> := map[v33.f14 := {v0}];
		v34 := v34;
	}
	
	var i2 := 0;
	while (!v0)
		decreases 100 - i2
	{
		if (i2 >= 100) {
			break;
		}
		
		i2 := i2 + 1;
		var v35 := new C0(913, v2);
		globalState.f13 := v35.fm3(v0, globalState);
		globalState.f13 := !(v35.f15 != v2);
		var v36: array<int> := new int[5](i3 => i3 - |(seq(abs(0x72), i4  => ('f')))|);
		var v37: multiset<array<int>> := multiset{v36, v36, v36};
		v37 := v37 + v37;
	}
	var v38: set<string> := {v3, v3, v3};
	var v39: seq<int> := [|v38|];
	v39 := v39[safeIndex(v2, |v39|) := v2];
	var v40: map<int, int> := map[v2 := |v3|];
	var v41 := new C0(v2, fm2(v40, !v0, v0, false, globalState));
}
method Main() {
	var v0: array<int> := new int[6];
	var v1 := true;
	var v2: map<array<int>, bool> := map[v0 := v1];
	var v3 := -311;
	var v4: array<bool> := new bool[22] [v1, v1, v1, !v1, v1, v1, v1, v1, v1, v1, v1, v1, v1, true, !v1, v1, v1, v1, v1, v1, v1, true];
	var v5: seq<int> := [v3];
	var globalState := new GlobalState(-0x35, v2 + v2, 412, [v3, 892, v3], false, 0x2e4, false, 262, v4, DC0(v5).cf0 + v5, 0x159, v4, false, true);
	var i0 := 0;
	while (v1)
		decreases 100 - i0
	{
		if (i0 >= 100) {
			break;
		}
		
		i0 := i0 + 1;
		if (!v1) {
			var v6 := "vk";
			v6 := v6 + v6;
			globalState.f7 := v3 * v3;
			v1 := v1 && true;
			m0(v4, globalState);
			m0(v4, globalState);
		} else {
			var v7: array<char> := new char[2];
			v3, v7 := safeDivisionInt(v3, -0x2), v7;
			m0(v4, globalState);
			var v8 := "cxwnhirqq";
			var v9: map<seq<int>, string> := map[v5 := v8];
			globalState.f13 := fm0(v9, globalState);
			v1 := v1;
			v4 := v4;
		}
		
		var v10 := DC0(v5);
		var v11: map<bool, bool> := map[v1 := v1];
		var v12: seq<D0> := [v10, fm1(v1, v1, globalState), fm1(if (!v1 in v11) then v11[!v1] else v1, v1, globalState), DC0(v5), v10];
		v12 := v12;
		var v13: set<int> := {v3};
		var v14: map<int, int> := map[if (v1) then v3 else |v13| := v3];
		var v15: seq<bool> := [true, v1];
		globalState.f7 := if (safeDivisionInt(v3, |v15|) in v14) then v14[safeDivisionInt(v3, |v15|)] else v3;
		var v16: array<string> := new seq<char>[23](i1 => seq(abs(-0x14b), i2  => ('v')));
		var v17 := 'c';
		var v18: map<array<string>, char> := map[v16 := v17];
		var v19 := DC3(v16);
		v18 := v18[v19.cf2 := DC4(v17).cf3];
	}
	var v20 := "ycopgmj";
	v20 := (v20 + v20) + "vsac";
	globalState.f13 := if (v3 > v3) then v1 else if (!!v1) then v1 else v1;
	var v21 := DC7(v3, if (v1) then false else !v1);
	v21 := DC7(v3, v1);
	globalState.f7 := -v3;
	m0(v4, globalState);
	var v22: map<int, int> := map[v3 := v3];
	globalState.f7 := fm2(v22, v1, v1, v1, globalState);
	globalState.f7 := v3;
	if (false) {
		globalState.f13 := v1;
		globalState.f13 := v1;
		v4[safeIndex(902, v4.Length)] := v1;
		var v23: map<bool, bool> := map[!v1 := v1];
		v3, v4[safeIndex(902, v4.Length)], globalState.f7, v23 := |(v23 + v23)|, v1 ==> (v1 ==> v1), v3, v23;
		var v24: multiset<bool> := multiset{v4[safeIndex(902, v4.Length)]};
		var v25 := new C0(|v24|, v3);
		var v26 := new C0(v25.f14, v3);
	} else {
		v22 := v22;
		var v27 := new C0(v3, v3);
		var v28, v29 := v27.m1(v1, v3 <= |v20|, if (v1) then v1 else v1, v3, globalState);
		v29 := v27.f15;
		var v30: array<D2> := new D2[27];
		var v31 := 'm';
		v30[safeIndex(341, v30.Length)] := DC4(v31);
		var v32 := DC4(v31);
		v30[safeIndex(341, v30.Length)] := v32;
	}
	
	forall i3 | 0 <= i3 < v4.Length {
		v4[i3] := true;
	}
	var v33 := new C0(v3 * -0x157, v3);
	v1 := !(v3 != v3);
	var v34: multiset<bool> := multiset{v1};
	var v35: seq<multiset<bool>> := [v34, v34];
	var v36: map<bool, int> := map[v1 := |v35[safeIndex(|v22|, |v35|)]|];
	var v37 := DC1();
	var v38 := DC2(v37);
	var v39: map<D0, seq<int>> := map[v38 := v5];
	var v40 := new C0(v3, if (v1 in v36) then v36[v1] else |(map[v5 := |(seq(abs(0x83), i4  => ('v')))|])[if (v38 in v39) then v39[v38] else v5 := v3]|);
	v4[safeIndex(112, v4.Length)] := v1;
	v4[safeIndex(112, v4.Length)] := v1;
	var v41: multiset<multiset<bool>> := multiset{v34, v34};
	v41 := v41;
	if ((if (v1) then !v1 else v1) <== v1) {
		v3 := 0x16c;
		var v42: set<int> := {v33.f14, safeModuloInt(0xf0, v40.f14)};
		v42, globalState.f13 := v42, v1;
		var v43 := new C0(v40.f15, fm2(map[v33.f14 := v33.f15], v1, v1, v1, globalState));
		var v44: seq<bool> := [v4[safeIndex(112, v4.Length)], v4[safeIndex(112, v4.Length)]];
		var v45: seq<set<bool>> := [{v4[safeIndex(112, v4.Length)], v4[safeIndex(112, v4.Length)], v1}, {!v4[safeIndex(112, v4.Length)], v1, v44[safeIndex(v40.f15, |v44|)]}];
		v45 := v45;
		var v46: map<int, array<int>> := map[v33.f15 := v0];
		globalState.f7, globalState.f13 := v40.f14, v46 == (v46 + v46);
	} else {
		var v47: array<seq<bool>> := new seq<bool>[7](i5 => [v1]);
		var v48: map<array<bool>, array<seq<bool>>> := map[v4 := v47];
		var v49 := DC8(v47);
		v48 := v48[v4 := v49.cf7];
		if (v21.cf6) {
			v20 := v20;
			var v50: multiset<int> := multiset{v5[safeIndex(v33.f15, |v5|)], -v33.f15};
			globalState.f7 := (0x306 - |v50|) + v40.f15;
			v21 := v21;
			var v51: map<int, bool> := map[v33.f14 - v40.f14 := v4[safeIndex(112, v4.Length)]];
			var v52: seq<bool> := [false, v4[safeIndex(112, v4.Length)], v1, v1, v4[safeIndex(112, v4.Length)]];
			var v53 := 'c';
			var v54: map<bool, char> := map[v1 := v53];
			globalState.f7, v51, v1, v20 := v40.f15, map[if (multiset(v52) in v41) then v41[multiset(v52)] else |fm5(v54, globalState)| := v1] + v51, (false ==> v1) <==> false, "t";
			var v55: seq<C0> := [v40];
			var v56: set<seq<bool>> := {v52};
			globalState.f13, v55, v3, v3 := if (v4[safeIndex(112, v4.Length)]) then v4[safeIndex(112, v4.Length)] else |v22| != v33.f15, v55, |(v56 - (v56 - (set v57 : seq<bool> | v57 in [[v1, v4[safeIndex(112, v4.Length)]]] :: (v57))))|, |"xlgm"|;
		} else {
			var v58: set<string> := {v20 + (seq(abs(0x3e), i6  => ('o'))), v20};
			var v59: map<string, int> := map[v20 := 0x2cd];
			v58 := set v60 : string | v60 in v59 :: (v60);
			globalState.f7 := if (!v4[safeIndex(112, v4.Length)]) then safeModuloInt(v40.f15, v40.f14) else v40.f14;
			var v61: array<array<bool>> := new array<bool>[1];
			v61[safeIndex(551, v61.Length)] := v4;
			v61[safeIndex(551, v61.Length)] := v4;
			var v62: array<C0> := new C0[17];
			v62[safeIndex(480, v62.Length)] := v33;
			var v63: set<multiset<int>> := {multiset{v40.f15}};
			var v64 := DC11(v0);
			var v65: set<array<int>> := {v0, v0};
			globalState.f7, v0, globalState.f7, v62[safeIndex(480, v62.Length)] := |v63|, v64.cf12, |v65|, v40;
			var v66: map<array<bool>, bool> := map[v4 := v1];
			globalState.f7 := |v66|;
		}
		
		var v67: seq<bool> := [v1];
		globalState.f7 := |v67| * v3;
		globalState.f7 := v33.f14;
		globalState.f7 := v40.f15;
	}
	
	print v1, "\n";
	print |v2|, "\n";
	print v3, "\n";
	print v4[0], "\n";
	print v4[1], "\n";
	print v4[2], "\n";
	print v4[3], "\n";
	print v4[4], "\n";
	print v4[5], "\n";
	print v4[6], "\n";
	print v4[7], "\n";
	print v4[8], "\n";
	print v4[9], "\n";
	print v4[10], "\n";
	print v4[11], "\n";
	print v4[12], "\n";
	print v4[13], "\n";
	print v4[14], "\n";
	print v4[15], "\n";
	print v4[16], "\n";
	print v4[17], "\n";
	print v4[18], "\n";
	print v4[19], "\n";
	print v4[20], "\n";
	print v4[21], "\n";
	print v5 == [-311], "\n";
	print globalState.f0, "\n";
	print |globalState.f1|, "\n";
	print globalState.f2, "\n";
	print globalState.f3 == [-311, 892, -311], "\n";
	print globalState.f4, "\n";
	print globalState.f5, "\n";
	print globalState.f6, "\n";
	print globalState.f7, "\n";
	print globalState.f8[0], "\n";
	print globalState.f8[1], "\n";
	print globalState.f8[2], "\n";
	print globalState.f8[3], "\n";
	print globalState.f8[4], "\n";
	print globalState.f8[5], "\n";
	print globalState.f8[6], "\n";
	print globalState.f8[7], "\n";
	print globalState.f8[8], "\n";
	print globalState.f8[9], "\n";
	print globalState.f8[10], "\n";
	print globalState.f8[11], "\n";
	print globalState.f8[12], "\n";
	print globalState.f8[13], "\n";
	print globalState.f8[14], "\n";
	print globalState.f8[15], "\n";
	print globalState.f8[16], "\n";
	print globalState.f8[17], "\n";
	print globalState.f8[18], "\n";
	print globalState.f8[19], "\n";
	print globalState.f8[20], "\n";
	print globalState.f8[21], "\n";
	print globalState.f9 == [-311, -311], "\n";
	print globalState.f10, "\n";
	print globalState.f11[0], "\n";
	print globalState.f11[1], "\n";
	print globalState.f11[2], "\n";
	print globalState.f11[3], "\n";
	print globalState.f11[4], "\n";
	print globalState.f11[5], "\n";
	print globalState.f11[6], "\n";
	print globalState.f11[7], "\n";
	print globalState.f11[8], "\n";
	print globalState.f11[9], "\n";
	print globalState.f11[10], "\n";
	print globalState.f11[11], "\n";
	print globalState.f11[12], "\n";
	print globalState.f11[13], "\n";
	print globalState.f11[14], "\n";
	print globalState.f11[15], "\n";
	print globalState.f11[16], "\n";
	print globalState.f11[17], "\n";
	print globalState.f11[18], "\n";
	print globalState.f11[19], "\n";
	print globalState.f11[20], "\n";
	print globalState.f11[21], "\n";
	print globalState.f12, "\n";
	print globalState.f13, "\n";
	print i0, "\n";
	print v20, "\n";
	print v21.cf5, "\n";
	print v21.cf6, "\n";
	print v22 == map[0 := 0], "\n";
	print v33.f14, "\n";
	print v33.f15, "\n";
	print v34 == multiset{true}, "\n";
	print v35 == [multiset{true}, multiset{true}], "\n";
	print v36 == map[true := 1], "\n";
	print v39 == map[DC2(DC1()) := [-311]], "\n";
	print v40.f14, "\n";
	print v40.f15, "\n";
	print v41 == multiset{multiset{true}, multiset{true}}, "\n";
}