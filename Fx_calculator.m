
function out = Fx_calculator(a)
     w = a(1)  ;
     u = a(2) ;
    R_w = 0.32;
%     m_w = 22;
%     M = 250;
%     I_w = 1.5;
    C_s = 50000;
    slip_vel = R_w *w - u;
    if slip_vel ~= 0
        slip = slip_vel/ max(abs(R_w *w), abs(u));
        
    else
        slip =0;
    end
    
        if abs(slip) <= 0.2
            F_x = C_s * slip;
        else
            F_x = C_s * slip * 0.2/abs(slip);
        end
    
    out = [ slip;F_x];
end