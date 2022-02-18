function state_dot = PendulumDynamics(state, parameters)
    q = state(1:3);
    dq = state(4:6);
    F = -10*q(1)-dq(1);
    [W, RHS] = PendulumODEMatrices(state, F, parameters);
    
    state_dot = [dq; W\RHS];
end

    
    