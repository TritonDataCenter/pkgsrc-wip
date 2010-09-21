FILES=\
ldapgroupadd.8 ldapgroupadd.cat8 \
ldapgroupdel.8 ldapgroupdel.cat8 \
ldapgroupmod.8 ldapgroupmod.cat8 \
ldapuseradd.8 ldapuseradd.cat8 \
ldapuserdel.8 ldapuserdel.cat8 \
ldapusermod.8 ldapusermod.cat8

all: $(FILES)

clean:
	-rm *.cat8

install:
	-mkdir -p /usr/pkg/man/man8
	-mkdir -p /usr/pkg/man/cat8
	cp *.8 /usr/pkg/man/man8
	cp *.cat8 /usr/pkg/man/cat8

#%.8: %.8.xml
#	xmltoman $^ > $@

%.cat8: %.8
	nroff -man < $^ > $@

