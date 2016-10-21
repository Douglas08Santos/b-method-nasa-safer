Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(Avionics_ref))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(Avionics_ref))==(Machine(Avionics));
  Level(Refinement(Avionics_ref))==(1);
  Upper_Level(Refinement(Avionics_ref))==(Machine(Avionics))
END
&
THEORY LoadedStructureX IS
  Refinement(Avionics_ref)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(Avionics_ref))==(SAFER_TYPE)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(Avionics_ref))==(?);
  List_Includes(Refinement(Avionics_ref))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(Avionics_ref))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(Avionics_ref))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(Avionics_ref))==(?);
  Context_List_Variables(Refinement(Avionics_ref))==(?);
  Abstract_List_Variables(Refinement(Avionics_ref))==(thrusters_to_fire,power_switch,trans_cmd);
  Local_List_Variables(Refinement(Avionics_ref))==(thrusters_to_fire,trans_cmd);
  List_Variables(Refinement(Avionics_ref))==(thrusters_to_fire,trans_cmd);
  External_List_Variables(Refinement(Avionics_ref))==(thrusters_to_fire,trans_cmd)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(Avionics_ref))==(?);
  Abstract_List_VisibleVariables(Refinement(Avionics_ref))==(?);
  External_List_VisibleVariables(Refinement(Avionics_ref))==(?);
  Expanded_List_VisibleVariables(Refinement(Avionics_ref))==(?);
  List_VisibleVariables(Refinement(Avionics_ref))==(power);
  Internal_List_VisibleVariables(Refinement(Avionics_ref))==(power)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(Avionics_ref))==(power)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(Avionics_ref))==(btrue);
  Expanded_List_Invariant(Refinement(Avionics_ref))==(btrue);
  Abstract_List_Invariant(Refinement(Avionics_ref))==(power_switch: SWITCH & trans_cmd: TRANS_AXIS --> AXIS_VALUE & (power_switch = OFF => ran(trans_cmd) = {ZERO}) & thrusters_to_fire <: THRUSTERS);
  Context_List_Invariant(Refinement(Avionics_ref))==(btrue);
  List_Invariant(Refinement(Avionics_ref))==(power: SWITCH & power = power_switch)
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(Avionics_ref))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(Avionics_ref))==(btrue);
  Abstract_List_Assertions(Refinement(Avionics_ref))==(btrue);
  Context_List_Assertions(Refinement(Avionics_ref))==(btrue);
  List_Assertions(Refinement(Avionics_ref))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(Avionics_ref))==(power:=OFF;trans_cmd:={XX|->ZERO};thrusters_to_fire:={});
  Context_List_Initialisation(Refinement(Avionics_ref))==(skip);
  List_Initialisation(Refinement(Avionics_ref))==(power:=OFF;trans_cmd:={XX|->ZERO};thrusters_to_fire:={})
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(Avionics_ref))==(switch,translation,get_power,move);
  List_Operations(Refinement(Avionics_ref))==(switch,translation,get_power,move)
END
&
THEORY ListInputX IS
  List_Input(Refinement(Avionics_ref),switch)==(value);
  List_Input(Refinement(Avionics_ref),translation)==(value);
  List_Input(Refinement(Avionics_ref),get_power)==(?);
  List_Input(Refinement(Avionics_ref),move)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(Avionics_ref),switch)==(?);
  List_Output(Refinement(Avionics_ref),translation)==(?);
  List_Output(Refinement(Avionics_ref),get_power)==(pp);
  List_Output(Refinement(Avionics_ref),move)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(Avionics_ref),switch)==(switch(value));
  List_Header(Refinement(Avionics_ref),translation)==(translation(value));
  List_Header(Refinement(Avionics_ref),get_power)==(pp <-- get_power);
  List_Header(Refinement(Avionics_ref),move)==(move)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(Avionics_ref),switch)==(value: SWITCH);
  List_Precondition(Refinement(Avionics_ref),switch)==(value: SWITCH & value: SWITCH);
  Own_Precondition(Refinement(Avionics_ref),translation)==(value: AXIS_VALUE);
  List_Precondition(Refinement(Avionics_ref),translation)==(value: AXIS_VALUE & value: AXIS_VALUE & power_switch = ON);
  Own_Precondition(Refinement(Avionics_ref),get_power)==(btrue);
  List_Precondition(Refinement(Avionics_ref),get_power)==(btrue);
  Own_Precondition(Refinement(Avionics_ref),move)==(btrue);
  List_Precondition(Refinement(Avionics_ref),move)==(ran(trans_cmd)/={ZERO})
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(Avionics_ref),move)==(ran(trans_cmd)/={ZERO} | ran(trans_cmd) = {POS} ==> thrusters_to_fire:={B1,B2,B3,B4} [] not(ran(trans_cmd) = {POS}) ==> thrusters_to_fire:={F1,F2,F3,F4});
  Expanded_List_Substitution(Refinement(Avionics_ref),get_power)==(btrue | pp:=power);
  Expanded_List_Substitution(Refinement(Avionics_ref),translation)==(value: AXIS_VALUE & value: AXIS_VALUE & power_switch = ON | trans_cmd:={XX|->value});
  Expanded_List_Substitution(Refinement(Avionics_ref),switch)==(value: SWITCH & value: SWITCH | trans_cmd:={XX|->ZERO};power:=value);
  List_Substitution(Refinement(Avionics_ref),switch)==(trans_cmd:={XX|->ZERO};power:=value);
  List_Substitution(Refinement(Avionics_ref),translation)==(trans_cmd:={XX|->value});
  List_Substitution(Refinement(Avionics_ref),get_power)==(pp:=power);
  List_Substitution(Refinement(Avionics_ref),move)==(IF ran(trans_cmd) = {POS} THEN thrusters_to_fire:={B1,B2,B3,B4} ELSE thrusters_to_fire:={F1,F2,F3,F4} END)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(Avionics_ref))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Refinement(Avionics_ref),Machine(SAFER_TYPE))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(Avionics_ref))==(btrue);
  List_Context_Constraints(Refinement(Avionics_ref))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(Avionics_ref))==(?);
  Inherited_List_Constants(Refinement(Avionics_ref))==(?);
  List_Constants(Refinement(Avionics_ref))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(Avionics_ref),THRUSTERS)==({B1,B2,B3,B4,F1,F2,F3,F4});
  Context_List_Enumerated(Refinement(Avionics_ref))==(AXIS_VALUE,TRANS_AXIS,SWITCH,THRUSTERS);
  Context_List_Defered(Refinement(Avionics_ref))==(?);
  Context_List_Sets(Refinement(Avionics_ref))==(AXIS_VALUE,TRANS_AXIS,SWITCH,THRUSTERS);
  List_Valuable_Sets(Refinement(Avionics_ref))==(?);
  Inherited_List_Enumerated(Refinement(Avionics_ref))==(?);
  Inherited_List_Defered(Refinement(Avionics_ref))==(?);
  Inherited_List_Sets(Refinement(Avionics_ref))==(?);
  List_Enumerated(Refinement(Avionics_ref))==(?);
  List_Defered(Refinement(Avionics_ref))==(?);
  List_Sets(Refinement(Avionics_ref))==(?);
  Set_Definition(Refinement(Avionics_ref),SWITCH)==({ON,OFF});
  Set_Definition(Refinement(Avionics_ref),TRANS_AXIS)==({XX});
  Set_Definition(Refinement(Avionics_ref),AXIS_VALUE)==({NEG,ZERO,POS})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(Avionics_ref))==(?);
  Expanded_List_HiddenConstants(Refinement(Avionics_ref))==(?);
  List_HiddenConstants(Refinement(Avionics_ref))==(?);
  External_List_HiddenConstants(Refinement(Avionics_ref))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(Avionics_ref))==(btrue);
  Context_List_Properties(Refinement(Avionics_ref))==(AXIS_VALUE: FIN(INTEGER) & not(AXIS_VALUE = {}) & TRANS_AXIS: FIN(INTEGER) & not(TRANS_AXIS = {}) & SWITCH: FIN(INTEGER) & not(SWITCH = {}) & THRUSTERS: FIN(INTEGER) & not(THRUSTERS = {}));
  Inherited_List_Properties(Refinement(Avionics_ref))==(btrue);
  List_Properties(Refinement(Avionics_ref))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Refinement(Avionics_ref),Machine(SAFER_TYPE))==(?);
  Seen_Context_List_Enumerated(Refinement(Avionics_ref))==(?);
  Seen_Context_List_Invariant(Refinement(Avionics_ref))==(btrue);
  Seen_Context_List_Assertions(Refinement(Avionics_ref))==(btrue);
  Seen_Context_List_Properties(Refinement(Avionics_ref))==(btrue);
  Seen_List_Constraints(Refinement(Avionics_ref))==(btrue);
  Seen_List_Operations(Refinement(Avionics_ref),Machine(SAFER_TYPE))==(?);
  Seen_Expanded_List_Invariant(Refinement(Avionics_ref),Machine(SAFER_TYPE))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(Avionics_ref),switch)==(?);
  List_ANY_Var(Refinement(Avionics_ref),translation)==(?);
  List_ANY_Var(Refinement(Avionics_ref),get_power)==(?);
  List_ANY_Var(Refinement(Avionics_ref),move)==(?);
  List_ANY_Var(Refinement(Avionics_ref),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(Avionics_ref)) == (? | ? | thrusters_to_fire,trans_cmd | ? | switch,translation,get_power,move | ? | seen(Machine(SAFER_TYPE)) | ? | Avionics_ref);
  List_Of_HiddenCst_Ids(Refinement(Avionics_ref)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(Avionics_ref)) == (?);
  List_Of_VisibleVar_Ids(Refinement(Avionics_ref)) == (power | ?);
  List_Of_Ids_SeenBNU(Refinement(Avionics_ref)) == (?: ?);
  List_Of_Ids(Machine(SAFER_TYPE)) == (AXIS_VALUE,TRANS_AXIS,SWITCH,THRUSTERS,NEG,ZERO,POS,XX,ON,OFF,B1,B2,B3,B4,F1,F2,F3,F4 | ? | ? | ? | ? | ? | ? | ? | SAFER_TYPE);
  List_Of_HiddenCst_Ids(Machine(SAFER_TYPE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(SAFER_TYPE)) == (?);
  List_Of_VisibleVar_Ids(Machine(SAFER_TYPE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(SAFER_TYPE)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(Avionics_ref)) == (Type(thrusters_to_fire) == Mvl(SetOf(etype(THRUSTERS,?,?)));Type(trans_cmd) == Mvl(SetOf(etype(TRANS_AXIS,0,0)*etype(AXIS_VALUE,0,2))))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Refinement(Avionics_ref)) == (Type(power) == Mvv(etype(SWITCH,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(Avionics_ref)) == (Type(move) == Cst(No_type,No_type);Type(get_power) == Cst(etype(SWITCH,?,?),No_type);Type(translation) == Cst(No_type,etype(AXIS_VALUE,?,?));Type(switch) == Cst(No_type,etype(SWITCH,?,?)))
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
)
