% plot(alphar)
% hold
% plot(out.alphar3)
% xlabel('Time(s)')
% ylabel('Rear Tires Side Slip Angle (rad)')
% title('Vehicle Rear Tires Side Slip Angle')
% legend('Bicycle Model','3-DOF Model')

plot(X.data,Y.data)
hold
plot(X1.data,Y1.data)
xlabel('X(m)')
ylabel('Y(m)')
title('Path')
legend('Controller is Off','Controller is On')
