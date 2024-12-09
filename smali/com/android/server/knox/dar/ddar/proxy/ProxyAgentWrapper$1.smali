.class public final Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    const-string p1, "KnoxService::ProxyAgentWrapper"

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "onBindingDied : "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v2, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter p1

    .line 29
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    .line 35
    .line 36
    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$mtriggerRestart(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V

    .line 37
    .line 38
    .line 39
    monitor-exit p1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    const-string p1, "KnoxService::ProxyAgentWrapper"

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "onNullBinding : "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v2, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter p1

    .line 29
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    .line 35
    .line 36
    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$mtriggerRestart(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V

    .line 37
    .line 38
    .line 39
    monitor-exit p1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    const-string p1, "KnoxService::ProxyAgentWrapper"

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "Knox Proxy Agent started : "

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    new-array v2, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {p1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter p1

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 39
    .line 40
    invoke-static {p2}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iput-object p2, v2, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 45
    .line 46
    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 47
    .line 48
    iget-object v2, p2, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 49
    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    const-string p0, "KnoxService::ProxyAgentWrapper"

    .line 53
    .line 54
    const-string/jumbo p2, "onServiceConnected: Unable to find Knox Proxy Agent!"

    .line 55
    .line 56
    .line 57
    new-array v0, v1, [Ljava/lang/Object;

    .line 58
    .line 59
    invoke-static {p0, p2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    monitor-exit p1

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    iput-boolean v1, p2, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    .line 67
    .line 68
    iput-boolean v0, p2, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsNotify:Z

    .line 69
    .line 70
    iget-object p2, p2, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 73
    .line 74
    .line 75
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 77
    .line 78
    iget-boolean p2, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    .line 79
    .line 80
    if-eqz p2, :cond_2

    .line 81
    .line 82
    const-string p2, "KnoxService::ProxyAgentWrapper"

    .line 83
    .line 84
    :try_start_1
    iget-object v0, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 85
    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    const-string/jumbo v0, "sending onAgentReconnected signal"

    .line 89
    .line 90
    .line 91
    new-array v2, v1, [Ljava/lang/Object;

    .line 92
    .line 93
    invoke-static {p2, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 97
    .line 98
    invoke-interface {v0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;->onAgentReconnected()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v3, "RemoteException: name:"

    .line 106
    .line 107
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 111
    .line 112
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p1, " -- onAgentReconnected"

    .line 122
    .line 123
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    new-array v2, v1, [Ljava/lang/Object;

    .line 131
    .line 132
    invoke-static {p2, p1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 136
    .line 137
    .line 138
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 139
    .line 140
    iput-boolean v1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    .line 141
    .line 142
    :cond_2
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 143
    .line 144
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 145
    .line 146
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;

    .line 147
    .line 148
    const/4 p2, 0x4

    .line 149
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    .line 151
    .line 152
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 153
    .line 154
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 155
    .line 156
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;

    .line 157
    .line 158
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 159
    .line 160
    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    const-string p1, "KnoxService::ProxyAgentWrapper"

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "Knox Proxy Agent disconnected : "

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    new-array v2, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {p1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter p1

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    .line 34
    .line 35
    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$mtriggerRestart(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V

    .line 36
    .line 37
    .line 38
    monitor-exit p1

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method
