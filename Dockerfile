FROM amazonlinux:2023

COPY pkg.txt /tmp/pkg.txt
RUN dnf install -y findutils && \
    cat /tmp/pkg.txt | grep -Ev '^\s*#' | grep 'YES' | awk '{print $1}' | xargs dnf install -y -q && \
    dnf clean all

RUN useradd -m ec2-user && \
    echo "ec2-user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/90-cloud-init-users && \
    chmod 0440 /etc/sudoers.d/90-cloud-init-users
USER ec2-user
WORKDIR /home/ec2-user
