This repo conatins the Make file and script to Install caffe on Jetson xavier

Please Follow the following Instructions to install Caffe on Jetson Xavier Board


1. Clone this repository and run the install_opencv_xavier_board.sh script 

2. After the installation is complete add the following line to ~/.bashrc .

    export PYTHONPATH=/home/nvidia/caffe/python

3. Now the installation is complete

4. You can verify your installation by closing the current terminal window and opening a new terminal and excuting the following commands

    $ python3
        
        >>> import caffe
    
