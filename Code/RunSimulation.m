function [BER] = RunSimulation(seqLength,p,q,pgood,pbad,code)
%RUNSIMULATION 此处显示有关此函数的摘要
%   此处显示详细说明
%%
transportSeq=randi([0,1],1,seqLength);

%%
inputSeq=code(transportSeq,'encode');


%%
%transport
outputSeq=GEChannel(inputSeq,p,q,pgood,pbad);

%%
%decode
receivedSeq=code(outputSeq,'decode');

%%
%analysis
receivedSeq=receivedSeq(1,1:length(transportSeq));
BER=sum(double(xor(transportSeq,receivedSeq)))/length(transportSeq);


end

