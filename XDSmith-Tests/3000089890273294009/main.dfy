// RUN: %dafny /noVerify /compile:4 /compileTarget:cs "%s" > "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:java "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:py "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:js "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:go "%s" >> "%t"
// RUN: %diff "%s.expect" "%t"

// Seed: 3000089890273294009
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed 3000089890273294009
// Seed: 3000089890273294009
// 

function safeDivide (a : int, b : int) : int {
  if b == 0 then 0 else a / b
}

function safeSeqRef<T> (s : seq<T>, i : int, default : T) : T {
  if 0 <= i < |s| then s[i] else default
}

function safeSeqSet<T> (s : seq<T>, i : int, val : T) : seq<T> {
  if 0 <= i < |s| then s[i := val] else s
}

function safeSeqTake<T> (s : seq<T>, x : int) : seq<T> {
  if 0 <= x <= |s| then s[..x] else s
}

function safeSeqDrop<T> (s : seq<T>, x : int) : seq<T> {
  if 0 <= x <= |s| then s[x..] else s
}

function safeSeqSubseq<T> (s : seq<T>, x : int, y : int) : seq<T> {
  if 0 <= x <= y <= |s| then s[x..y] else s
}

function safeSeqSlice1Colon<T> (s : seq<T>, x : int) : seq<seq<T>> {
  if 0 <= x <= |s| then s[x:] else [s]
}

function safeSeqSlice2<T> (s : seq<T>, x : int, y: int) : seq<seq<T>> {
  if 0 <= x && 0 <= y && x + y <= |s| then s[x:y] else [s]
}

function safeSeqSlice3<T> (s : seq<T>, x : int, y : int, z : int) : seq<seq<T>> {
  if 0 <= x && 0 <= y && 0 <= z && x + y + z <= |s| then s[x:y:z] else [s]
}

function safeSeqSlice3Colon<T> (s : seq<T>, x : int, y : int, z : int) : seq<seq<T>> {
  if 0 <= x && 0 <= y && 0 <= z && x + y + z <= |s| then s[x:y:z:] else [s]
}

function lengthNormalize (x : int) : nat {
  (if x < 0 then -x else x) % 50
}
method lift_57 (arg_60 : int, arg_61 : int)
  returns (arg_62 : int)
  requires (true)
  ensures (true)
{
  arg_62 := -738088559;
  {
    var lift_63 := arg_61;
    print arg_60, "\n";
    print lift_63, "\n";
    print lift_63, "\n";
    print arg_62, "\n";
    print arg_62, "\n";
  }
}

method lift_35 (arg_39 : int)
  returns (arg_40 : int, arg_41 : int)
  requires (true)
  ensures (true)
{
  arg_40 := -270809133;
  arg_41 := 908826903;
  {
    var lift_45 := 't';
    var lift_44 := 'z';
    var lift_43 := 229128315;
    var lift_42 := multiset{arg_40, 1226190729, arg_39, arg_40, arg_41};
    lift_42 := multiset{arg_39, arg_41, lift_43, arg_39};
    print arg_40, "\n";
    lift_44 := lift_45;
  }
}

function lift_29 (arg_31 : bool) : int
{
  
  -1579854737
}

method Main () {
  var lift_94 := ();
  var lift_93 := (lift_94, 'v');
  var lift_92 := 's';
  var lift_91 := (lift_92, lift_92);
  var lift_90 := lift_91;
  var lift_89 := 'F';
  var lift_88 := 'Z';
  var lift_87 := (lift_88, lift_89);
  var lift_86 := multiset{lift_87, lift_87, lift_90, lift_87};
  var lift_85 := 'B';
  var lift_84 := 'J';
  var lift_83 := lift_84;
  var lift_82 := (lift_83, lift_85);
  var lift_81 := multiset{lift_82};
  var lift_80 := multiset{lift_81, lift_86, lift_81};
  var lift_79 := lift_80;
  var lift_77 := '&';
  var lift_76 := 'q';
  var lift_75 := (lift_76, lift_77);
  var lift_74 := multiset{lift_75, lift_75};
  var lift_73 := lift_74;
  var lift_72 := '>';
  var lift_71 := lift_72;
  var lift_70 := (lift_71, lift_72);
  var lift_69 := lift_70;
  var lift_68 := 'Y';
  var lift_67 := lift_68;
  var lift_66 := '%';
  var lift_65 := multiset{
    multiset{(lift_66, 'n'), (lift_67, '*'), ('k', lift_68), lift_69},
    (var tmpData : multiset<(char, char)> := multiset{}; tmpData),
    lift_73
  };
  var lift_54 := ();
  var lift_53 := true;
  var lift_52 := [lift_53];
  var lift_51 := (lift_52, lift_54);
  var lift_49 := 896353904;
  var lift_46 := 447070024;
  var lift_34 := '<';
  var lift_33 := (lift_34, 'P');
  var lift_32 := 'X';
  var lift_28 := false;
  var lift_27 := (lift_28, lift_29);
  var lift_26 := ';';
  var lift_25 := ();
  var lift_24 := ();
  var lift_23 := ();
  var lift_22 := lift_23;
  var lift_21 := multiset{lift_22, lift_24, (), lift_24, lift_25};
  var lift_20 := (lift_21, {lift_26}, lift_27);
  var lift_19 := lift_20;
  var lift_18 := -392559766;
  var lift_17 := true;
  var lift_16 := multiset{false, lift_17, false, false};
  var lift_15 := lift_16;
  var lift_14 := false;
  var lift_13 := multiset{lift_14, lift_14};
  var lift_12 := lift_13;
  var lift_11 := [lift_12, lift_15];
  var lift_10 := false;
  var lift_9 := false;
  var lift_8 := false;
  var lift_7 := lift_8;
  var lift_6 := lift_7;
  var lift_5 := multiset{lift_6, lift_9, lift_10};
  var lift_4 := false;
  var lift_3 := false;
  var lift_2 := false;
  var lift_1 := multiset{lift_2, lift_3, lift_2, lift_3, lift_4};
  print 
    |((lift_1 + lift_5) + safeSeqRef(
      lift_11,
      lift_18,
      multiset{lift_3}
    ) + (lift_12[lift_10 := lengthNormalize(lift_18)]))|,
    "\n";
  print 
    lift_19.2.1(
      ((
        "w/|Q+WsOIZ*|z\"MsSGIAv|H*gGF^$rvW",
        multiset{(), (), lift_25, lift_25},
        lift_32
      ).2 >= lift_33.0)
    ),
    "\n";
  var methoddefvar_37, methoddefvar_38 := lift_35(lift_46);
  {
    var lift_50 := multiset{lift_51, lift_51};
    print 1618504048, "\n";
    {
      var lift_78 := lift_65;
      var lift_64 := [
        (var tmpData : multiset<multiset<(char, char)>> := multiset{}; tmpData)
      ];
      var lift_56 := -1466163744;
      var lift_55 := multiset{lift_51};
      var methoddefvar_47, methoddefvar_48 := lift_35(methoddefvar_37);
      {
        print lift_18, "\n";
        lift_49 := methoddefvar_38;
        lift_50 := lift_55;
        lift_56 := lift_49;
      }
      var methoddefvar_59 := lift_57(lift_49, 1466810456);
      {
        print lift_18, "\n";
        print methoddefvar_38, "\n";
      }
      lift_64 := [
        lift_65,
        (var tmpData : multiset<multiset<(char, char)>> := multiset{}; tmpData),
        lift_78,
        lift_79
      ];
      {
        lift_93 := lift_93;
        print lift_56, "\n";
      }
    }
  }
}


