 Gp = zpk(-2, [-1 -4 -8], 10);
 H = tf(0.2,1);
 C2=zpk([-17.89 -15.87], [0], 208.82);
 L=Gp*C2;
 T = feedback(L, H)
 info=stepinfo(T)
 figure;
step(T);

grid on;
legend('Controlador 2', 'Controlador 4');
title('Respuesta al escalón');
xlabel('Tiempo (s)');
ylabel('Salida');

[wn, zeta, p] = damp(T)