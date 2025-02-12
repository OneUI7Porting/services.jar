.class public final Lcom/android/server/VaultKeeperService$LifeCycle;
.super Lcom/android/server/SystemService;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mVaultKeeperService:Lcom/android/server/VaultKeeperService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 5

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    if-eq p1, v0, :cond_6

    .line 4
    .line 5
    const/16 v1, 0x1e0

    .line 6
    .line 7
    if-eq p1, v1, :cond_5

    .line 8
    .line 9
    const/16 v1, 0x1f4

    .line 10
    .line 11
    if-eq p1, v1, :cond_4

    .line 12
    .line 13
    const/16 v1, 0x208

    .line 14
    .line 15
    if-eq p1, v1, :cond_3

    .line 16
    .line 17
    const/16 v1, 0x226

    .line 18
    .line 19
    if-eq p1, v1, :cond_2

    .line 20
    .line 21
    const/16 v1, 0x258

    .line 22
    .line 23
    if-eq p1, v1, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x3e8

    .line 26
    .line 27
    if-eq p1, v1, :cond_0

    .line 28
    .line 29
    const-string v1, "Unknown"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v1, "PHASE_BOOT_COMPLETED"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v1, "PHASE_THIRD_PARTY_APPS_CAN_START"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const-string v1, "PHASE_ACTIVITY_MANAGER_READY"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const-string v1, "PHASE_DEVICE_SPECIFIC_SERVICES_READY"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    const-string v1, "PHASE_SYSTEM_SERVICES_READY"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    const-string v1, "PHASE_LOCK_SETTINGS_READY"

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_6
    const-string v1, "PHASE_WAIT_FOR_DEFAULT_DISPLAY"

    .line 51
    .line 52
    :goto_0
    const-string v2, "["

    .line 53
    .line 54
    const-string v3, "]"

    .line 55
    .line 56
    const-string v4, "VaultKeeperService$Lifecycle"

    .line 57
    .line 58
    invoke-static {v2, v1, v3, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    if-ne p1, v0, :cond_7

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/VaultKeeperService$LifeCycle;->mVaultKeeperService:Lcom/android/server/VaultKeeperService;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    const-string p0, "VaultKeeperService"

    .line 69
    .line 70
    const-string p1, "System is ready"

    .line 71
    .line 72
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_7
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string v0, "VaultKeeperService$Lifecycle"

    .line 2
    .line 3
    const-string/jumbo v1, "onStart()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/android/server/VaultKeeperService;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Lcom/android/server/VaultKeeperService;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/VaultKeeperService$LifeCycle;->mVaultKeeperService:Lcom/android/server/VaultKeeperService;

    .line 19
    .line 20
    const-string v1, "VaultKeeperService"

    .line 21
    .line 22
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
