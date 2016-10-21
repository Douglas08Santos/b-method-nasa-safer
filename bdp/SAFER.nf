Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(SAFER))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(SAFER))==(Machine(SAFER));
  Level(Machine(SAFER))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(SAFER)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(SAFER))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(SAFER))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(SAFER))==(?);
  List_Includes(Machine(SAFER))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(SAFER))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(SAFER))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(SAFER))==(?);
  Context_List_Variables(Machine(SAFER))==(?);
  Abstract_List_Variables(Machine(SAFER))==(?);
  Local_List_Variables(Machine(SAFER))==(?);
  List_Variables(Machine(SAFER))==(?);
  External_List_Variables(Machine(SAFER))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(SAFER))==(?);
  Abstract_List_VisibleVariables(Machine(SAFER))==(?);
  External_List_VisibleVariables(Machine(SAFER))==(?);
  Expanded_List_VisibleVariables(Machine(SAFER))==(?);
  List_VisibleVariables(Machine(SAFER))==(?);
  Internal_List_VisibleVariables(Machine(SAFER))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(SAFER))==(btrue);
  Gluing_List_Invariant(Machine(SAFER))==(btrue);
  Expanded_List_Invariant(Machine(SAFER))==(btrue);
  Abstract_List_Invariant(Machine(SAFER))==(btrue);
  Context_List_Invariant(Machine(SAFER))==(btrue);
  List_Invariant(Machine(SAFER))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(SAFER))==(btrue);
  Abstract_List_Assertions(Machine(SAFER))==(btrue);
  Context_List_Assertions(Machine(SAFER))==(btrue);
  List_Assertions(Machine(SAFER))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(SAFER))==(skip);
  Context_List_Initialisation(Machine(SAFER))==(skip);
  List_Initialisation(Machine(SAFER))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(SAFER))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(SAFER))==(btrue);
  List_Constraints(Machine(SAFER))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(SAFER))==(main);
  List_Operations(Machine(SAFER))==(main)
END
&
THEORY ListInputX IS
  List_Input(Machine(SAFER),main)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(SAFER),main)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(SAFER),main)==(main)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(SAFER),main)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(SAFER),main)==(btrue | skip);
  List_Substitution(Machine(SAFER),main)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(SAFER))==(?);
  Inherited_List_Constants(Machine(SAFER))==(?);
  List_Constants(Machine(SAFER))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(SAFER))==(?);
  Context_List_Defered(Machine(SAFER))==(?);
  Context_List_Sets(Machine(SAFER))==(?);
  List_Valuable_Sets(Machine(SAFER))==(?);
  Inherited_List_Enumerated(Machine(SAFER))==(?);
  Inherited_List_Defered(Machine(SAFER))==(?);
  Inherited_List_Sets(Machine(SAFER))==(?);
  List_Enumerated(Machine(SAFER))==(?);
  List_Defered(Machine(SAFER))==(?);
  List_Sets(Machine(SAFER))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(SAFER))==(?);
  Expanded_List_HiddenConstants(Machine(SAFER))==(?);
  List_HiddenConstants(Machine(SAFER))==(?);
  External_List_HiddenConstants(Machine(SAFER))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(SAFER))==(btrue);
  Context_List_Properties(Machine(SAFER))==(btrue);
  Inherited_List_Properties(Machine(SAFER))==(btrue);
  List_Properties(Machine(SAFER))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(SAFER),main)==(?);
  List_ANY_Var(Machine(SAFER),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(SAFER)) == (? | ? | ? | ? | main | ? | ? | ? | SAFER);
  List_Of_HiddenCst_Ids(Machine(SAFER)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(SAFER)) == (?);
  List_Of_VisibleVar_Ids(Machine(SAFER)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(SAFER)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(SAFER)) == (Type(main) == Cst(No_type,No_type));
  Observers(Machine(SAFER)) == (Type(main) == Cst(No_type,No_type))
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
