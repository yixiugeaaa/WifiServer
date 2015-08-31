# wifi
公交wifi代码
#接口
##单条路线查询
###http://localhost/wifi/index.php/home/line/read/id/{id}/command_id/{command_id}
{id}为查询路线的id,现在有1,2,返回json格式如下
```
{
    "command_id":"1",
    "name": "11路",
    "start_time": "2015-08-20 09:00:00",
    "end_time": "2015-08-20 19:00:00",
    "type": "0",
    "price": "2",
    "stations": [
        {
            "id": 1,
            "name": "A",
            "sort": 0
        },
        {
            "id": 2,
            "name": "B",
            "sort": 1
        },
        {
            "id": 3,
            "name": "C",
            "sort": 2
        },
        {
            "id": 4,
            "name": "D",
            "sort": 3
        }
    ]
}
```
##模糊搜索路线
###http://localhost/wifi/index.php/home/line/search/key/1/command_id/{command_id}
最后的数字为要搜索的关键字,目前只有11路和12路,返回json格式如下
```
{
    "command_id":"1",
    "lines": [
        {
            "id": 1,
            "name": "11路",
            "start_station": "A",
            "end_station": "D"
        },
        {
            "id": 2,
            "name": "11路",
            "start_station": "D",
            "end_station": "A"
        },
        {
            "id": 3,
            "name": "12路",
            "start_station": "E",
            "end_station": "F"
        },
        {
            "id": 4,
            "name": "12路",
            "start_station": "F",
            "end_station": "E"
        }
    ]
}
```
##用户点击站点返回制定数量的最近的公交车
###http://localhost/wifi/index.php/home/line/station/lid/1/sid/4/num/2/command_id/{command_id}
所有数字都是参数,lid表示线路id,sid表示点击的站点id,num表示需要的数量,返回的json格式如下
```
{
    "command_id":"1",
    "bus": [
        {
            "no": "鲁B120",
            "distance": 2,
            "name": "B",
            "time": "2015-08-26 10:10:04"
        },
        {
            "no": "鲁B110",
            "distance": 1,
            "name": "C",
            "time": "2015-08-26 10:10:04"
        }
    ]
}
```
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
###http://localhost/wifi/index.php/home/user/update/id/{id}/command_id/{command_id}
id为用户的id,目前只有1,返回用户剩余的流量
```
{
    "command_id": "1",
    "flow": 110
}
```
##修改用户流量
###http://localhost/wifi/index.php/home/user/update/id/{id}/command_id/{command_id}/num/{num}
id为用户的id,目前只有1,num为流量,为正增加流量,为负减少流量,为0相当于上一条查询用户流量功能,成功返回用户剩余的流量
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
                <td>1</td>
                <td>Df</td>
                <td>磁盘使用率的数字,url中不支持百分号</td>
            </tr>
        </tbody>
    </table>
</html>
