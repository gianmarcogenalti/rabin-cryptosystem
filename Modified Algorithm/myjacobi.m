function b = myjacobi(m,p,q)
% Given an integer m and prime numbers p,q returns the Jacobi symbol (m/pq)
b = mylegendre(m,p)*mylegendre(m,q);
end

