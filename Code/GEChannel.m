function [outputSeq] = GEChannel(inputSeq,p,q,pgood,pbad)
%GECHANNEL �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
influSeq = HmmSeq(length(inputSeq),p,q,pgood,pbad);
outputSeq=mod(inputSeq+influSeq,2);
end

