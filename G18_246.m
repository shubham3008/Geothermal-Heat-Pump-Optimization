x = optimvar('x',1,2);
obj = (68500+600*x(2))/(347.6004-16.36969*x(1)*x(2));
prob = optimproblem('Objective',obj);

cons1 = x(1)*(1-exp(-0.0017*x(2)/x(1))) == 0.04;
cons2 = x(1) >= 0.000001;
cons3 = x(2) >= 0.000001;

prob.Constraints.cons1 = cons1;
prob.Constraints.cons2 = cons2;
prob.Constraints.cons3 = cons3;

show(prob)

x0.x = [1 1];
[sol,fval,exitflag,output] = solve(prob,x0)