nodes={'A','B','C','D','E','F','G'};

%define edges using source and target nodes
s=[1 1 2 2 3 3]; %from A->B, A->C,, B->D, B->E, c
t=[2 3 4 5 6 7];

%created directed graph
G=digraph(s,t,[],nodes);

%plot the tree with edge weights displayed
plot(G,'Layout','layered','Direction','Down');
title('Simple tree with 3 levels');