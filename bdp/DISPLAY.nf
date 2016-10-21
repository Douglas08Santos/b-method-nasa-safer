Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(DISPLAY))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(DISPLAY))==(Machine(DISPLAY));
  Level(Machine(DISPLAY))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(DISPLAY)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(DISPLAY))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(DISPLAY))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(DISPLAY))==(?);
  List_Includes(Machine(DISPLAY))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(DISPLAY))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(DISPLAY))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(DISPLAY))==(?);
  Context_List_Variables(Machine(DISPLAY))==(?);
  Abstract_List_Variables(Machine(DISPLAY))==(?);
  Local_List_Variables(Machine(DISPLAY))==(?);
  List_Variables(Machine(DISPLAY))==(?);
  External_List_Variables(Machine(DISPLAY))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(DISPLAY))==(?);
  Abstract_List_VisibleVariables(Machine(DISPLAY))==(?);
  External_List_VisibleVariables(Machine(DISPLAY))==(?);
  Expanded_List_VisibleVariables(Machine(DISPLAY))==(?);
  List_VisibleVariables(Machine(DISPLAY))==(?);
  Internal_List_VisibleVariables(Machine(DISPLAY))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(DISPLAY))==(btrue);
  Gluing_List_Invariant(Machine(DISPLAY))==(btrue);
  Expanded_List_Invariant(Machine(DISPLAY))==(btrue);
  Abstract_List_Invariant(Machine(DISPLAY))==(btrue);
  Context_List_Invariant(Machine(DISPLAY))==(btrue);
  List_Invariant(Machine(DISPLAY))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(DISPLAY))==(btrue);
  Abstract_List_Assertions(Machine(DISPLAY))==(btrue);
  Context_List_Assertions(Machine(DISPLAY))==(btrue);
  List_Assertions(Machine(DISPLAY))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(DISPLAY))==(skip);
  Context_List_Initialisation(Machine(DISPLAY))==(skip);
  List_Initialisation(Machine(DISPLAY))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(DISPLAY))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(DISPLAY))==(btrue);
  List_Constraints(Machine(DISPLAY))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(DISPLAY))==(display_menu);
  List_Operations(Machine(DISPLAY))==(display_menu)
END
&
THEORY ListInputX IS
  List_Input(Machine(DISPLAY),display_menu)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(DISPLAY),display_menu)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(DISPLAY),display_menu)==(display_menu)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(DISPLAY),display_menu)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(DISPLAY),display_menu)==(btrue | skip);
  List_Substitution(Machine(DISPLAY),display_menu)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(DISPLAY))==(?);
  Inherited_List_Constants(Machine(DISPLAY))==(?);
  List_Constants(Machine(DISPLAY))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(DISPLAY))==(?);
  Context_List_Defered(Machine(DISPLAY))==(?);
  Context_List_Sets(Machine(DISPLAY))==(?);
  List_Valuable_Sets(Machine(DISPLAY))==(?);
  Inherited_List_Enumerated(Machine(DISPLAY))==(?);
  Inherited_List_Defered(Machine(DISPLAY))==(?);
  Inherited_List_Sets(Machine(DISPLAY))==(?);
  List_Enumerated(Machine(DISPLAY))==(?);
  List_Defered(Machine(DISPLAY))==(?);
  List_Sets(Machine(DISPLAY))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(DISPLAY))==(?);
  Expanded_List_HiddenConstants(Machine(DISPLAY))==(?);
  List_HiddenConstants(Machine(DISPLAY))==(?);
  External_List_HiddenConstants(Machine(DISPLAY))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(DISPLAY))==(btrue);
  Context_List_Properties(Machine(DISPLAY))==(btrue);
  Inherited_List_Properties(Machine(DISPLAY))==(btrue);
  List_Properties(Machine(DISPLAY))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(DISPLAY),display_menu)==(?);
  List_ANY_Var(Machine(DISPLAY),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(DISPLAY)) == (? | ? | ? | ? | display_menu | ? | ? | ? | DISPLAY);
  List_Of_HiddenCst_Ids(Machine(DISPLAY)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(DISPLAY)) == (?);
  List_Of_VisibleVar_Ids(Machine(DISPLAY)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(DISPLAY)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(DISPLAY)) == (Type(display_menu) == Cst(No_type,No_type));
  Observers(Machine(DISPLAY)) == (Type(display_menu) == Cst(No_type,No_type))
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
