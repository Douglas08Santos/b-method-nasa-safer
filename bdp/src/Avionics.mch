/* Avionics                                                                                          
 * Author:                                                                                           
 * Creation date: Sat Nov 22 2008                                                                    
 */
MACHINE
    Avionics

SEES
    SAFER_TYPE

ABSTRACT_VARIABLES
    trans_cmd , power_switch , thrusters_to_fire

INVARIANT
    power_switch : SWITCH &
    trans_cmd : TRANS_AXIS --> AXIS_VALUE &
    ( power_switch = OFF => ran ( trans_cmd ) = { ZERO } ) &
    thrusters_to_fire <: THRUSTERS

INITIALISATION
    power_switch := OFF ||
    trans_cmd := { XX |-> ZERO } ||
    thrusters_to_fire := {}

OPERATIONS

    switch ( value ) =
         PRE
                 value : SWITCH
            THEN
                    power_switch := value ||
                trans_cmd := { XX |-> ZERO }
            END ;

    translation ( value ) =
         PRE
             value : AXIS_VALUE &
             power_switch = ON
           THEN
             trans_cmd := { XX |-> value }
        END ;

    pp <-- get_power =
            BEGIN
                pp :: SWITCH
            END ;

        move =
            PRE
            ran ( trans_cmd ) /= { ZERO }
        THEN
                IF ran ( trans_cmd ) = { POS }
                        THEN thrusters_to_fire := { B1 , B2 , B3 , B4 }
                        ELSE thrusters_to_fire := { F1 , F2 , F3 , F4 }
                END
        END

END
