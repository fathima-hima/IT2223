n=4; 
%list edges(node 1, node2 , weight)
%each row represents [starting node, end node, weight]
edges=[
   1 2 1;
   1 3 3;
   1 4 2;
   2 4 4;
   3 4 5
    ];

numEdges=size(edges,1); %total number of edges.

%step 1: sort edges by weight(bubble sort)
for i=1:numEdges-1
    for j=1:numEdges-i
        if edges(j,3) > edges(j+1,3)
               temp=edges(j,:);
               edges(j,:)=edges(j+1,:);
               edges(j+1,:)=temp;
        end
    end
end

%initilaize MST adjecency list(empty)
MST_adj = cell(n,1);
mst=[]; %store MST edges
total_weight=0;

%dfs function to check connectivity
function found = dfs(current,target,visited,MST_adj)
if current==target
    found=true;
    return;
end
visited(current)=true;
found=false;
neighbors=MST_adj{current};

for k=1:length(neighbors)
    neigh=neighbors(k);
    if ~visited(neigh)
        found=dfs(neigh,target,visited,MST_adj);
             if found
                 return;
             end
    end
end
end

%step 2:build MST with dfs cycle detection
for i=1:numEdges
    u=edges(i,1);
    v=edges(i,2);
    w=edges(i,3);

    visited=false(1,n);

    if isempty(MST_adj{u})
        connected=false;
    else
        connected=dfs(u,v,visited,MST_adj);
    end
    if ~connected

       mst=[mst;u v w];
       total_weight=total_weight+w;
       MST_adj{u}=[MST_adj{u} v];
       MST_adj{v}=[MST_adj{v} u];
    end
end

%display MST in console
disp('Edges in MST:');
disp('Node1 Node2 Weight');
disp(mst);
fprintf('Total weight =%d\n',total_weight);

%Step3 plot the MST graphically
G_mst=graph(mst(:,1),mst(:,2),mst(:,3));
figure;
plot(G_mst,'EdgeLabel',G_mst.Edges.Weight);
title('Minimum Spanning Tree(MST)');