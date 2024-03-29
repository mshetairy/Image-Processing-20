function M = Gauss1 (Size, Sig)
  GaussMask = ones(Size, Size);
  sigmaSquared = Sig^2;
  x = -1 * (Size / 2);
  y = -1 * (Size / 2);
  for i=1:Size
    for j=1:Size
      equation = -1 * (x^2 + y ^2) / (2 * sigmaSquared);
      GaussMask(i,j) = (1/(2*pi*sigmaSquared)) * exp(equation);
      x = x + 1;
      y = y + 1;
    end;
  end; 
  M = (1/ sum(GaussMask(:))) * GaussMask;
end
