# wifi
公交wifi代码
#接口
##单条路线查询
###http://localhost/wifi/index.php/home/line/read/no/11
最后的数字为可修改参数(目前的测试数据只有11路)
##模糊搜索路线
###http://localhost/wifi/index.php/home/line/search/key/1
最后的数字为要搜索的关键字,目前只有11路和12路
##路由器发送GPS心跳
###http://localhost/wifi/index.php/home/bus/update/mac/mac地址/x/经度/y/纬度
mac地址和经度，纬度分别为发送的参数，上传时间待测试
##路由器向服务器上传日志文件
###连接待定
日志使用json文件，上传时间为每日上电时，格式如下

$$
[
{"Dmac":"00-0c-29-fa-8f-9d","Umac":"01-0c-29-fa-8f-9d","Time":"2015/8/21 10/21/30","Url":"www.baidu.com"},
{"Dmac":"00-0c-29-fa-8f-9d","Umac":"01-0c-29-fa-8f-9d","Time":"2015/8/21 10/21/30","Url":"www.baidu.com"},
{"Dmac":"00-0c-29-fa-8f-9d","Umac":"01-0c-29-fa-8f-9d","Time":"2015/8/21 10/21/30","Url":"www.baidu.com:80"},
]
$$

