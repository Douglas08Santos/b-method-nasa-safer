Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Avionics))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Avionics))==(Machine(Avionics));
  Level(Machine(Avionics))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Avionics)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Avionics))==(SAFER_TYPE)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Avionics))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Avionics))==(?);
  List_Includes(Machine(Avionics))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Avionics))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Avionics))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Avionics))==(?);
  Context_List_Variables(Machine(Avionics))==(?);
  Abstract_List_Variables(Machine(Avionics))==(?);
  Local_List_Variables(Machine(Avionics))==(thrusters_to_fire,power_switch,trans_cmd);
  List_Variables(Machine(Avionics))==(thrusters_to_fire,power_switch,trans_cmd);
  External_List_Variables(Machine(Avionics))==(thrusters_to_fire,power_switch,trans_cmd)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Avionics))==(?);
  Abstract_List_VisibleVariables(Machine(Avionics))==(?);
  External_List_VisibleVariables(Machine(Avionics))==(?);
  Expanded_List_VisibleVariables(Machine(Avionics))==(?);
  List_VisibleVariables(Machine(Avionics))==(?);
  Internal_List_VisibleVariables(Machine(Avionics))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Avionics))==(btrue);
  Gluing_List_Invariant(Machine(Avionics))==(btrue);
  Expanded_List_Invariant(Machine(Avionics))==(btrue);
  Abstract_List_Invariant(Machine(Avionics))==(btrue);
  Context_List_Invariant(Machine(Avionics))==(btrue);
  List_Invariant(Machine(Avionics))==(power_switch: SWITCH & trans_cmd: TRANS_AXIS --> AXIS_VALUE & (power_switch = OFF => ran(trans_cmd) = {ZERO}) & thrusters_to_fire <: THRUSTERS)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Avionics))==(btrue);
  Abstract_List_Assertions(Machine(Avionics))==(btrue);
  Context_List_Assertions(Machine(Avionics))==(btrue);
  List_Assertions(Machine(Avionics))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Avionics))==(power_switch,trans_cmd,thrusters_to_fire:=OFF,{XX|->ZERO},{});
  Context_List_Initialisation(Machine(Avionics))==(skip);
  List_Initialisation(Machine(Avionics))==(power_switch:=OFF || trans_cmd:={XX|->ZERO} || thrusters_to_fire:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Avionics))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Avionics),Machine(SAFER_TYPE))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Avionics))==(btrue);
  List_Constraints(Machine(Avionics))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Avionics))==(switch,translation,get_power,move);
  List_Operations(Machine(Avionics))==(switch,translation,get_power,move)
END
&
THEORY ListInputX IS
  List_Input(Machine(Avionics),switch)==(value);
  List_Input(Machine(Avionics),translation)==(value);
  List_Input(Machine(Avionics),get_power)==(?);
  List_Input(Machine(Avionics),move)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Avionics),switch)==(?);
  List_Output(Machine(Avionics),translation)==(?);
  List_Output(Machine(Avionics),get_power)==(pp);
  List_Output(Machine(Avionics),move)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Avionics),switch)==(switch(value));
  List_Header(Machine(Avionics),translation)==(translation(value));
  List_Header(Machine(Avionics),get_power)==(pp <-- get_power);
  List_Header(Machine(Avionics),move)==(move)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Avionics),switch)==(value: SWITCH);
  List_Precondition(Machine(Avionics),translation)==(value: AXIS_VALUE & power_switch = ON);
  List_Precondition(Machine(Avionics),get_power)==(btrue);
  List_Precondition(Machine(Avionics),move)==(ran(trans_cmd)/={ZERO})
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Avionics),move)==(ran(trans_cmd)/={ZERO} | ran(trans_cmd) = {POS} ==> thrusters_to_fire:={B1,B2,B3,B4} [] not(ran(trans_cmd) = {POS}) ==> thrusters_to_fire:={F1,F2,F3,F4});
  Expanded_List_Substitution(Machine(Avionics),get_power)==(btrue | @(pp$0).(pp$0: SWITCH ==> pp:=pp$0));
  Expanded_List_Substitution(Machine(Avionics),translation)==(value: AXIS_VALUE & power_switch = ON | trans_cmd:={XX|->value});
  Expanded_List_Substitution(Machine(Avionics),switch)==(value: SWITCH | power_switch,trans_cmd:=value,{XX|->ZERO});
  List_Substitution(Machine(Avionics),switch)==(power_switch:=value || trans_cmd:={XX|->ZERO});
  List_Substitution(Machine(Avionics),translation)==(trans_cmd:={XX|->value});
  List_Substitution(Machine(Avionics),get_power)==(pp:: SWITCH);
  List_Substitution(Machine(Avionics),move)==(IF ran(trans_cmd) = {POS} THEN thrusters_to_fire:={B1,B2,B3,B4} ELSE thrusters_to_fire:={F1,F2,F3,F4} END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Avionics))==(?);
  Inherited_List_Constants(Machine(Avionics))==(?);
  List_Constants(Machine(Avionics))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Avionics),THRUSTERS)==({B1,B2,B3,B4,F1,F2,F3,F4});
  Context_List_Enumerated(Machine(Avionics))==(AXIS_VALUE,TRANS_AXIS,SWITCH,THRUSTERS);
  Context_List_Defered(Machine(Avionics))==(?);
  Context_List_Sets(Machine(Avionics))==(AXIS_VALUE,TRANS_AXIS,SWITCH,THRUSTERS);
  List_Valuable_Sets(Machine(Avionics))==(?);
  Inherited_List_Enumerated(Machine(Avionics))==(?);
  Inherited_List_Defered(Machine(Avionics))==(?);
  Inherited_List_Sets(Machine(Avionics))==(?);
  List_Enumerated(Machine(Avionics))==(?);
  List_Defered(Machine(Avionics))==(?);
  List_Sets(Machine(Avionics))==(?);
  Set_Definition(Machine(Avionics),SWITCH)==({ON,OFF});
  Set_Definition(Machine(Avionics),TRANS_AXIS)==({XX});
  Set_Definition(Machine(Avionics),AXIS_VALUE)==({NEG,ZERO,POS})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Avionics))==(?);
  Expanded_List_HiddenConstants(Machine(Avionics))==(?);
  List_HiddenConstants(Machine(Avionics))==(?);
  External_List_HiddenConstants(Machine(Avionics))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Avionics))==(btrue);
  Context_List_Properties(Machine(Avionics))==(AXIS_VALUE: FIN(INTEGER) & not(AXIS_VALUE = {}) & TRANS_AXIS: FIN(INTEGER) & not(TRANS_AXIS = {}) & SWITCH: FIN(INTEGER) & not(SWITCH = {}) & THRUSTERS: FIN(INTEGER) & not(THRUSTERS = {}));
  Inherited_List_Properties(Machine(Avionics))==(btrue);
  List_Properties(Machine(Avionics))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Avionics),Machine(SAFER_TYPE))==(?);
  Seen_Context_List_Enumerated(Machine(Avionics))==(?);
  Seen_Context_List_Invariant(Machine(Avionics))==(btrue);
  Seen_Context_List_Assertions(Machine(Avionics))==(btrue);
  Seen_Context_List_Properties(Machine(Avionics))==(btrue);
  Seen_List_Constraints(Machine(Avionics))==(btrue);
  Seen_List_Operations(Machine(Avionics),Machine(SAFER_TYPE))==(?);
  Seen_Expanded_List_Invariant(Machine(Avionics),Machine(SAFER_TYPE))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Avionics),switch)==(?);
  List_ANY_Var(Machine(Avionics),translation)==(?);
  List_ANY_Var(Machine(Avionics),get_power)==(?);
  List_ANY_Var(Machine(Avionics),move)==(?);
  List_ANY_Var(Machine(Avionics),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Avionics)) == (? | ? | thrusters_to_fire,power_switch,trans_cmd | ? | switch,translation,get_power,move | ? | seen(Machine(SAFER_TYPE)) | ? | Avionics);
  List_Of_HiddenCst_Ids(Machine(Avionics)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Avionics)) == (?);
  List_Of_VisibleVar_Ids(Machine(Avionics)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Avionics)) == (?: ?);
  List_Of_Ids(Machine(SAFER_TYPE)) == (AXIS_VALUE,TRANS_AXIS,SWITCH,THRUSTERS,NEG,ZERO,POS,XX,ON,OFF,B1,B2,B3,B4,F1,F2,F3,F4 | ? | ? | ? | ? | ? | ? | ? | SAFER_TYPE);
  List_Of_HiddenCst_Ids(Machine(SAFER_TYPE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(SAFER_TYPE)) == (?);
  List_Of_VisibleVar_Ids(Machine(SAFER_TYPE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(SAFER_TYPE)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Avionics)) == (Type(thrusters_to_fire) == Mvl(SetOf(etype(THRUSTERS,?,?)));Type(power_switch) == Mvl(etype(SWITCH,?,?));Type(trans_cmd) == Mvl(SetOf(etype(TRANS_AXIS,0,0)*etype(AXIS_VALUE,0,2))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Avionics)) == (Type(move) == Cst(No_type,No_type);Type(get_power) == Cst(etype(SWITCH,?,?),No_type);Type(translation) == Cst(No_type,etype(AXIS_VALUE,?,?));Type(switch) == Cst(No_type,etype(SWITCH,?,?)));
  Observers(Machine(Avionics)) == (Type(get_power) == Cst(etype(SWITCH,?,?),No_type))
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
