
function [Seq] = HmmSeq(SeqLength,p,q,pgood,pbad)
%HMMSEQ 此处显示有关此函数的摘要
%   此处显示详细说明
TranM=[1-p,p;
    q,1-q];

EmisM=[1-pgood,pgood;
    1-pbad,pbad];
    
Seq=hmmgenerate(SeqLength,TranM,EmisM)-1;
end

