clc;
clear;
close all;

%%
p=0.9;
q=0.1:0.2:0.9;

pgood=0;
pbad=0.5;

coder1=@Coder_null;
coder2=@Coder_redun;
coder3=@Coder_hamming;

%[p,q] = meshgrid(0.1:0.1:0.9);
%tmp= bsxfun(@(w,s) RunSimulation(10000,w,s,0,0.5,@Coder_null),p,p');


results=[];
for k=1:50
    result=[];
    for i=1:1:length(p)
        for j=1:length(q)
            result=[result,RunSimulation(10000,p(i),q(j),pgood,pbad,coder1),RunSimulation(10000,p(i),q(j),pgood,pbad,coder2),RunSimulation(10000,p(i),q(j),pgood,pbad,coder3),nan];
        end
    end
    results=[results;result];
end

boxplot(results,'Colors','rgbw');
xticks(2:4:20);
xticklabels({'q=0.1','q=0.3','q=0.5','q=0.7','q=0.9'});
xtickangle(50);
