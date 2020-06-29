clc;
clear;
close all;

%%
%parameter 
seqLength=10000;
p=0.1;
q=0.2;
pgood=0;
pbad=0.5;
transportSeq=randi([0,1],1,seqLength);
code=@Coder_null;

%%
%encode
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

