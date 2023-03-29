load "./ldIncidencePlucker.m2"
needsPackage "Tropical";
n = 4;
G = flatten for i from 1 to n-1 list(sort subsets(n,i));
R = QQ[ for I in G list p_I ];
--Fl(4)
L = {{1,4},{2,4},{3,4},{1,2,4},{2,3,4}}; --plucker realtions 1,4 2,4 3,4 and plucker incidence relations 1,2,4 and 2,3,4
I = pluckerRelations L; --ideal of Fl4
Fl4 = tropicalVariety(I);
--Fl(4) with a projection on the first map on the first coorindate
L = {{1,4},{2,4},{3,4},{1,2,{0},4},{2,3,4}}; --plucker realtions 1,4 2,4 3,4 and plucker incidence relations 1,2,4 (with proj. on the first coordinate) and 2,3,4
I = pluckerRelations L; --ideal of Fl4
Fl4p = tropicalVariety(I);
--Fl(4) with a projection on the second map on the first coorindate
L = {{1,4},{2,4},{3,4},{1,2,4},{2,3,{0},4}}; --plucker realtions 1,4 2,4 3,4 and plucker incidence relations 2,3,4 (with proj. on the first coordinate) and 1,2,4
I = pluckerRelations L; --ideal of Fl4
Fl4pp = tropicalVariety(I);
--Fl(4) with the first and second map being the projection on the first coordinate
L = {{1,4},{2,4},{3,4},{1,2,{0},4},{2,3,{0},4}}; --plucker realtions 1,4 2,4 3,4 and plucker incidence relations 1,2,4 and 2,3,4 (with proj. on the first coordinate)
I = pluckerRelations L; --ideal of Fl4ppp
Fl4ppp = tropicalVariety(I);
