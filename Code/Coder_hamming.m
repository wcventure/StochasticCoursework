function [outputSeq] = Coder_hamming(inputSeq,mode)
%CODER_HAMMING 此处显示有关此函数的摘要
%   此处显示详细说明
if strcmp(mode,'encode')
    if mod(length(inputSeq),4)~=0
        inputSeq=[inputSeq,zeros(1,4-mod(length(inputSeq),4))];
    end
    inputSeq=reshape(inputSeq,4,length(inputSeq)/4);
    
    outputSeq=arrayfun(@(n) HammingEncode(inputSeq(:,n)), 1:size(inputSeq,2),'UniformOutput',false);
    outputSeq=[outputSeq{1,:}];
    outputSeq=reshape(outputSeq,1,7*length(inputSeq));
    
elseif strcmp(mode,'decode')
    inputSeq=reshape(inputSeq,7,length(inputSeq)/7);
    
    outputSeq=arrayfun(@(n) HammingDecode(inputSeq(:,n)), 1:size(inputSeq,2),'UniformOutput',false);
    
    outputSeq=[outputSeq{1,:}];
    
    outputSeq=reshape(outputSeq,1,4*length(inputSeq));
    
else
    outputSeq=[0];
end

end

function [outputSeq]= HammingEncode(inputSeq)
    n = 7; % Codeword length
    k = 4; % Message length
    
    outputSeq = encode(inputSeq,n,k,'hamming/binary');
end

function [outputSeq]= HammingDecode(inputSeq)
    n = 7; % Codeword length
    k = 4; % Message length
    
    outputSeq = decode(inputSeq,n,k,'hamming/binary');
end

