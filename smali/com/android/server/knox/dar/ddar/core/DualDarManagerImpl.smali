.class public final Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static delayDataLockOnceForDeviceOwner:Z = false


# instance fields
.field public final hardResetTask:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda2;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

.field public final mLicenseExpiryAlarmListenerForUser:Landroid/util/ArrayMap;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mLicenseExpiryAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->hardResetTask:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda2;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    .line 19
    .line 20
    iget-object v0, p1, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 30
    .line 31
    new-instance v1, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 37
    .line 38
    new-instance v0, Lcom/samsung/android/knox/dar/VirtualLockUtils;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/samsung/android/knox/dar/VirtualLockUtils;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    const-class v0, Landroid/app/AlarmManager;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/app/AlarmManager;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 56
    .line 57
    const-string p1, "DualDarManagerImpl"

    .line 58
    .line 59
    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance v0, Landroid/os/Handler;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mHandler:Landroid/os/Handler;

    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final handleClearDualDarTrialExpiryTimer(Landroid/os/Bundle;)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "user_id"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mLicenseExpiryAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    const-string/jumbo v2, "handleRemoveLicenseExpiryTimer cancelled alarm successful for user : "

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-array v3, v1, [Ljava/lang/Object;

    .line 32
    .line 33
    const-string v4, "DualDarManagerImpl"

    .line 34
    .line 35
    invoke-static {v4, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mLicenseExpiryAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x1

    .line 65
    return p0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p0

    .line 69
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    .line 74
    .line 75
    return v1

    .line 76
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    .line 78
    .line 79
    throw p0
.end method

.method public final handleDataLock(I)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    :try_start_0
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const-string/jumbo v2, "power"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/os/PowerManager;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const-string/jumbo v3, "telecom"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/telecom/TelecomManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->hardResetTask:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda2;

    .line 42
    .line 43
    const-wide/32 v4, 0xea60

    .line 44
    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    const-string v7, "DualDarManagerImpl"

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    :try_start_1
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    const-string p1, "User is on the phone now. Check in 60 seconds again."

    .line 58
    .line 59
    new-array v2, v6, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-static {v7, p1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    if-eqz p1, :cond_2

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    sget-boolean v2, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->delayDataLockOnceForDeviceOwner:Z

    .line 79
    .line 80
    if-nez v2, :cond_2

    .line 81
    .line 82
    const-string p1, "User is interactive now. Delay once for 60 seconds."

    .line 83
    .line 84
    new-array v2, v6, [Ljava/lang/Object;

    .line 85
    .line 86
    invoke-static {v7, p1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    const/4 p1, 0x1

    .line 90
    sput-boolean p1, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->delayDataLockOnceForDeviceOwner:Z

    .line 91
    .line 92
    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    if-eqz p1, :cond_3

    .line 97
    .line 98
    const-string p0, "Perform hard reboot when datalock in DO case"

    .line 99
    .line 100
    new-array v2, v6, [Ljava/lang/Object;

    .line 101
    .line 102
    invoke-static {v7, p0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    const-string/jumbo p0, "data lock timeout for dualdar"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    const-string p0, "Failed to get PowerManager"

    .line 113
    .line 114
    new-array p1, v6, [Ljava/lang/Object;

    .line 115
    .line 116
    invoke-static {v7, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .line 118
    .line 119
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    .line 125
    .line 126
    throw p0
.end method

.method public final handleDeviceOwnerProvisioning(Landroid/os/Bundle;)Z
    .locals 6

    .line 1
    const-string v0, "DualDarManagerImpl"

    .line 2
    .line 3
    const-string/jumbo v1, "handleDeviceOwnerProvisioning"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const-string v0, "1"

    .line 10
    .line 11
    const-string/jumbo v1, "persist.sys.dualdar.do"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v0, "DUAL_DAR_ADMIN_PACKAGE"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string/jumbo v2, "dualdar-config-client-package"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const-string/jumbo v3, "dar"

    .line 38
    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/android/server/knox/dar/DarManagerService;

    .line 47
    .line 48
    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    new-instance v4, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    invoke-direct {v4, v0, v5}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/android/server/knox/dar/DarManagerService;

    .line 72
    .line 73
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v2, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    const/4 v3, 0x1

    .line 80
    invoke-direct {v2, p1, v3}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->handleDeviceOwnerProvisioning()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    const-string/jumbo v1, "trust"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/app/trust/TrustManager;

    .line 108
    .line 109
    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, v1, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->reserveUserIdForSystem()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    const/16 v2, -0x2710

    .line 120
    .line 121
    if-eq v0, v2, :cond_4

    .line 122
    .line 123
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 124
    .line 125
    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->setMainUserId(II)V

    .line 126
    .line 127
    .line 128
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 129
    .line 130
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->setInnerAuthUserId(II)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    const-string p0, "0"

    .line 135
    .line 136
    invoke-static {v1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_4
    :goto_1
    return p1
.end method

.method public final handleScheduleDualDarTrialExpiryTimer(Landroid/os/Bundle;)Z
    .locals 6

    .line 1
    const-string/jumbo v0, "user_id"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "TRIAL_SCHEDULED_TIME"

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    const-string v3, "IS_CREATION"

    .line 15
    .line 16
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const-string v3, "DualDarManagerImpl"

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const-string/jumbo p1, "setting alarm for license expiry, isCreation = true"

    .line 26
    .line 27
    .line 28
    new-array v4, v4, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {v3, p1, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->scheduleDualDarTrialExpiryTimer(IJ)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mLicenseExpiryAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;

    .line 49
    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    const-string/jumbo p1, "setting alarm for license expiry, isCreation = false"

    .line 53
    .line 54
    .line 55
    new-array v4, v4, [Ljava/lang/Object;

    .line 56
    .line 57
    invoke-static {v3, p1, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->scheduleDualDarTrialExpiryTimer(IJ)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    return p0

    .line 65
    :cond_1
    return v4
.end method

.method public final scheduleDualDarTrialExpiryTimer(IJ)Z
    .locals 9

    .line 1
    new-instance v5, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v5, v0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;-><init>(Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mLicenseExpiryAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 23
    .line 24
    .line 25
    move-result-wide v7

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 27
    .line 28
    const-string v4, "LicenseNotificationHandler.LicenseLockForUser"

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v1, 0x2

    .line 32
    move-wide v2, p2

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    return p0

    .line 58
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    throw p0
.end method
