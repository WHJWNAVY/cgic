# add `cgiFormFileFullName`
> 增加`cgiFormFileFullName`接口用于获取上传文件的临时文件名

* 用cgic处理文件上传时, cgic会先把该文件临时存到`/tmp/cgicXXXXXX`中, 然后保存该文件的文件描述符(没有保存该临时文件的名字).
* 后续我们想把上传的文件拷贝到其他地方, 就需要通过`cgiFormFileOpen`,`cgiFormFileRead`,`cgiFormFileClose`等一系列操作再执行一次拷贝动作, 对内存较小的设备很不友好.
* 因此增加了`cgiFormFileFullName`接口, 用于直接获取上传的临时文件名, 后续可以直接通过`rename`或其他接口直接操作该临时文件, 不需要再次拷贝.