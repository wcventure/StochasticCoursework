n = 7; % Codeword length
k = 4; % Message length

data = randi([0 1],k,1);

encData = encode(data,n,k,'hamming/binary');

encData(4) = ~encData(4);

decData = decode(encData,n,k,'hamming/binary');
numerr = biterr(data,decData);


A=[1,2,3,4;5,6,7,8];