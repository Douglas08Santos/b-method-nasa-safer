Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(SAFER_imp))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(SAFER_imp))==(Machine(SAFER));
  Level(Implementation(SAFER_imp))==(1);
  Upper_Level(Implementation(SAFER_imp))==(Machine(SAFER))
END
&
THEORY LoadedStructureX IS
  Implementation(SAFER_imp)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(SAFER_imp))==(SAFER_TYPE)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(SAFER_imp))==(BASIC_IO,DISPLAY,av.Avionics);
  Inherited_List_Includes(Implementation(SAFER_imp))==(av.Avionics,DISPLAY,BASIC_IO)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(SAFER_imp))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(SAFER_imp))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(SAFER_imp))==(?);
  Context_List_Variables(Implementation(SAFER_imp))==(?);
  Abstract_List_Variables(Implementation(SAFER_imp))==(?);
  Local_List_Variables(Implementation(SAFER_imp))==(?);
  List_Variables(Implementation(SAFER_imp))==(avthrusters_to_fire,avpower_switch,avtrans_cmd);
  External_List_Variables(Implementation(SAFER_imp))==(av.thrusters_to_fire,av.power_switch,av.trans_cmd)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(SAFER_imp))==(?);
  Abstract_List_VisibleVariables(Implementation(SAFER_imp))==(?);
  External_List_VisibleVariables(Implementation(SAFER_imp))==(?);
  Expanded_List_VisibleVariables(Implementation(SAFER_imp))==(?);
  List_VisibleVariables(Implementation(SAFER_imp))==(power);
  Internal_List_VisibleVariables(Implementation(SAFER_imp))==(power)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(SAFER_imp))==(btrue);
  Abstract_List_Invariant(Implementation(SAFER_imp))==(btrue);
  Expanded_List_Invariant(Implementation(SAFER_imp))==(avpower_switch: SWITCH & avtrans_cmd: TRANS_AXIS --> AXIS_VALUE & (avpower_switch = OFF => ran(avtrans_cmd) = {ZERO}) & avthrusters_to_fire <: THRUSTERS);
  Context_List_Invariant(Implementation(SAFER_imp))==(btrue);
  List_Invariant(Implementation(SAFER_imp))==(power: SWITCH)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(SAFER_imp))==(btrue);
  Expanded_List_Assertions(Implementation(SAFER_imp))==(btrue);
  Context_List_Assertions(Implementation(SAFER_imp))==(btrue);
  List_Assertions(Implementation(SAFER_imp))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(SAFER_imp))==(avpower_switch,avtrans_cmd,avthrusters_to_fire:=OFF,{XX|->ZERO},{};power:=OFF);
  Context_List_Initialisation(Implementation(SAFER_imp))==(skip);
  List_Initialisation(Implementation(SAFER_imp))==(power:=OFF)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(SAFER_imp))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(SAFER_imp),Machine(BASIC_IO))==(?);
  List_Instanciated_Parameters(Implementation(SAFER_imp),Machine(DISPLAY))==(?);
  List_Instanciated_Parameters(Implementation(SAFER_imp),Machine(av.Avionics))==(?);
  List_Instanciated_Parameters(Implementation(SAFER_imp),Machine(SAFER_TYPE))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(SAFER_imp),Machine(av.Avionics))==(btrue);
  List_Constraints(Implementation(SAFER_imp))==(btrue);
  List_Context_Constraints(Implementation(SAFER_imp))==(btrue);
  List_Constraints(Implementation(SAFER_imp),Machine(DISPLAY))==(btrue);
  List_Constraints(Implementation(SAFER_imp),Machine(BASIC_IO))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(SAFER_imp))==(main);
  List_Operations(Implementation(SAFER_imp))==(main)
END
&
THEORY ListInputX IS
  List_Input(Implementation(SAFER_imp),main)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(SAFER_imp),main)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(SAFER_imp),main)==(main)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(SAFER_imp),main)==(btrue);
  List_Precondition(Implementation(SAFER_imp),main)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(SAFER_imp),main)==(btrue | @(Choice,counter).(power:=OFF;Choice:=1;counter:=MAXINT;WHILE Choice/=0 & counter>0 DO (counter-1: INT & counter: INT & 1: INT | counter:=counter-1);(btrue | skip);(4: NAT & 0: NAT & 0<=4 | @(bb$0).(bb$0: 0..4 ==> Choice:=bb$0));(Choice = 0 ==> skip [] not(Choice = 0) ==> skip);(Choice = 1 ==> (ON: SWITCH | avpower_switch,avtrans_cmd:=ON,{XX|->ZERO}) [] not(Choice = 1) ==> skip);(Choice = 2 ==> (OFF: SWITCH | avpower_switch,avtrans_cmd:=OFF,{XX|->ZERO}) [] not(Choice = 2) ==> skip);(Choice = 3 & power = ON ==> ((POS: AXIS_VALUE & avpower_switch = ON | avtrans_cmd:={XX|->POS});(ran(avtrans_cmd)/={ZERO} | ran(avtrans_cmd) = {POS} ==> avthrusters_to_fire:={B1,B2,B3,B4} [] not(ran(avtrans_cmd) = {POS}) ==> avthrusters_to_fire:={F1,F2,F3,F4})) [] not(Choice = 3 & power = ON) ==> skip);(Choice = 4 & power = ON ==> ((NEG: AXIS_VALUE & avpower_switch = ON | avtrans_cmd:={XX|->NEG});(ran(avtrans_cmd)/={ZERO} | ran(avtrans_cmd) = {POS} ==> avthrusters_to_fire:={B1,B2,B3,B4} [] not(ran(avtrans_cmd) = {POS}) ==> avthrusters_to_fire:={F1,F2,F3,F4})) [] not(Choice = 4 & power = ON) ==> skip) INVARIANT Choice: 0..4 & counter: NAT VARIANT counter END));
  List_Substitution(Implementation(SAFER_imp),main)==(VAR Choice,counter IN power:=OFF;Choice:=1;counter:=MAXINT;WHILE Choice/=0 & counter>0 DO counter:=counter-1;display_menu;Choice <-- INTERVAL_READ(0,4);IF Choice = 0 THEN skip END;IF Choice = 1 THEN (av.switch)(ON) END;IF Choice = 2 THEN (av.switch)(OFF) END;IF Choice = 3 & power = ON THEN (av.translation)(POS);av.move END;IF Choice = 4 & power = ON THEN (av.translation)(NEG);av.move END INVARIANT Choice: 0..4 & counter: NAT VARIANT counter END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(SAFER_imp))==(?);
  Inherited_List_Constants(Implementation(SAFER_imp))==(?);
  List_Constants(Implementation(SAFER_imp))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(SAFER_imp),THRUSTERS)==({B1,B2,B3,B4,F1,F2,F3,F4});
  Context_List_Enumerated(Implementation(SAFER_imp))==(AXIS_VALUE,TRANS_AXIS,SWITCH,THRUSTERS);
  Context_List_Defered(Implementation(SAFER_imp))==(?);
  Context_List_Sets(Implementation(SAFER_imp))==(AXIS_VALUE,TRANS_AXIS,SWITCH,THRUSTERS);
  List_Own_Enumerated(Implementation(SAFER_imp))==(?);
  List_Valuable_Sets(Implementation(SAFER_imp))==(?);
  Inherited_List_Enumerated(Implementation(SAFER_imp))==(?);
  Inherited_List_Defered(Implementation(SAFER_imp))==(?);
  Inherited_List_Sets(Implementation(SAFER_imp))==(?);
  List_Enumerated(Implementation(SAFER_imp))==(?);
  List_Defered(Implementation(SAFER_imp))==(?);
  List_Sets(Implementation(SAFER_imp))==(?);
  Set_Definition(Implementation(SAFER_imp),SWITCH)==({ON,OFF});
  Set_Definition(Implementation(SAFER_imp),TRANS_AXIS)==({XX});
  Set_Definition(Implementation(SAFER_imp),AXIS_VALUE)==({NEG,ZERO,POS})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(SAFER_imp))==(?);
  Expanded_List_HiddenConstants(Implementation(SAFER_imp))==(?);
  List_HiddenConstants(Implementation(SAFER_imp))==(?);
  External_List_HiddenConstants(Implementation(SAFER_imp))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(SAFER_imp))==(btrue);
  Context_List_Properties(Implementation(SAFER_imp))==(AXIS_VALUE: FIN(INTEGER) & not(AXIS_VALUE = {}) & TRANS_AXIS: FIN(INTEGER) & not(TRANS_AXIS = {}) & SWITCH: FIN(INTEGER) & not(SWITCH = {}) & THRUSTERS: FIN(INTEGER) & not(THRUSTERS = {}));
  Inherited_List_Properties(Implementation(SAFER_imp))==(btrue);
  List_Properties(Implementation(SAFER_imp))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(SAFER_imp))==(aa: aa);
  List_Values(Implementation(SAFER_imp))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(SAFER_imp),Machine(SAFER_TYPE))==(?);
  Seen_Context_List_Enumerated(Implementation(SAFER_imp))==(?);
  Seen_Context_List_Invariant(Implementation(SAFER_imp))==(btrue);
  Seen_Context_List_Assertions(Implementation(SAFER_imp))==(btrue);
  Seen_Context_List_Properties(Implementation(SAFER_imp))==(btrue);
  Seen_List_Constraints(Implementation(SAFER_imp))==(btrue);
  Seen_List_Operations(Implementation(SAFER_imp),Machine(SAFER_TYPE))==(?);
  Seen_Expanded_List_Invariant(Implementation(SAFER_imp),Machine(SAFER_TYPE))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(SAFER_imp),Machine(Avionics))==(switch,translation,get_power,move);
  List_Included_Operations(Implementation(SAFER_imp),Machine(DISPLAY))==(display_menu);
  List_Included_Operations(Implementation(SAFER_imp),Machine(BASIC_IO))==(INTERVAL_READ,INT_WRITE,BOOL_READ,BOOL_WRITE,CHAR_READ,CHAR_WRITE,STRING_WRITE)
END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(SAFER_imp))==(Type(power) == Mvv(etype(SWITCH,?,?)));
  Operations(Implementation(SAFER_imp))==(Type(main) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants_Env(Implementation(SAFER_imp),Machine(SAFER_TYPE))==(Type(NEG) == Cst(etype(AXIS_VALUE,0,2));Type(ZERO) == Cst(etype(AXIS_VALUE,0,2));Type(POS) == Cst(etype(AXIS_VALUE,0,2));Type(XX) == Cst(etype(TRANS_AXIS,0,0));Type(ON) == Cst(etype(SWITCH,0,1));Type(OFF) == Cst(etype(SWITCH,0,1));Type(B1) == Cst(etype(THRUSTERS,0,7));Type(B2) == Cst(etype(THRUSTERS,0,7));Type(B3) == Cst(etype(THRUSTERS,0,7));Type(B4) == Cst(etype(THRUSTERS,0,7));Type(F1) == Cst(etype(THRUSTERS,0,7));Type(F2) == Cst(etype(THRUSTERS,0,7));Type(F3) == Cst(etype(THRUSTERS,0,7));Type(F4) == Cst(etype(THRUSTERS,0,7)));
  Enumerate_Definition(Implementation(SAFER_imp),Machine(SAFER_TYPE),THRUSTERS)==({B1,B2,B3,B4,F1,F2,F3,F4});
  Enumerate_Definition(Implementation(SAFER_imp),Machine(SAFER_TYPE),SWITCH)==({ON,OFF});
  Enumerate_Definition(Implementation(SAFER_imp),Machine(SAFER_TYPE),TRANS_AXIS)==({XX});
  Enumerate_Definition(Implementation(SAFER_imp),Machine(SAFER_TYPE),AXIS_VALUE)==({NEG,ZERO,POS})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(SAFER_imp)) == (? | ? | ? | avtrans_cmd,avpower_switch,avthrusters_to_fire | main | ? | seen(Machine(SAFER_TYPE)),imported(Machine(BASIC_IO)),imported(Machine(DISPLAY)),imported(Machine(av.Avionics)) | ? | SAFER_imp);
  List_Of_HiddenCst_Ids(Implementation(SAFER_imp)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(SAFER_imp)) == (?);
  List_Of_VisibleVar_Ids(Implementation(SAFER_imp)) == (power | ?);
  List_Of_Ids_SeenBNU(Implementation(SAFER_imp)) == (seen(Machine(SAFER_TYPE)): (AXIS_VALUE,TRANS_AXIS,SWITCH,THRUSTERS,NEG,ZERO,POS,XX,ON,OFF,B1,B2,B3,B4,F1,F2,F3,F4 | ? | ? | ? | ? | ? | ? | ? | ?));
  List_Of_Ids(Machine(Avionics)) == (? | ? | thrusters_to_fire,power_switch,trans_cmd | ? | switch,translation,get_power,move | ? | seen(Machine(SAFER_TYPE)) | ? | Avionics);
  List_Of_HiddenCst_Ids(Machine(Avionics)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Avionics)) == (?);
  List_Of_VisibleVar_Ids(Machine(Avionics)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Avionics)) == (?: ?);
  List_Of_Ids(Machine(SAFER_TYPE)) == (AXIS_VALUE,TRANS_AXIS,SWITCH,THRUSTERS,NEG,ZERO,POS,XX,ON,OFF,B1,B2,B3,B4,F1,F2,F3,F4 | ? | ? | ? | ? | ? | ? | ? | SAFER_TYPE);
  List_Of_HiddenCst_Ids(Machine(SAFER_TYPE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(SAFER_TYPE)) == (?);
  List_Of_VisibleVar_Ids(Machine(SAFER_TYPE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(SAFER_TYPE)) == (?: ?);
  List_Of_Ids(Machine(DISPLAY)) == (? | ? | ? | ? | display_menu | ? | ? | ? | DISPLAY);
  List_Of_HiddenCst_Ids(Machine(DISPLAY)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(DISPLAY)) == (?);
  List_Of_VisibleVar_Ids(Machine(DISPLAY)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(DISPLAY)) == (?: ?);
  List_Of_Ids(Machine(BASIC_IO)) == (? | ? | ? | ? | INTERVAL_READ,INT_WRITE,BOOL_READ,BOOL_WRITE,CHAR_READ,CHAR_WRITE,STRING_WRITE | ? | ? | ? | BASIC_IO);
  List_Of_HiddenCst_Ids(Machine(BASIC_IO)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_IO)) == (?);
  List_Of_VisibleVar_Ids(Machine(BASIC_IO)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_IO)) == (?: ?)
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(SAFER_imp)) == (Type(power) == Mvv(etype(SWITCH,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(SAFER_imp),main, 1) == (Type(Choice) == Lvl(btype(INTEGER,?,?));Type(counter) == Lvl(btype(INTEGER,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  event_b_project == KO;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == OK
END
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(SAFER_imp))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(SAFER_imp))==(power: SWITCH)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(SAFER_imp),Machine(BASIC_IO))==(?);
  ImportedVisVariablesList(Implementation(SAFER_imp),Machine(BASIC_IO))==(?);
  ImportedVariablesList(Implementation(SAFER_imp),Machine(DISPLAY))==(?);
  ImportedVisVariablesList(Implementation(SAFER_imp),Machine(DISPLAY))==(?);
  ImportedVariablesList(Implementation(SAFER_imp),Machine(av.Avionics))==(av.trans_cmd,av.power_switch,av.thrusters_to_fire);
  ImportedVisVariablesList(Implementation(SAFER_imp),Machine(av.Avionics))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
