skew=function(x)
{
	n = length(x)
	nfact = n/((n - 1) * (n - 2))
	xm = mean(x)
	xv = sqrt(var(x))
	skw = sum((x - xm)^3)
	skew = (nfact * skw)/xv^3
	skew
}
