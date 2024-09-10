# Amazon Linux 2023 with some packages and ec2-user

## Usage

```bash
$ docker run -it --rm ghcr.io/ba230t/amazonlinux2023
[ec2-user@123ab45cdef6 ~]$ id
uid=1000(ec2-user) gid=1000(ec2-user) groups=1000(ec2-user)
[ec2-user@123ab45cdef6 ~]$ sudo id
uid=0(root) gid=0(root) groups=0(root)
[ec2-user@123ab45cdef6 ~]$ exit
$
```
