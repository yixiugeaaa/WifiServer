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
###http://localhost/wifi/index.php/home/uurl/insert
日志使用json文件，上传时间为每日上电时，格式如下

```
{
    "Dmac": "00-0c-29-fa-8f-9d",
    "Content": [
        {
            "Umac": "01-0c-29-fa-8f-9d",
            "Time": "2015/8/21 10/21/30",
            "Url": "www.baidu.com"
        },
        {
            "Umac": "01-0c-29-fa-8f-9d",
            "Time": "2015/8/21 10/21/30",
            "Url": "www.baidu.com"
        },
        {
            "Umac": "01-0c-29-fa-8f-9d",
            "Time": "2015/8/21 10/21/30",
            "Url": "www.baidu.com:80"
        }
    ]
}
```
##查询用户流量
###http://localhost/wifi/index.php/home/user/update/id/{id}
id为用户的id,目前只有1,返回的json格式如下
```
{
    "id": "1",
    "phone": "123",
    "mac": "123",
    "flow": "120",
    "create_time": null
}
```
##修改用户流量
###http://localhost/wifi/index.php/home/user/update/id/{id}/num/{num}
id为用户的id,目前只有1,num为流量,为正增加流量,为负减少流量,为0相当于上一条查询用户流量功能,返回json格式与上调相同
##心跳交互接口
###http://localhost/wifi/index.php/home/command/ping/mac/{mac}
{mac}为设备的mac,目前可测试的mac为123,回执需要的接口为http://localhost/wifi/index.php/home/command/ping/mac/{mac}/cmd/{cmd}/arg/{arg},参数列表如下
<html>
    <table>
        <thead>
            <th>
                <td>cmd</td>
                <td>arg</td>
            </th>
        </thead>
        <tbody>
            <tr>
                <td>Df</td>
                <td>磁盘使用率的数字,url中不支持百分号</td>
            </tr>
        </tbody>
    </table>
</html>
