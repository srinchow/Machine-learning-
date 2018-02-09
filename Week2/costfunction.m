function [J] = costfunction(X,Y,Theta)
      m=size(X,1);
      h=X*Theta;
      h=h-Y;
      
      J=((1/(2*m))*sum(h.^2));
endfunction
