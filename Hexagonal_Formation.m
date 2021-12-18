%Discrete-Time Formation Control for six agents/ robots
%The distance matrix forms a hexagon
 clearvars
      close all
      
      % Initial Coordinates
      % Any random initial coordinates can be chosen
      x1 = 15;
      y1 = 8;
      x2 = 7;
      y2 = 12;
      x3 = 20;
      y3 = 20;
      x4 = 16;
      y4 = 16;
      x5 = 22;
      y5 = 4;
      x6 = 2;
      y6 = 10;
      
 dist_mat_y = [1.732;1.732;0;-1.732;-1.732;0]; %desired distance between nodes (y coordinates of a hexagon)   
 dist_mat2 = dist_mat_y';
 
 dist_mat_x = [-1;1;2;1;-1;-2];
 dist_mat3 = dist_mat_x';
      %Laplacian matrix
      
      L = [1 0 -1 0 0 0;0 1 -1 0 0 0;0 0 2 -1 -1 0;0 0 -1 1 0 0;0 0 -1 0 1 0;0 0 -1 0 0 1];
      
      X(:,1) = [x1(1);x2(1);x3(1);x4(1);x5(1);x6(1)];   
      Y(:,1) = [y1(1);y2(1);y3(1);y4(1);y5(1);y6(1)];
      
      for i = 1:10
       
      scatter(X(1,i), Y(1,i), 80, 'b' ,'filled')
      hold on;
      scatter(X(2,i), Y(2,i), 80, 'r' ,'filled')
      hold on;
      scatter(X(3,i), Y(3,i), 80, 'g' ,'filled')
      hold on;
      scatter(X(4,i), Y(4,i), 80, 'cy' ,'filled')
      hold on;
      scatter(X(5,i), Y(5,i), 80, 'y' ,'filled')
      hold on;
      scatter(X(6,i), Y(6,i), 80, 'm' ,'filled')
    
      xlim([-800 800])
      ylim([-800 800])
      hold off;
      drawnow
      
      X(:,i+1) = X(:,i)-0.5*L*X(:,i)+0.5*L*dist_mat_x;
      Y(:,i+1) = Y(:,i)-0.5*L*Y(:,i)+0.5*L*dist_mat_y;
      
      end
      
      %Plotting agents (black balls) at starting points
      scatter(X(1,1), Y(1,1), 80, 'k' ,'filled')
      hold on;
      scatter(X(2,1), Y(2,1), 80, 'k' ,'filled')
      hold on;
      scatter(X(3,1), Y(3,1), 80, 'k' ,'filled')
      hold on;
      scatter(X(4,1), Y(4,1), 80, 'k' ,'filled')
      hold on;
      scatter(X(5,1), Y(5,1), 80, 'k' ,'filled')
      hold on;
      scatter(X(6,1), Y(6,1), 80, 'k' ,'filled')
      
      
      %Plotting agents (colored balls) at end points
      
      
      scatter(X(1,10), Y(1,10), 80, 'b' ,'filled')
      hold on;
      scatter(X(2,10), Y(2,10), 80, 'r' ,'filled')
      hold on;
      scatter(X(3,10), Y(3,10), 80, 'g' ,'filled')
      hold on;
      scatter(X(4,10), Y(4,10), 80, 'cy' ,'filled')
      hold on;
      scatter(X(5,10), Y(5,10), 80, 'y' ,'filled')
      hold on;
      scatter(X(6,10), Y(6,10), 80, 'm' ,'filled')
      
      plot(X(1,1:10),Y(1,1:10),'b','Linewidth',1.5)
      plot(X(2,1:10),Y(2,1:10),'r','Linewidth',1.5)
      plot(X(3,1:10),Y(3,1:10),'g','Linewidth',1.5)
      plot(X(4,1:10),Y(4,1:10),'cy','Linewidth',1.5)
      plot(X(5,1:10),Y(5,1:10),'y','Linewidth',1.5)
      plot(X(6,1:10),Y(6,1:10),'m','Linewidth',2)
      
       % Plotting the resulting shape (Hexagon)
      plot([X(1,10),X(2,10)],[Y(1,10),Y(2,10)],'k.:','Linewidth',1.5)%line b/w agent 1 and 2
      plot([X(2,10),X(3,10)],[Y(2,10),Y(3,10)],'k.:','Linewidth',1.5)%line b/w agent 2 and 3
      plot([X(3,10),X(4,10)],[Y(3,10),Y(4,10)],'k.:','Linewidth',1.5)%line b/w agent 3 and 4
      plot([X(4,10),X(5,10)],[Y(4,10),Y(5,10)],'k.:','Linewidth',1.5)%line b/w agent 4 and 5
      plot([X(5,10),X(6,10)],[Y(5,10),Y(6,10)],'k.:','Linewidth',1.5)%line b/w agent 5 and 6
      plot([X(6,10),X(1,10)],[Y(6,10),Y(1,10)],'k.:','Linewidth',2)%line b/w agent 6 and 1
      xlabel('x coordinates');
      ylabel('y coordinates');
      title('Discrete-Time Formation Control (Static Graph)');
      
      hold off;
      drawnow
      