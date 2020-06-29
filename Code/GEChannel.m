function [outputSeq] = GEChannel(inputSeq,p,q,pgood,pbad)
%GECHANNEL 此处显示有关此函数的摘要
%   此处显示详细说明
influSeq = HmmSeq(length(inputSeq),p,q,pgood,pbad);
outputSeq=mod(inputSeq+influSeq,2);
end

