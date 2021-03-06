clc;
clear;
close all;

%%
p=0.1:0.2:0.9;
q=0.1:0.2:0.9;

pgood=0;
pbad=0.5;
coder=@Coder_hamming;

%[p,q] = meshgrid(0.1:0.1:0.9);
%tmp= bsxfun(@(w,s) RunSimulation(10000,w,s,0,0.5,@Coder_null),p,p');

result=zeros(1,length(p)*length(q));
results=[];
for k=1:100
    for i=1:1:length(p)
        for j=1:length(q)
            result(1,j+(i-1)*length(p))=RunSimulation(10000,p(i),q(j),pgood,pbad,coder);
        end
    end
    results=[results;result];
end


boxplot(results);
ylabel('BER');
xticklabels({'p=0.1,q=0.1','p=0.1,q=0.3','p=0.1,q=0.5','p=0.1,q=0.7','p=0.1,q=0.9','p=0.3,q=0.1','p=0.3,q=0.3','p=0.3,q=0.5','p=0.3,q=0.7','p=0.3,q=0.9','p=0.5,q=0.1','p=0.5,q=0.3','p=0.5,q=0.5','p=0.5,q=0.7','p=0.5,q=0.9','p=0.7,q=0.1','p=0.7,q=0.3','p=0.7,q=0.5','p=0.7,q=0.7','p=0.7,q=0.9','p=0.9,q=0.1','p=0.9,q=0.3','p=0.9,q=0.5','p=0.9,q=0.7','p=0.9,q=0.9'})
xtickangle(50);