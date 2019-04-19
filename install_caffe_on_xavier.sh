#installing Caffe and Pycaffe on Jetson Xavier 

#Installing these Dependencies 

sudo apt-get install libprotobuf-dev libleveldb-dev libsnappy-dev \
                       libhdf5-dev libhdf5-serial-dev protobuf-compiler

sudo apt-get install --no-install-recommends libboost-all-dev

sudo apt-get install libgflags-dev libgoogle-glog-dev liblmdb-dev

sudo apt-get install libatlas-base-dev libopenblas-dev

# Get the Caffe Source code form GitHub and create Makefile.config for Jetson Xavier

cd ~

git clone https://github.com/BVLC/caffe

cd caffe

wget "https://raw.githubusercontent.com/shubhamkulkarni93/Install_Caffe-_on_Jetson_Xavier/master/Makefile.config"


make -j8 all

make -j8 test 

make -j8 runtest

#Next steps are for Python3. First install leveldb-2.0 properly. 
#I assume python3-dev is already installed

mkdir -p ~/src

cd ~/src

wget https://pypi.python.org/packages/03/98/1521e7274cfbcc678e9640e242a62cbcd18743f9c5761179da165c940eac/leveldb-0.20.tar.gz
$ tar xzvf leveldb-0.20.tar.gz

tar xzvf leveldb-0.20.tar.gz

cd leveldb-0.20

python3 setup.py build

sudo python3 setup.py install

# Install other required pip packages

pkgs=`sed 's/[>=<].*$//' ~/caffe/python/requirements.txt`

for pkg in $pkgs; do sudo pip3 install $pkg; done

cd ~/caffe

make pycaffe


