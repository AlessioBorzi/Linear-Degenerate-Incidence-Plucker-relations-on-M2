pluckerRelations = method(TypicalValue => Ideal);
pluckerRelations(ZZ,ZZ,List,ZZ) := (r,s,S,n) ->(
  --R := QQ[ for I in delete({},subsets(n)) list p_I ];
  P := for J in subsets(n,s+1) list(
    for I in subsets(n,r-1) list(
      sum for j in J list(
        if not(member(j,I) or member(j,S)) then(
          signj := (-1)^(#select(I, i-> i<j) + #select(J, i-> i<j));
          signj * p_(sort(I | {j})) * p_(sort delete(j,J))
        ) else(
          0
        )
      )
    )
  );
  return ideal unique flatten P;
);

pluckerRelations(ZZ,ZZ,ZZ) := (r,s,n) ->(
  return pluckerRelations(r,s,{},n);
);

pluckerRelations(ZZ,ZZ) := (r,n) ->(
  return pluckerRelations(r,r,n);
);

pluckerRelations(List) := L -> (
  return sum for l in L list ( pluckerRelations toSequence l );
);
