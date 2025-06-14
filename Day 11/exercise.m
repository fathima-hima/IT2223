s = [11 11 11 11 11 11 11 11 11 11 5 5 4 4 3 3 2 2 1 1 5 5 4 3 2];
t = [5 9 4 8 3 7 2 6 1 10 10 9 9 8 7 8 7 6 6 10 1 4 3 2 1];

G = graph(s,t);
h = plot(G,'Layout','force');
highlight(h,[5,4],'EdgeColor','green');
highlight(h,[4,3],'EdgeColor','green');
highlight(h,[3,2],'EdgeColor','green');
highlight(h,[2,1],'EdgeColor','green');
highlight(h,[1,5],'EdgeColor','green');

highlight(h,[1,10],'EdgeColor','red');
highlight(h,[10,5],'EdgeColor','red');
highlight(h,[5,9],'EdgeColor','red');
highlight(h,[9,4],'EdgeColor','red');
highlight(h,[4,8],'EdgeColor','red');
highlight(h,[8,3],'EdgeColor','red');
highlight(h,[3,7],'EdgeColor','red');
highlight(h,[7,2],'EdgeColor','red');
highlight(h,[2,6],'EdgeColor','red');
highlight(h,[6,1],'EdgeColor','red');
highlight(h,[1,10],'EdgeColor','red');

highlight(h,[11,9],'EdgeColor','magenta');
highlight(h,[11,4],'EdgeColor','magenta');
highlight(h,[11,8],'EdgeColor','magenta');
highlight(h,[11,3],'EdgeColor','magenta');
highlight(h,[11,7],'EdgeColor','magenta');
highlight(h,[11,2],'EdgeColor','magenta');
highlight(h,[11,6],'EdgeColor','magenta');
highlight(h,[11,1],'EdgeColor','magenta');
highlight(h,[11,10],'EdgeColor','magenta');
highlight(h,[11,5],'EdgeColor','magenta');
highlight(h,[11,5],'EdgeColor','magenta');