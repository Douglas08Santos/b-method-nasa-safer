Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(SAFER_TYPE))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(SAFER_TYPE))==(Machine(SAFER_TYPE));
  Level(Machine(SAFER_TYPE))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(SAFER_TYPE)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(SAFER_TYPE))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(SAFER_TYPE))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(SAFER_TYPE))==(?);
  List_Includes(Machine(SAFER_TYPE))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(SAFER_TYPE))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(SAFER_TYPE))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(SAFER_TYPE))==(?);
  Context_List_Variables(Machine(SAFER_TYPE))==(?);
  Abstract_List_Variables(Machine(SAFER_TYPE))==(?);
  Local_List_Variables(Machine(SAFER_TYPE))==(?);
  List_Variables(Machine(SAFER_TYPE))==(?);
  External_List_Variables(Machine(SAFER_TYPE))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(SAFER_TYPE))==(?);
  Abstract_List_VisibleVariables(Machine(SAFER_TYPE))==(?);
  External_List_VisibleVariables(Machine(SAFER_TYPE))==(?);
  Expanded_List_VisibleVariables(Machine(SAFER_TYPE))==(?);
  List_VisibleVariables(Machine(SAFER_TYPE))==(?);
  Internal_List_VisibleVariables(Machine(SAFER_TYPE))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(SAFER_TYPE))==(btrue);
  Gluing_List_Invariant(Machine(SAFER_TYPE))==(btrue);
  Expanded_List_Invariant(Machine(SAFER_TYPE))==(btrue);
  Abstract_List_Invariant(Machine(SAFER_TYPE))==(btrue);
  Context_List_Invariant(Machine(SAFER_TYPE))==(btrue);
  List_Invariant(Machine(SAFER_TYPE))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(SAFER_TYPE))==(btrue);
  Abstract_List_Assertions(Machine(SAFER_TYPE))==(btrue);
  Context_List_Assertions(Machine(SAFER_TYPE))==(btrue);
  List_Assertions(Machine(SAFER_TYPE))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(SAFER_TYPE))==(skip);
  Context_List_Initialisation(Machine(SAFER_TYPE))==(skip);
  List_Initialisation(Machine(SAFER_TYPE))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(SAFER_TYPE))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(SAFER_TYPE))==(btrue);
  List_Constraints(Machine(SAFER_TYPE))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(SAFER_TYPE))==(?);
  List_Operations(Machine(SAFER_TYPE))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(SAFER_TYPE))==(?);
  Inherited_List_Constants(Machine(SAFER_TYPE))==(?);
  List_Constants(Machine(SAFER_TYPE))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(SAFER_TYPE),AXIS_VALUE)==({NEG,ZERO,POS});
  Context_List_Enumerated(Machine(SAFER_TYPE))==(?);
  Context_List_Defered(Machine(SAFER_TYPE))==(?);
  Context_List_Sets(Machine(SAFER_TYPE))==(?);
  List_Valuable_Sets(Machine(SAFER_TYPE))==(?);
  Inherited_List_Enumerated(Machine(SAFER_TYPE))==(?);
  Inherited_List_Defered(Machine(SAFER_TYPE))==(?);
  Inherited_List_Sets(Machine(SAFER_TYPE))==(?);
  List_Enumerated(Machine(SAFER_TYPE))==(AXIS_VALUE,TRANS_AXIS,SWITCH,THRUSTERS);
  List_Defered(Machine(SAFER_TYPE))==(?);
  List_Sets(Machine(SAFER_TYPE))==(AXIS_VALUE,TRANS_AXIS,SWITCH,THRUSTERS);
  Set_Definition(Machine(SAFER_TYPE),TRANS_AXIS)==({XX});
  Set_Definition(Machine(SAFER_TYPE),SWITCH)==({ON,OFF});
  Set_Definition(Machine(SAFER_TYPE),THRUSTERS)==({B1,B2,B3,B4,F1,F2,F3,F4})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(SAFER_TYPE))==(?);
  Expanded_List_HiddenConstants(Machine(SAFER_TYPE))==(?);
  List_HiddenConstants(Machine(SAFER_TYPE))==(?);
  External_List_HiddenConstants(Machine(SAFER_TYPE))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(SAFER_TYPE))==(btrue);
  Context_List_Properties(Machine(SAFER_TYPE))==(btrue);
  Inherited_List_Properties(Machine(SAFER_TYPE))==(btrue);
  List_Properties(Machine(SAFER_TYPE))==(AXIS_VALUE: FIN(INTEGER) & not(AXIS_VALUE = {}) & TRANS_AXIS: FIN(INTEGER) & not(TRANS_AXIS = {}) & SWITCH: FIN(INTEGER) & not(SWITCH = {}) & THRUSTERS: FIN(INTEGER) & not(THRUSTERS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(SAFER_TYPE),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(SAFER_TYPE)) == (AXIS_VALUE,TRANS_AXIS,SWITCH,THRUSTERS,NEG,ZERO,POS,XX,ON,OFF,B1,B2,B3,B4,F1,F2,F3,F4 | ? | ? | ? | ? | ? | ? | ? | SAFER_TYPE);
  List_Of_HiddenCst_Ids(Machine(SAFER_TYPE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(SAFER_TYPE)) == (?);
  List_Of_VisibleVar_Ids(Machine(SAFER_TYPE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(SAFER_TYPE)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(SAFER_TYPE)) == (Type(AXIS_VALUE) == Cst(SetOf(etype(AXIS_VALUE,0,2)));Type(TRANS_AXIS) == Cst(SetOf(etype(TRANS_AXIS,0,0)));Type(SWITCH) == Cst(SetOf(etype(SWITCH,0,1)));Type(THRUSTERS) == Cst(SetOf(etype(THRUSTERS,0,7))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(SAFER_TYPE)) == (Type(NEG) == Cst(etype(AXIS_VALUE,0,2));Type(ZERO) == Cst(etype(AXIS_VALUE,0,2));Type(POS) == Cst(etype(AXIS_VALUE,0,2));Type(XX) == Cst(etype(TRANS_AXIS,0,0));Type(ON) == Cst(etype(SWITCH,0,1));Type(OFF) == Cst(etype(SWITCH,0,1));Type(B1) == Cst(etype(THRUSTERS,0,7));Type(B2) == Cst(etype(THRUSTERS,0,7));Type(B3) == Cst(etype(THRUSTERS,0,7));Type(B4) == Cst(etype(THRUSTERS,0,7));Type(F1) == Cst(etype(THRUSTERS,0,7));Type(F2) == Cst(etype(THRUSTERS,0,7));Type(F3) == Cst(etype(THRUSTERS,0,7));Type(F4) == Cst(etype(THRUSTERS,0,7)))
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
