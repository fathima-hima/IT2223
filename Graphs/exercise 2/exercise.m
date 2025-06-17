%Graph 
%1.Write the matlab code to import a graph.Use the following source and destination data.
%source=[1,1,2,3,4]
%destination=[2,3,4,4,5]
%2.using the imported data,draw the graph
%3.Write the matlab code to find and display the subgraph for the given nodes.
%4.Identify and display the adjacent vertices for each node.
%5.Label the edges of the graph.
%6. Label the nodes of the graph.
%7.Write the matlab code to color the graph.
%8.Write the matlab code to find the shortest path from node 1 to node 5.


source = [1, 1, 2, 3, 4];
destination = [2, 3, 4, 4, 5];
G = graph(source, destination);



figure;
plot(G);
title('Original Graph');


subNodes = [1, 2, 4];
G_sub = subgraph(G, subNodes);
figure;
plot(G_sub);
title('Subgraph with Nodes 1, 2, and 4');



for i = 1:numnodes(G)
    adjNodes = neighbors(G, i);
    fprintf('Node %d is adjacent to: %s\n', i, mat2str(adjNodes'));
end



figure;
p = plot(G);
% Label edges using their index
L = 1:numedges(G);
p.EdgeLabel = arrayfun(@num2str, L, 'UniformOutput', false);
title('Graph with Edge Labels');




% Node labels are displayed by default in `plot(G)`
% But you can set custom labels like:
p.NodeLabel = arrayfun(@(x) ['Node ', num2str(x)], 1:numnodes(G), 'UniformOutput', false);


nodeColors = randi([1, 5], numnodes(G), 1); % Random color group
figure;
p = plot(G, 'NodeCData', nodeColors, 'MarkerSize', 7);
colormap(jet); 
colorbar;
title('Colored Graph (Random Node Groups)');



[spath, d] = shortestpath(G, 1, 5);
fprintf('Shortest path from node 1 to 5: %s\n', mat2str(spath));
fprintf('Path length: %d\n', d);

% Plot the shortest path on the graph
figure;
p = plot(G);
highlight(p, spath, 'EdgeColor', 'r', 'LineWidth', 2);
highlight(p, spath, 'NodeColor', 'g', 'MarkerSize', 6);
title('Shortest Path from Node 1 to Node 5');