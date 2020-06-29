
function [Seq] = HmmSeq(SeqLength,p,q,pgood,pbad)
%HMMSEQ �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
TranM=[1-p,p;
    q,1-q];

EmisM=[1-pgood,pgood;
    1-pbad,pbad];
    
Seq=hmmgenerate(SeqLength,TranM,EmisM)-1;
end

