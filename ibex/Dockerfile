FROM docker.io/python:3.9
MAINTAINER Criz

RUN cd /root && \
    git clone https://github.com/lowRISC/ibex.git && \
    cd ibex && \
    apt update && \
    apt-get install -y verilator libelf-dev srecord vim && \
    pip3 install -U -r python-requirements.txt && \
    cd .. && \
    wget --no-check-certificate https://github.com/lowRISC/lowrisc-toolchains/releases/download/20220524-1/lowrisc-toolchain-gcc-rv32imcb-20220524-1.tar.xz && \
    tar xfva lowrisc-toolchain-gcc-rv32imcb-20220524-1.tar.xz && \
    export RISCV_TOOLCHAIN=/root/lowrisc-toolchain-gcc-rv32imcb-20220524-1 && \
    export export RISCV_GCC="$RISCV_TOOLCHAIN/bin/riscv32-unknown-elf-gcc" && \
    export RISCV_OBJCOPY="$RISCV_TOOLCHAIN/bin/riscv32-unknown-elf-objcopy" && \
    echo "export PATH=/root/lowrisc-toolchain-gcc-rv32imcb-20220524-1/bin:\$PATH" >> /etc/bash.bashrc && \
    cd ibex  && \
    pip3 install anytree && \
    sed -i "s/->RV32E\ ?/->RV32M\ ?/g" examples/simple_system/ibex_simple_system.cc

WORKDIR /root/ibex

CMD ["/bin/bash"]
