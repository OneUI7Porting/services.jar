.class public abstract Lcom/samsung/android/server/hwrs/samba/ServerManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public static startSmbServer()V
    .locals 3

    .line 1
    const-string v0, "[HWRS_SYS]ServerManager"

    .line 2
    .line 3
    const-string/jumbo v1, "startSmbServer"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const-string v1, "ksmbd_stop"

    .line 10
    .line 11
    invoke-static {v1}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const-string v1, "ksmbd_start"

    .line 18
    .line 19
    invoke-static {v1}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    const-string v2, "/data/misc/hwrs/ksmbd.lock"

    .line 26
    .line 27
    invoke-static {v2}, Lcom/samsung/android/server/hwrs/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v2, "start ksmbd prop"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v2, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    .line 40
    .line 41
    invoke-static {v1, v2}, Lcom/samsung/android/server/hwrs/samba/ServerManager;->waitForState(Ljava/lang/String;Landroid/os/SystemService$State;)V

    .line 42
    .line 43
    .line 44
    const-string v1, "Start KSMBD Successful!!!"

    .line 45
    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string v1, "KSMBD already running"

    .line 51
    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void

    .line 56
    :cond_1
    const-string v1, "Server stopping is in progress, can\'t start server"

    .line 57
    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;

    .line 62
    .line 63
    const-string v1, "ServerBusy"

    .line 64
    .line 65
    invoke-direct {v0, v1}, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0
.end method

.method public static stopSmbServer()V
    .locals 3

    .line 1
    const-string v0, "[HWRS_SYS]ServerManager"

    .line 2
    .line 3
    const-string/jumbo v1, "stopSmbServer"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const-string v1, "ksmbd_stop"

    .line 10
    .line 11
    invoke-static {v1}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const-string/jumbo v2, "stop ksmbd prop"

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string/jumbo v2, "wait for  ksmbd_stop to stop"

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    sget-object v2, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    .line 33
    .line 34
    invoke-static {v1, v2}, Lcom/samsung/android/server/hwrs/samba/ServerManager;->waitForState(Ljava/lang/String;Landroid/os/SystemService$State;)V

    .line 35
    .line 36
    .line 37
    const-string/jumbo v1, "wait for  ksmbd_start to stop"

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    const-string v1, "ksmbd_start"

    .line 44
    .line 45
    invoke-static {v1, v2}, Lcom/samsung/android/server/hwrs/samba/ServerManager;->waitForState(Ljava/lang/String;Landroid/os/SystemService$State;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "Stop KSMBD Successful!!!"

    .line 49
    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-string v1, "KSMBD stopping..."

    .line 55
    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public static waitForState(Ljava/lang/String;Landroid/os/SystemService$State;)V
    .locals 6

    .line 1
    const-wide/16 v0, 0x2710

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    add-long/2addr v2, v0

    .line 8
    :goto_0
    invoke-static {p0}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    cmp-long v1, v4, v2

    .line 24
    .line 25
    if-gez v1, :cond_1

    .line 26
    .line 27
    const-wide/16 v0, 0xa

    .line 28
    .line 29
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string v1, "[HWRS_SYS]ServerManager"

    .line 35
    .line 36
    const-string/jumbo v4, "sleep: exception"

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance v1, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;

    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v3, "Service "

    .line 51
    .line 52
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p0, " currently "

    .line 59
    .line 60
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p0, "; waited 10000ms for "

    .line 67
    .line 68
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-direct {v1, p0}, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v1
.end method
