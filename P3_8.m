clear all;
close all;
clc;

[elephant,fpr_elephant]= audioread("elephant.wav");
[mq,fpr_mq]=audioread("MOSQUITO.wav");

min_length = min(length(elephant), length(mq));
elephant=elephant(1:min_length);
mq = mq(1:min_length);

signal_sum = elephant + mq;

figure;
plot(elephant,'b');
hold on
plot(mq,'g');
hold off
figure;
plot(signal_sum);
title("Signal Sum");
ylabel("Amp");
xlabel("time");
grid on;

% analiza sygnbalu
N = length(signal_sum);
n= 0:N-1; k=0:N-1;
A = sqrt(2/N) * cos(pi/N * (k' * n));
y = A * signal_sum;

figure;
plot(y);
title("po transformacji")

%usuwanie ryku slonia
y(1:floor(N/3)) = zeros(floor(N/3), 1);
figure;
plot(y);
title("po usunieciu ryku")

signal_cleaned = A'*y;
figure;
plot(signal_cleaned);
title("Ready signal");
soundsc(signal_cleaned,fpr_elephant);
pause(length(signal_cleaned)/fpr_mq+1)

soundsc(signal_sum,fpr_elephant);
pause;
