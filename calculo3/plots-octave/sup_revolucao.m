

t = linspace(0, 2*pi, 20);
r = linspace(1,2, 20);

# hiperboloide

[R, T] = meshgrid(r, t);

X=R.*cos(T);
Y=R.*sin(T);
Z=sqrt(R.^2 - 1);

aux=figure();

surf(X,Y,Z,'FaceAlpha', 0.7);
hold on;

axis equal;
grid on;

t1 = linspace(-.02, 0, 20);
r1 = linspace(1,2.2, 20);

[R1, T1] = meshgrid(r1, t1);

X1=R1.*cos(T1);
Y1=R1.*sin(T1);
Z1=sqrt(R1.^2 - 1)-0.005;
surf(X1,Y1,Z1,'FaceColor', 'red','EdgeColor', 'none');

% Limitar a variação dos eixos
axis([-2 2 -2 2 0 2]);

xlabel('x');
ylabel('y');
zlabel('z');

% Ajuste a visão 3D
view(120, 10);

axis tight;  % Ajusta os eixos ao conteúdo
saveas(aux,'sup-rev1.png', 'png');



