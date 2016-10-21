Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Avionics_imp))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Avionics_imp))==(Machine(Avionics));
  Level(Implementation(Avionics_imp))==(2);
  Upper_Level(Implementation(Avionics_imp))==(Refinement(Avionics_ref))
END
&
THEORY LoadedStructureX IS
  Implementation(Avionics_imp)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Avionics_imp))==(SAFER_TYPE)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Avionics_imp))==(trans.BASIC_ARRAY_VAR,thrusters.BASIC_ARRAY_VAR);
  Inherited_List_Includes(Implementation(Avionics_imp))==(thrusters.BASIC_ARRAY_VAR,trans.BASIC_ARRAY_VAR)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Avionics_imp))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Avionics_imp))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Avionics_imp))==(?);
  Context_List_Variables(Implementation(Avionics_imp))==(?);
  Abstract_List_Variables(Implementation(Avionics_imp))==(thrusters_to_fire,trans_cmd,thrusters_to_fire,power_switch,trans_cmd);
  Local_List_Variables(Implementation(Avionics_imp))==(?);
  List_Variables(Implementation(Avionics_imp))==(transarr_vrb,thrustersarr_vrb);
  External_List_Variables(Implementation(Avionics_imp))==(trans.arr_vrb,thrusters.arr_vrb)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Avionics_imp))==(power);
  Abstract_List_VisibleVariables(Implementation(Avionics_imp))==(power);
  External_List_VisibleVariables(Implementation(Avionics_imp))==(?);
  Expanded_List_VisibleVariables(Implementation(Avionics_imp))==(?);
  List_VisibleVariables(Implementation(Avionics_imp))==(?);
  Internal_List_VisibleVariables(Implementation(Avionics_imp))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Avionics_imp))==(btrue);
  Abstract_List_Invariant(Implementation(Avionics_imp))==(power: SWITCH & power = power_switch & power_switch: SWITCH & trans_cmd: TRANS_AXIS --> AXIS_VALUE & (power_switch = OFF => ran(trans_cmd) = {ZERO}) & thrusters_to_fire <: THRUSTERS);
  Expanded_List_Invariant(Implementation(Avionics_imp))==(transarr_vrb: TRANS_AXIS --> AXIS_VALUE & thrustersarr_vrb: 0..3 --> THRUSTERS);
  Context_List_Invariant(Implementation(Avionics_imp))==(btrue);
  List_Invariant(Implementation(Avionics_imp))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(Avionics_imp))==(btrue);
  Expanded_List_Assertions(Implementation(Avionics_imp))==(btrue);
  Context_List_Assertions(Implementation(Avionics_imp))==(btrue);
  List_Assertions(Implementation(Avionics_imp))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Avionics_imp))==(@(arr_vrb$0).(arr_vrb$0: TRANS_AXIS --> AXIS_VALUE ==> transarr_vrb:=arr_vrb$0);@(arr_vrb$0).(arr_vrb$0: 0..3 --> THRUSTERS ==> thrustersarr_vrb:=arr_vrb$0);power:=OFF);
  Context_List_Initialisation(Implementation(Avionics_imp))==(skip);
  List_Initialisation(Implementation(Avionics_imp))==(power:=OFF)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Avionics_imp))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(Avionics_imp),Machine(thrusters.BASIC_ARRAY_VAR))==(btrue);
  Precond_Instanciated_Parameters(Implementation(Avionics_imp),Machine(trans.BASIC_ARRAY_VAR))==(btrue);
  List_Instanciated_Parameters(Implementation(Avionics_imp),Machine(trans.BASIC_ARRAY_VAR))==(TRANS_AXIS,AXIS_VALUE);
  List_Instanciated_Parameters(Implementation(Avionics_imp),Machine(thrusters.BASIC_ARRAY_VAR))==(0..3,THRUSTERS);
  List_Instanciated_Parameters(Implementation(Avionics_imp),Machine(SAFER_TYPE))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Avionics_imp),Machine(thrusters.BASIC_ARRAY_VAR))==(0..3: FIN(INTEGER) & not(0..3 = {}) & THRUSTERS: FIN(INTEGER) & not(THRUSTERS = {}));
  List_Constraints(Implementation(Avionics_imp))==(btrue);
  List_Context_Constraints(Implementation(Avionics_imp))==(btrue);
  List_Constraints(Implementation(Avionics_imp),Machine(trans.BASIC_ARRAY_VAR))==(TRANS_AXIS: FIN(INTEGER) & not(TRANS_AXIS = {}) & AXIS_VALUE: FIN(INTEGER) & not(AXIS_VALUE = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Avionics_imp))==(switch,translation,get_power,move);
  List_Operations(Implementation(Avionics_imp))==(switch,translation,get_power,move)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Avionics_imp),switch)==(value);
  List_Input(Implementation(Avionics_imp),translation)==(value);
  List_Input(Implementation(Avionics_imp),get_power)==(?);
  List_Input(Implementation(Avionics_imp),move)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Avionics_imp),switch)==(?);
  List_Output(Implementation(Avionics_imp),translation)==(?);
  List_Output(Implementation(Avionics_imp),get_power)==(pp);
  List_Output(Implementation(Avionics_imp),move)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Avionics_imp),switch)==(switch(value));
  List_Header(Implementation(Avionics_imp),translation)==(translation(value));
  List_Header(Implementation(Avionics_imp),get_power)==(pp <-- get_power);
  List_Header(Implementation(Avionics_imp),move)==(move)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Avionics_imp),switch)==(btrue);
  List_Precondition(Implementation(Avionics_imp),switch)==(value: SWITCH & value: SWITCH);
  Own_Precondition(Implementation(Avionics_imp),translation)==(btrue);
  List_Precondition(Implementation(Avionics_imp),translation)==(value: AXIS_VALUE & value: AXIS_VALUE & power_switch = ON);
  Own_Precondition(Implementation(Avionics_imp),get_power)==(btrue);
  List_Precondition(Implementation(Avionics_imp),get_power)==(btrue);
  Own_Precondition(Implementation(Avionics_imp),move)==(btrue);
  List_Precondition(Implementation(Avionics_imp),move)==(ran(trans_cmd)/={ZERO})
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Avionics_imp),move)==(ran(trans_cmd)/={ZERO} | (0: 0..3 & B1: THRUSTERS | thrustersarr_vrb:=thrustersarr_vrb<+{0|->B1});(1: 0..3 & B2: THRUSTERS | thrustersarr_vrb:=thrustersarr_vrb<+{1|->B2});(2: 0..3 & B3: THRUSTERS | thrustersarr_vrb:=thrustersarr_vrb<+{2|->B3});(3: 0..3 & B4: THRUSTERS | thrustersarr_vrb:=thrustersarr_vrb<+{3|->B4}));
  Expanded_List_Substitution(Implementation(Avionics_imp),get_power)==(btrue | pp:=power);
  Expanded_List_Substitution(Implementation(Avionics_imp),translation)==(value: AXIS_VALUE & value: AXIS_VALUE & power_switch = ON & XX: TRANS_AXIS & value: AXIS_VALUE | transarr_vrb:=transarr_vrb<+{XX|->value});
  Expanded_List_Substitution(Implementation(Avionics_imp),switch)==(value: SWITCH & value: SWITCH | (XX: TRANS_AXIS & ZERO: AXIS_VALUE | transarr_vrb:=transarr_vrb<+{XX|->ZERO});power:=value);
  List_Substitution(Implementation(Avionics_imp),switch)==((trans.STR_ARRAY)(XX,ZERO);power:=value);
  List_Substitution(Implementation(Avionics_imp),translation)==((trans.STR_ARRAY)(XX,value));
  List_Substitution(Implementation(Avionics_imp),get_power)==(pp:=power);
  List_Substitution(Implementation(Avionics_imp),move)==((thrusters.STR_ARRAY)(0,B1);(thrusters.STR_ARRAY)(1,B2);(thrusters.STR_ARRAY)(2,B3);(thrusters.STR_ARRAY)(3,B4))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Avionics_imp))==(?);
  Inherited_List_Constants(Implementation(Avionics_imp))==(?);
  List_Constants(Implementation(Avionics_imp))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Avionics_imp),THRUSTERS)==({B1,B2,B3,B4,F1,F2,F3,F4});
  Context_List_Enumerated(Implementation(Avionics_imp))==(AXIS_VALUE,TRANS_AXIS,SWITCH,THRUSTERS);
  Context_List_Defered(Implementation(Avionics_imp))==(?);
  Context_List_Sets(Implementation(Avionics_imp))==(AXIS_VALUE,TRANS_AXIS,SWITCH,THRUSTERS);
  List_Own_Enumerated(Implementation(Avionics_imp))==(?);
  List_Valuable_Sets(Implementation(Avionics_imp))==(?);
  Inherited_List_Enumerated(Implementation(Avionics_imp))==(?);
  Inherited_List_Defered(Implementation(Avionics_imp))==(?);
  Inherited_List_Sets(Implementation(Avionics_imp))==(?);
  List_Enumerated(Implementation(Avionics_imp))==(?);
  List_Defered(Implementation(Avionics_imp))==(?);
  List_Sets(Implementation(Avionics_imp))==(?);
  Set_Definition(Implementation(Avionics_imp),SWITCH)==({ON,OFF});
  Set_Definition(Implementation(Avionics_imp),TRANS_AXIS)==({XX});
  Set_Definition(Implementation(Avionics_imp),AXIS_VALUE)==({NEG,ZERO,POS})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Avionics_imp))==(?);
  Expanded_List_HiddenConstants(Implementation(Avionics_imp))==(?);
  List_HiddenConstants(Implementation(Avionics_imp))==(?);
  External_List_HiddenConstants(Implementation(Avionics_imp))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Avionics_imp))==(btrue);
  Context_List_Properties(Implementation(Avionics_imp))==(AXIS_VALUE: FIN(INTEGER) & not(AXIS_VALUE = {}) & TRANS_AXIS: FIN(INTEGER) & not(TRANS_AXIS = {}) & SWITCH: FIN(INTEGER) & not(SWITCH = {}) & THRUSTERS: FIN(INTEGER) & not(THRUSTERS = {}));
  Inherited_List_Properties(Implementation(Avionics_imp))==(btrue);
  List_Properties(Implementation(Avionics_imp))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Avionics_imp))==(aa: aa);
  List_Values(Implementation(Avionics_imp))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(Avionics_imp),Machine(SAFER_TYPE))==(?);
  Seen_Context_List_Enumerated(Implementation(Avionics_imp))==(?);
  Seen_Context_List_Invariant(Implementation(Avionics_imp))==(btrue);
  Seen_Context_List_Assertions(Implementation(Avionics_imp))==(btrue);
  Seen_Context_List_Properties(Implementation(Avionics_imp))==(btrue);
  Seen_List_Constraints(Implementation(Avionics_imp))==(btrue);
  Seen_List_Operations(Implementation(Avionics_imp),Machine(SAFER_TYPE))==(?);
  Seen_Expanded_List_Invariant(Implementation(Avionics_imp),Machine(SAFER_TYPE))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(Avionics_imp),Machine(BASIC_ARRAY_VAR))==(VAL_ARRAY,STR_ARRAY)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(Avionics_imp))==(Type(move) == Cst(No_type,No_type);Type(get_power) == Cst(etype(SWITCH,?,?),No_type);Type(translation) == Cst(No_type,etype(AXIS_VALUE,?,?));Type(switch) == Cst(No_type,etype(SWITCH,?,?)));
  VisibleVariables(Implementation(Avionics_imp))==(Type(power) == Mvv(etype(SWITCH,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants_Env(Implementation(Avionics_imp),Machine(SAFER_TYPE))==(Type(NEG) == Cst(etype(AXIS_VALUE,0,2));Type(ZERO) == Cst(etype(AXIS_VALUE,0,2));Type(POS) == Cst(etype(AXIS_VALUE,0,2));Type(XX) == Cst(etype(TRANS_AXIS,0,0));Type(ON) == Cst(etype(SWITCH,0,1));Type(OFF) == Cst(etype(SWITCH,0,1));Type(B1) == Cst(etype(THRUSTERS,0,7));Type(B2) == Cst(etype(THRUSTERS,0,7));Type(B3) == Cst(etype(THRUSTERS,0,7));Type(B4) == Cst(etype(THRUSTERS,0,7));Type(F1) == Cst(etype(THRUSTERS,0,7));Type(F2) == Cst(etype(THRUSTERS,0,7));Type(F3) == Cst(etype(THRUSTERS,0,7));Type(F4) == Cst(etype(THRUSTERS,0,7)));
  Enumerate_Definition(Implementation(Avionics_imp),Machine(SAFER_TYPE),THRUSTERS)==({B1,B2,B3,B4,F1,F2,F3,F4});
  Enumerate_Definition(Implementation(Avionics_imp),Machine(SAFER_TYPE),SWITCH)==({ON,OFF});
  Enumerate_Definition(Implementation(Avionics_imp),Machine(SAFER_TYPE),TRANS_AXIS)==({XX});
  Enumerate_Definition(Implementation(Avionics_imp),Machine(SAFER_TYPE),AXIS_VALUE)==({NEG,ZERO,POS})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Avionics_imp)) == (? | ? | ? | thrustersarr_vrb,transarr_vrb | switch,translation,get_power,move | ? | seen(Machine(SAFER_TYPE)),imported(Machine(trans.BASIC_ARRAY_VAR)),imported(Machine(thrusters.BASIC_ARRAY_VAR)) | ? | Avionics_imp);
  List_Of_HiddenCst_Ids(Implementation(Avionics_imp)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Avionics_imp)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Avionics_imp)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(Avionics_imp)) == (?: ?);
  List_Of_Ids(Machine(BASIC_ARRAY_VAR)) == (? | ? | arr_vrb | ? | VAL_ARRAY,STR_ARRAY | ? | ? | BAV_INDEX,BAV_VALUE | BASIC_ARRAY_VAR);
  List_Of_HiddenCst_Ids(Machine(BASIC_ARRAY_VAR)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_ARRAY_VAR)) == (?);
  List_Of_VisibleVar_Ids(Machine(BASIC_ARRAY_VAR)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_ARRAY_VAR)) == (?: ?);
  List_Of_Ids(Machine(SAFER_TYPE)) == (AXIS_VALUE,TRANS_AXIS,SWITCH,THRUSTERS,NEG,ZERO,POS,XX,ON,OFF,B1,B2,B3,B4,F1,F2,F3,F4 | ? | ? | ? | ? | ? | ? | ? | SAFER_TYPE);
  List_Of_HiddenCst_Ids(Machine(SAFER_TYPE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(SAFER_TYPE)) == (?);
  List_Of_VisibleVar_Ids(Machine(SAFER_TYPE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(SAFER_TYPE)) == (?: ?)
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Avionics_imp)) == (Type(power) == Mvv(etype(SWITCH,?,?)))
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
  List_Local_Operations(Implementation(Avionics_imp))==(?)
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
  TypingPredicate(Implementation(Avionics_imp))==(power: SWITCH)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(Avionics_imp),Machine(trans.BASIC_ARRAY_VAR))==(trans.arr_vrb);
  ImportedVisVariablesList(Implementation(Avionics_imp),Machine(trans.BASIC_ARRAY_VAR))==(?);
  ImportedVariablesList(Implementation(Avionics_imp),Machine(thrusters.BASIC_ARRAY_VAR))==(thrusters.arr_vrb);
  ImportedVisVariablesList(Implementation(Avionics_imp),Machine(thrusters.BASIC_ARRAY_VAR))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
