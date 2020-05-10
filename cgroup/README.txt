

1.管理员用户在/sys/fs/cgroup/cpu/下创建一个文件夹 test
这个文件下会自动创建如下文件：
cgroup.clone_children  cpuacct.stat   cpuacct.usage_all     cpuacct.usage_percpu_sys   cpuacct.usage_sys   cpu.cfs_period_us  cpu.shares  notify_on_release
cgroup.procs           cpuacct.usage  cpuacct.usage_percpu  cpuacct.usage_percpu_user  cpuacct.usage_user  cpu.cfs_quota_us   cpu.stat    tasks
2.编译并执行test.c,并使用top 查看资源使用的状况。
3.控制cpu使用率
  echo 20000  /sys/fs/cgroup/cpu/test/cpu.cfs_quota_us
  echo PIDNUM /sys/fs/cgroup/cpu/test/tasks
  控制内存的使用
  echo 64k > /sys/fs/cgroup/memory/haoel/memory.limit_in_bytes
  echo PIDNUM  /sys/fs/cgroup/memory/haoel/tasks
  控制磁盘的io速率
  echo '8:0 1048576'  > /sys/fs/cgroup/blkio/haoel/blkio.throttle.read_bps_device
  echo PIDNUM > /sys/fs/cgroup/blkio/haoel/tasks
4.cgroup 控制
1 >blkio      — 这个子系统为块设备设定输入/输出限制，比如物理设备（磁盘，固态硬盘，USB 等等）。
2 >cpu        — 这个子系统使用调度程序提供对 CPU 的 cgroup 任务访问。
3 >cpuacct    — 这个子系统自动生成 cgroup 中任务所使用的 CPU 报告。
4 >cpuset     — 这个子系统为 cgroup 中的任务分配独立 CPU（在多核系统）和内存节点。
5 >devices    — 这个子系统可允许或者拒绝 cgroup 中的任务访问设备。
6 >freezer    — 这个子系统挂起或者恢复 cgroup 中的任务。
7 >memory     — 这个子系统设定 cgroup 中任务使用的内存限制，并自动生成内存资源使用报告。
8 >net_cls    — 这个子系统使用等级识别符（classid）标记网络数据包，可允许 Linux 流量控制程序（tc）识别从具体 cgroup 中生成的数据包。
9 >net_prio   — 这个子系统用来设计网络流量的优先级
10>hugetlb    — 这个子系统主要针对于HugeTLB系统进行限制，这是一个大页文件系统。
11>perf_event — 对cgroup进行性能监控
12>pids       — 限制一个cgroup及其子孙cgroup中的总进程数
