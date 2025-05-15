# add `cgiFormFileFullName`
> 增加`cgiFormFileFullName`接口用于获取上传文件的临时文件名

* 用cgic处理文件上传时, cgic会先把该文件临时存到`/tmp/cgicXXXXXX`中, 然后保存该文件的文件描述符(没有保存该临时文件的名字).
* 后续我们想把上传的文件拷贝到其他地方, 就需要通过`cgiFormFileOpen`,`cgiFormFileRead`,`cgiFormFileClose`等一系列操作再执行一次拷贝动作, 对内存较小的设备很不友好.
* 因此增加了`cgiFormFileFullName`接口, 用于直接获取上传的临时文件名, 后续可以直接通过`rename`或其他接口直接操作该临时文件, 不需要再次拷贝.

> 增加`cgiParseQueryFormInput`接口用于解析POST请求中携带的Query参数
* POST请求一般通过form表单发送数据, 在非标准情况下也可以像GET一样通过URL携带请求数据(Query)
* cgic原本不支持解析POST请求中携带的Query参数, 因此增加`cgiParseQueryFormInput`接口用于解析POST请求中携带的Query参数
* 修改后POST请求支持通过From表单和Query同时发送请求参数