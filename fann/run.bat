gcc.exe -c main.c fann.c  fann_error.c fann_train.c fann_train_data.c fann_cascade.c fann_io.c
gcc.exe  main.o fann.o  fann_error.o fann_train.o fann_train_data.o fann_cascade.o fann_io.o -o main
ar rc libfann.a fann.o  fann_error.o fann_train.o fann_train_data.o fann_cascade.o fann_io.o
ranlib libfann.a
gcc xor_train.c -L. -lfann -o xor_train
xor_train.exe
 

C:\git\vs-fann>gcc.exe -c main.c fann.c  fann_error.c fann_train.c fann_train_data.c fann_cascade.c fann_io.c 

C:\git\vs-fann>gcc.exe  main.o fann.o  fann_error.o fann_train.o fann_train_data.o fann_cascade.o fann_io.o -o main 

C:\git\vs-fann>ar rc libfann.a fann.o  fann_error.o fann_train.o fann_train_data.o fann_cascade.o fann_io.o 

C:\git\vs-fann>ranlib libfann.a 

C:\git\vs-fann>main.exe
Creating network.
Training network.
Max epochs     1000. Desired error: 0.0000000000.
Epochs            1. Current error: 0.2981990576. Bit fail 4.
Epochs           10. Current error: 0.1357937008. Bit fail 4.
Epochs           20. Current error: 0.1308381408. Bit fail 4.
Epochs           30. Current error: 0.0652893335. Bit fail 4.
Epochs           40. Current error: 0.0406460315. Bit fail 4.
Epochs           50. Current error: 0.0059967688. Bit fail 4.
Epochs           56. Current error: 0.0000285224. Bit fail 0.
Testing network. 0.000005
XOR test (-1.000000,-1.000000) -> -0.997987, should be -1.000000, difference=0.002013
XOR test (-1.000000,1.000000) -> 0.993611, should be 1.000000, difference=0.006389
XOR test (1.000000,-1.000000) -> 0.998502, should be 1.000000, difference=0.001498
XOR test (1.000000,1.000000) -> -0.993730, should be -1.000000, difference=0.006270
Saving network.
Cleaning up.
 
