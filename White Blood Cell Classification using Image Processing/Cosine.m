function cos=Cosine(x,y)
  dotProduct_xy=dot(x,y);
%   Mat_mul_xx=x.*x;
%   Mat_mul_yy=y.*y;
%   sum_x=sum(Mat_mul_xx,'all');
%   sum_y=sum(Mat_mul_yy,'all');
%   mod_x=sqrt(sum_x);
%   mod_y=sqrt(sum_y);
  cos=(dotProduct_xy)/(norm(x)*norm(y));
end