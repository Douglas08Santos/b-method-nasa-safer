Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(DISPLAY_imp))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(DISPLAY_imp))==(Machine(DISPLAY));
  Level(Implementation(DISPLAY_imp))==(1);
  Upper_Level(Implementation(DISPLAY_imp))==(Machine(DISPLAY))
END
&
THEORY LoadedStructureX IS
  Implementation(DISPLAY_imp)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(DISPLAY_imp))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(DISPLAY_imp))==(BASIC_IO);
  Inherited_List_Includes(Implementation(DISPLAY_imp))==(BASIC_IO)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(DISPLAY_imp))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(DISPLAY_imp))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(DISPLAY_imp))==(?);
  Context_List_Variables(Implementation(DISPLAY_imp))==(?);
  Abstract_List_Variables(Implementation(DISPLAY_imp))==(?);
  Local_List_Variables(Implementation(DISPLAY_imp))==(?);
  List_Variables(Implementation(DISPLAY_imp))==(?);
  External_List_Variables(Implementation(DISPLAY_imp))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(DISPLAY_imp))==(?);
  Abstract_List_VisibleVariables(Implementation(DISPLAY_imp))==(?);
  External_List_VisibleVariables(Implementation(DISPLAY_imp))==(?);
  Expanded_List_VisibleVariables(Implementation(DISPLAY_imp))==(?);
  List_VisibleVariables(Implementation(DISPLAY_imp))==(?);
  Internal_List_VisibleVariables(Implementation(DISPLAY_imp))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(DISPLAY_imp))==(btrue);
  Abstract_List_Invariant(Implementation(DISPLAY_imp))==(btrue);
  Expanded_List_Invariant(Implementation(DISPLAY_imp))==(btrue);
  Context_List_Invariant(Implementation(DISPLAY_imp))==(btrue);
  List_Invariant(Implementation(DISPLAY_imp))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(DISPLAY_imp))==(btrue);
  Expanded_List_Assertions(Implementation(DISPLAY_imp))==(btrue);
  Context_List_Assertions(Implementation(DISPLAY_imp))==(btrue);
  List_Assertions(Implementation(DISPLAY_imp))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(DISPLAY_imp))==(skip);
  Context_List_Initialisation(Implementation(DISPLAY_imp))==(skip);
  List_Initialisation(Implementation(DISPLAY_imp))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(DISPLAY_imp))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(DISPLAY_imp),Machine(BASIC_IO))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(DISPLAY_imp),Machine(BASIC_IO))==(btrue);
  List_Constraints(Implementation(DISPLAY_imp))==(btrue);
  List_Context_Constraints(Implementation(DISPLAY_imp))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(DISPLAY_imp))==(display_menu);
  List_Operations(Implementation(DISPLAY_imp))==(display_menu)
END
&
THEORY ListInputX IS
  List_Input(Implementation(DISPLAY_imp),display_menu)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(DISPLAY_imp),display_menu)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(DISPLAY_imp),display_menu)==(display_menu)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(DISPLAY_imp),display_menu)==(btrue);
  List_Precondition(Implementation(DISPLAY_imp),display_menu)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(DISPLAY_imp),display_menu)==(btrue | ("0 Quit": STRING | skip);("1 Switch ON\n": STRING | skip);("2 Switch OFF\n": STRING | skip);("3 Move Forward\n": STRING | skip);("4 Move Backward\n": STRING | skip));
  List_Substitution(Implementation(DISPLAY_imp),display_menu)==(STRING_WRITE("0 Quit");STRING_WRITE("1 Switch ON\n");STRING_WRITE("2 Switch OFF\n");STRING_WRITE("3 Move Forward\n");STRING_WRITE("4 Move Backward\n"))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(DISPLAY_imp))==(?);
  Inherited_List_Constants(Implementation(DISPLAY_imp))==(?);
  List_Constants(Implementation(DISPLAY_imp))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(DISPLAY_imp))==(?);
  Context_List_Defered(Implementation(DISPLAY_imp))==(?);
  Context_List_Sets(Implementation(DISPLAY_imp))==(?);
  List_Own_Enumerated(Implementation(DISPLAY_imp))==(?);
  List_Valuable_Sets(Implementation(DISPLAY_imp))==(?);
  Inherited_List_Enumerated(Implementation(DISPLAY_imp))==(?);
  Inherited_List_Defered(Implementation(DISPLAY_imp))==(?);
  Inherited_List_Sets(Implementation(DISPLAY_imp))==(?);
  List_Enumerated(Implementation(DISPLAY_imp))==(?);
  List_Defered(Implementation(DISPLAY_imp))==(?);
  List_Sets(Implementation(DISPLAY_imp))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(DISPLAY_imp))==(?);
  Expanded_List_HiddenConstants(Implementation(DISPLAY_imp))==(?);
  List_HiddenConstants(Implementation(DISPLAY_imp))==(?);
  External_List_HiddenConstants(Implementation(DISPLAY_imp))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(DISPLAY_imp))==(btrue);
  Context_List_Properties(Implementation(DISPLAY_imp))==(btrue);
  Inherited_List_Properties(Implementation(DISPLAY_imp))==(btrue);
  List_Properties(Implementation(DISPLAY_imp))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(DISPLAY_imp))==(aa: aa);
  List_Values(Implementation(DISPLAY_imp))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(DISPLAY_imp),Machine(BASIC_IO))==(INTERVAL_READ,INT_WRITE,BOOL_READ,BOOL_WRITE,CHAR_READ,CHAR_WRITE,STRING_WRITE)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(DISPLAY_imp))==(Type(display_menu) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(DISPLAY_imp)) == (? | ? | ? | ? | display_menu | ? | imported(Machine(BASIC_IO)) | ? | DISPLAY_imp);
  List_Of_HiddenCst_Ids(Implementation(DISPLAY_imp)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(DISPLAY_imp)) == (?);
  List_Of_VisibleVar_Ids(Implementation(DISPLAY_imp)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(DISPLAY_imp)) == (?: ?);
  List_Of_Ids(Machine(BASIC_IO)) == (? | ? | ? | ? | INTERVAL_READ,INT_WRITE,BOOL_READ,BOOL_WRITE,CHAR_READ,CHAR_WRITE,STRING_WRITE | ? | ? | ? | BASIC_IO);
  List_Of_HiddenCst_Ids(Machine(BASIC_IO)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_IO)) == (?);
  List_Of_VisibleVar_Ids(Machine(BASIC_IO)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_IO)) == (?: ?)
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
  List_Local_Operations(Implementation(DISPLAY_imp))==(?)
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
  TypingPredicate(Implementation(DISPLAY_imp))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(DISPLAY_imp),Machine(BASIC_IO))==(?);
  ImportedVisVariablesList(Implementation(DISPLAY_imp),Machine(BASIC_IO))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
