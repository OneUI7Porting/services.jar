.class public abstract Lcom/samsung/android/server/hwrs/samba/ServerUserManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public static addUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "addUser - UserName:"

    .line 2
    .line 3
    const-string v1, "[HWRS_SYS]ServerUserManager"

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string v0, "ksmbd.au.u"

    .line 25
    .line 26
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p0, "ksmbd.au.p"

    .line 30
    .line 31
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p1, "ksmbd_add_user"

    .line 35
    .line 36
    invoke-static {p1}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    invoke-static {p1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string/jumbo v2, "wait for  ksmbd add user to stop"

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    sget-object v2, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    .line 52
    .line 53
    invoke-static {p1, v2}, Lcom/samsung/android/server/hwrs/samba/ServerManager;->waitForState(Ljava/lang/String;Landroid/os/SystemService$State;)V

    .line 54
    .line 55
    .line 56
    const-string p1, "KSMBD add user Successful!!!"

    .line 57
    .line 58
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const-string p1, "KSMBD add user already running..."

    .line 63
    .line 64
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :goto_0
    const-string p1, ""

    .line 68
    .line 69
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string p0, "addUser success!!!"

    .line 76
    .line 77
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_1
    new-instance p0, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;

    .line 82
    .line 83
    const-string p1, "fields cannot be null or empty!!!"

    .line 84
    .line 85
    invoke-direct {p0, p1}, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0
.end method

.method public static delUser(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "deleteUser - UserName:"

    .line 2
    .line 3
    const-string v1, "[HWRS_SYS]ServerUserManager"

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const-string v0, "ksmbd.au.u"

    .line 17
    .line 18
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p0, "ksmbd_delete_user"

    .line 22
    .line 23
    invoke-static {p0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    invoke-static {p0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v2, "wait for  ksmbd delete user to stop"

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    sget-object v2, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    .line 39
    .line 40
    invoke-static {p0, v2}, Lcom/samsung/android/server/hwrs/samba/ServerManager;->waitForState(Ljava/lang/String;Landroid/os/SystemService$State;)V

    .line 41
    .line 42
    .line 43
    const-string p0, "KSMBD delete user Successful!!!"

    .line 44
    .line 45
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string p0, "KSMBD delete user already running..."

    .line 50
    .line 51
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :goto_0
    const-string p0, ""

    .line 55
    .line 56
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string p0, "delUser success!!!"

    .line 60
    .line 61
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    new-instance p0, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;

    .line 66
    .line 67
    const-string v0, "fields cannot be null or empty!!!"

    .line 68
    .line 69
    invoke-direct {p0, v0}, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0
.end method
