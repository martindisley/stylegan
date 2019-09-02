#!/bin/bash
#vast_install.sh

#install git
apt-get update
apt-get install git --assume-yes

#install stylegan
git clone https://github.com/dvschultz/stylegan
cd stylegan
pip install -r requirements.txt

#grab drive pkl and tfrecords files
pip install gdown
mkdir pkl
cd pkl
#pkl files
gdown --id 1JLqXE5bGZnlu2BkbLPD5_ZxoO3Nz-AvF --output inception_v3_features.pkl #inception: https://drive.google.com/open?id=1JLqXE5bGZnlu2BkbLPD5_ZxoO3Nz-AvF
gdown --id 1gbxwfHNOaGjGsLNTmmSrNA85X2VWHHOq --output vgg16_zhang_perceptual.pkl #zhang: https://drive.google.com/open?id=1gbxwfHNOaGjGsLNTmmSrNA85X2VWHHOq

cd ../
mkdir datasets
cd datasets

#.tfrecords files, uncomment as needed
# mix-floral
mkdir mix-floral
cd mix-floral
gdown --id 14jFtFk019b10nkSkkhTHn2FcgRWenmeU --output mix-floral-r02.tfrecords  #https://drive.google.com/open?id=14jFtFk019b10nkSkkhTHn2FcgRWenmeU
gdown --id 10KW20z6gitCc6lfJCk_9nd_BxU_4IncL --output mix-floral-r03.tfrecords #https://drive.google.com/open?id=10KW20z6gitCc6lfJCk_9nd_BxU_4IncL
gdown --id 1kwaCwUy-WZ8HvYndHB4YE8fez-_lvZbQ --output mix-floral-r04.tfrecords #https://drive.google.com/open?id=1kwaCwUy-WZ8HvYndHB4YE8fez-_lvZbQ
gdown --id 1cNhiNGloNvNhgixPQk0zwis74MEO-vSD --output mix-floral-r05.tfrecords #5:https://drive.google.com/open?id=1cNhiNGloNvNhgixPQk0zwis74MEO-vSD
gdown --id 1EXMdNb-RJbBL7CyuREu3z3toFWGLx8Jp --output mix-floral-r06.tfrecords #6:https://drive.google.com/open?id=1EXMdNb-RJbBL7CyuREu3z3toFWGLx8Jp
gdown --id 1_fbthlXATI10jLlmq4JiDvztFhx91TBm --output mix-floral-r07.tfrecords #7:https://drive.google.com/open?id=1_fbthlXATI10jLlmq4JiDvztFhx91TBm
gdown --id 1cHI8p_lre7N8C5lUJHWCG5tPzZZ5PWzx --output mix-floral-r08.tfrecords #8:https://drive.google.com/open?id=1cHI8p_lre7N8C5lUJHWCG5tPzZZ5PWzx
gdown --id 1inYK6myNJgRQj6IwRRmiAF0b697i5A6r --output mix-floral-r09.tfrecords #9:https://drive.google.com/open?id=1inYK6myNJgRQj6IwRRmiAF0b697i5A6r
gdown --id 1NsosGWU1Y-gPv_aOIxFRkbtYsiUluoR_ --output mix-floral-r10.tfrecords #10:https://drive.google.com/open?id=1NsosGWU1Y-gPv_aOIxFRkbtYsiUluoR_
cd ../

#ladiescrop
mkdir ladiescrop
cd ladiescrop
gdown --id 1NdRdGxg987Oy9DXfp_arsWkQBXFdPrfX --output ladiescrop-r02.tfrecords
gdown --id 1P_LgM7PcfI-C7x4hWfcZFMEg5YXdQAKt --output ladiescrop-r03.tfrecords
gdown --id 1qQLCvEt238SbZAvhT7alYODBMG5zN6gt --output ladiescrop-r04.tfrecords
gdown --id 1qckddZBfzGZW_Mjn-vtgeITEFduROQq7 --output ladiescrop-r05.tfrecords #https://drive.google.com/open?id=1qckddZBfzGZW_Mjn-vtgeITEFduROQq7
gdown --id 1drQOC1nqJDnRocMBCPBo8gJ68AVp4XVa --output ladiescrop-r06.tfrecords
gdown --id 1kXJ1XVRjdAhd8EHrL3P2qQefDOCQLYMO --output ladiescrop-r07.tfrecords
gdown --id 1agDvpzYrBVNn6-Li81WGe25FkP5u3eBg --output ladiescrop-r08.tfrecords
gdown --id 1Kqn_usexTH66uu70aqJlYYTFMIIGgowE --output ladiescrop-r09.tfrecords
cd ../

# curtis
# mkdir curtis
# cd curtis
#2:https://drive.google.com/open?id=1MGYNK8Xk1E86WYadg5_MJqOTtwr24cam
#3:https://drive.google.com/open?id=1rm47oBOqt0vZR_G2Rt3InglmVghpjymz
#4:https://drive.google.com/open?id=1EyOG_W-HyeDJpiEX23kURi8gmZiMPrqy
#5:https://drive.google.com/open?id=1CXU56k0MtdqI-xI992MkEFaDaA9kzdpJ
#6:https://drive.google.com/open?id=1RZQ470dReywp1AgjdoFvnEbjci1bzf53
#7:
#8:https://drive.google.com/open?id=1SNmg5DzSGRkaTCMo9mXc3h2Z-bVpPN80
#9:https://drive.google.com/open?id=1w3mXP4HROsFM3NkgM0KyEuzqy3FGHV-6

#w
mkdir w
cd w
gdown --id 19OcfDckELZz8lGnOYs-miQh31L5Mfprr --output w-r02.tfrecords
gdown --id 1YPrzAGJF9HOgWpof0Sm8xntSEvYTjuae --output w-r03.tfrecords
gdown --id 1JiQtHVxlzVGr7VyJclSxKVnVO5lPcbZe --output w-r04.tfrecords
gdown --id 1LDFfOogH1X-32v83G5QkwmHkG64w6zKl --output w-r05.tfrecords
gdown --id 1S-b0SDs5oA0gcvOabPq3CL2nFieBdwM9 --output w-r06.tfrecords
gdown --id 1IO6KSUwXZl6AfgNwKJl9oesDyUUxco-B --output w-r07.tfrecords
gdown --id 1usEUOykORDTj0VolBxr1MlRNP_egpwsD --output w-r08.tfrecords
gdown --id 1huTQOqImhxaonwW-WxzrpezLwmq_k0AT --output w-r09.tfrecords
