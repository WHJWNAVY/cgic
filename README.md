# add `cgiFormFileFullName`
> ����`cgiFormFileFullName`�ӿ����ڻ�ȡ�ϴ��ļ�����ʱ�ļ���

* ��cgic�����ļ��ϴ�ʱ, cgic���ȰѸ��ļ���ʱ�浽`/tmp/cgicXXXXXX`��, Ȼ�󱣴���ļ����ļ�������(û�б������ʱ�ļ�������).
* ������������ϴ����ļ������������ط�, ����Ҫͨ��`cgiFormFileOpen`,`cgiFormFileRead`,`cgiFormFileClose`��һϵ�в�����ִ��һ�ο�������, ���ڴ��С���豸�ܲ��Ѻ�.
* ���������`cgiFormFileFullName`�ӿ�, ����ֱ�ӻ�ȡ�ϴ�����ʱ�ļ���, ��������ֱ��ͨ��`rename`�������ӿ�ֱ�Ӳ�������ʱ�ļ�, ����Ҫ�ٴο���.