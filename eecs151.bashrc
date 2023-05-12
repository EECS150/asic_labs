export SYNOPSYS_ROOT=/home/ff/cs250/tools/synopsys

# synopsys installer
export INSTALLER_PATH=$SYNOPSYS_ROOT/installer/current

# synopsys vcs
#export VCS_HOME=$SYNOPSYS_ROOT/vcs/current
#export VCS_HOME=/share/instsww/synopsys/
export VCS_HOME=/home/ff/eecs151/hammer-tools/synopsys/vcs/P-2019.06
export VCS_PATH=$VCS_HOME/bin
#export VCS_LIC_EXPIRE_WARNING=0

# synopsys dc
#export DC_HOME=$SYNOPSYS_ROOT/dc/current
export DC_HOME=/share/instsww/synopsys/J-2014.09-SP3
export DC_PATH=$DC_HOME/bin

# synopsys icc
#export ICC_HOME=$SYNOPSYS_ROOT/icc/current
export ICC_HOME=/home/ff/eecs151/tools/icc
export ICC_PATH=$ICC_HOME/bin

# synopsys mw
export MW_HOME=$SYNOPSYS_ROOT/mw/current
export MW_PATH=$MW_HOME/bin/AMD.64

# synopsys pt
export PT_HOME=$SYNOPSYS_ROOT/pt/current
export PT_PATH=$PT_HOME/bin

# synopsys formality
export FORMALITY_HOME=$SYNOPSYS_ROOT/fm/current
export FORMALITY_BIN=$FORMALITY_HOME/bin




export PATH=$INSTALLER_PATH:$VCS_PATH:$ICC_PATH:$DC_PATH:$MW_PATH:$PT_PATH:$FORMALITY_BIN:$PATH

# license server
#export LM_LICENSE_FILE=27000@cory.eecs.berkeley.edu
#export LM_LICENSE_FILE=27005@license-srv.eecs.berkeley.edu
#export LM_LICENSE_FILE=5280@bisc.EECS.Berkeley.EDU
# backup license server at BWRC
#export SNPSLMD_LICENSE_FILE=27005@scotland.eecs.berkeley.edu:1701@sunv40z-1.eecs.berkeley.edu:1701@sunv20z-1.eecs.berkeley.edu
export SNPSLMD_LICENSE_FILE=27005@license-srv.eecs.berkeley.edu
export LM_PROJECT=bwrc_users

export VCS_ARCH_OVERRIDE=linux

# add scripts
export PATH=/home/ff/cs250/tools/scripts:$PATH

#export UCB_VLSI_HOME=/home/ff/cs250
export UCB_VLSI_HOME=/home/ff/eecs151
export UCB_VLSI_HOME2=/home/ff/eecs151
#export UCB_VLSI_HOME2=/home/cc/ee241/sp14
export UCB_STDCELLS=synopsys-32nm/multi_vt

#export PATH=/home/ff/cs250/install/python/bin:$PATH

# misc tools that are needed for the toolchain to work (more updated)

export PATH=/home/ff/cs250/install/autoconf/bin:$PATH
export PATH=/home/ff/cs250/install/java/jre1.6.0_26/bin:$PATH
#export PATH=/home/ff/cs250/install/git/bin:$PATH
#export PATH=/home/ff/cs250/install/nx/bin:$PATH
export PATH=/home/ff/cs250/install/sbt:$PATH
export CHISEL=/home/ff/cs250/install/chisel
#export PATH=/home/ff/cs250/fa11/chisel/bin:$PATH
#export PATH=/home/ff/cs250/tools/ucbmc/ucbsc:$PATH

###export LD_LIBRARY_PATH=/home/ff/cs250/install/lib:$LD_LIBRARY_PATH
alias dve="dve -full64"
export PATH=/home/ff/eecs151/tools/cx/G-2012.06-SP1/bin:$PATH
export PATH=/home/ff/eecs151/tools/xa/G-2012.06-SP2/bin:$PATH
export XA_HOME=/home/ff/eecs151/tools/xa/G-2012.06-SP2
export XA_64=1
# SiliconSmart
export PATH=/home/ff/eecs151/tools/siliconsmart/I-2014.03/bin:$PATH

#######################################################
# Modify the LM_LICENSE_FILE with your installation ###
######  (Cadence license server) ######################
#######################################################
#source /tools/flexlm/flexlm.sh

# Cadence Install with HSPICE integration
export CDS_INST_DIR=/share/instsww/cadence/IC615.151
export CDSHOME=/share/instsww/cadence/IC615.151
export CDS_ROOT=/share/instsww/cadence/IC615.151
#export CDS_INST_DIR=/share/instsww/cadence/IC614
#export CDSHOME=/share/instsww/cadence/IC614
#export CDS_ROOT=/share/instsww/cadence/IC614
export PATH=$CDS_INST_DIR/tools/dfII/bin:$CDS_INST_DIR/tools/bin:$CDS_INST_DIR/bin/cdsdoc:$PATH
export IPDK_SYN_28NM=/home/ff/eecs151/synopsys-32nm
export SYNOPSYS_SYSTYPE=linux
export CDS_Netlisting_Mode=Analog
export CDS_LOAD_ENV=CSF
export SKIP_CDS_DIALOG
export OA_HOME=/share/instsww/cadence/IC617/oa_v22.50.095
#export CDS_AUTO_64BIT=ALL	# force 64-bit binaries; or 'virtuoso -64'
export HSP_HOME=/home/ff/eecs151/tools/hspice/G-2012.06-SP1/hspice

# StarRCXT and Hercules and NCX
export STAR_HOME=/home/ff/eecs151/tools/starrcxt/G-2012.06-SP3
export HSPICE_HOME=/home/ff/eecs151/tools/hspice/G-2012.06-SP1
export HERCULES_HOME_DIR=/home/ff/eecs151/tools/hercules/B-2008.09-SP5
export NCX_HOME=/home/ff/eecs151/tools/ncx/G-2012.06-SP3
export SYNOPSYS_NCX_ROOT=/home/ff/eecs151/tools/ncx/G-2012.06-SP3
export PATH=$HERCULES_HOME_DIR/bin/linux:$STAR_HOME/bin:$HSPICE_HOME/hspice/bin:$NCX_HOME/ncx/bin:$PATH

# jcw: add RISCV binaries to path
export PATH=/home/ff/eecs151/tools-151/riscv-toolchain-fa19/bin:$PATH

# Cadence Digital Tools
export INV_HOME=/share/instsww/cadence/INNOVUS
export INV_PATH=$INV_HOME/bin

export GEN_HOME=/share/instsww/cadence/GENUS
export GEN_PATH=$GEN_HOME/bin

export PATH=$INV_PATH:$GEN_PATH:$PATH

#Mentor Calibre (TODO update CALIBRE_HOME to point to 4_19)
export CALIBRE_HOME=/share/instsww/mgc/calibre2017/aoi_cal_2017.4_35.25
export CALIBRE_HOME=/share/instsww/mgc/calibre2017/aoi_cal_2017.4_19.14
export CALIBRE_PATH=$CALIBRE_HOME/bin
export PATH=$CALIBRE_PATH:$PATH

#lab3 add
# export HAMMER_HOME=/home/ff/eecs151/asic/hammer
# source ${HAMMER_HOME}/sourceme.sh

# Update environment variable for Cadence tools
export OA_UNSUPPORTED_PLAT="linux_rhel50_gcc48x"
