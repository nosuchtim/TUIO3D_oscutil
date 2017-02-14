default install:
	nmake PYTHON=c:\python27 doinstall
	c:\python27\python setup.py py2exe
	rm -fr *~ .*~ *.bak *.pyc build

justinstall:
	nmake PYTHON=c:\python27 doinstall

justsetup:
	c:\python27\python setup.py py2exe

FINALDIR = $(PYTHON)\lib\site-packages\nosuch

doinstall : \
	$(FINALDIR) \
	$(FINALDIR)\__init__.py \
	$(FINALDIR)\oscutil.py

$(FINALDIR):
	mkdir $(FINALDIR)

$(FINALDIR)\__init__.py: __init__.py
	copy __init__.py $(FINALDIR)\__init__.py

$(FINALDIR)\oscutil.py: oscutil.py
	copy oscutil.py $(FINALDIR)\oscutil.py

clean :
	rm -fr *~ .*~ *.bak *.pyc dist build
