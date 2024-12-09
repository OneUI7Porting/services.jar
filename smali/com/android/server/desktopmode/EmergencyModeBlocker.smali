.class public final Lcom/android/server/desktopmode/EmergencyModeBlocker;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBlockerRegistered:Z

.field public final mContext:Landroid/content/Context;

.field public mEmergencyModeEnabledInSettings:Z

.field public mEnabledInBroadcast:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/desktopmode/Injector;

.field public mLimitAppsAndHomeScreenEnabledInSettings:Z

.field public final mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public mMpsmEnabledInSettings:Z

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field public final mUpdateRunnable:Lcom/android/server/desktopmode/EmergencyModeBlocker$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;Lcom/android/server/desktopmode/Injector;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/desktopmode/EmergencyModeBlocker$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mUpdateRunnable:Lcom/android/server/desktopmode/EmergencyModeBlocker$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEmergencyModeEnabledInSettings:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mMpsmEnabledInSettings:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mLimitAppsAndHomeScreenEnabledInSettings:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInBroadcast:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 25
    .line 26
    iput-object p4, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 27
    .line 28
    new-instance p2, Landroid/os/Handler;

    .line 29
    .line 30
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isEmergencyModeEnabledInSettings()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    iput-boolean p2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEmergencyModeEnabledInSettings:Z

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isMpsmEnabledInSettings()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    iput-boolean p2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mMpsmEnabledInSettings:Z

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isLimitAppsAndHomeScreenEnabledInSettings()Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    iput-boolean p2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mLimitAppsAndHomeScreenEnabledInSettings:Z

    .line 52
    .line 53
    new-instance p2, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;

    .line 54
    .line 55
    invoke-direct {p2, p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;-><init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V

    .line 56
    .line 57
    .line 58
    new-instance v2, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;

    .line 59
    .line 60
    invoke-direct {v2, p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;-><init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V

    .line 61
    .line 62
    .line 63
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 64
    .line 65
    new-instance v4, Landroid/content/IntentFilter;

    .line 66
    .line 67
    const-string/jumbo p4, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 68
    .line 69
    .line 70
    invoke-direct {v4, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 v7, 0x2

    .line 74
    const/4 v5, 0x0

    .line 75
    const/4 v6, 0x0

    .line 76
    move-object v1, p1

    .line 77
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 81
    .line 82
    .line 83
    move-result-object p4

    .line 84
    const-string/jumbo v1, "emergency_mode"

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const/4 v2, -0x1

    .line 92
    invoke-virtual {p4, v1, v0, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 96
    .line 97
    .line 98
    move-result-object p4

    .line 99
    const-string/jumbo v1, "ultra_powersaving_mode"

    .line 100
    .line 101
    .line 102
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {p4, v1, v0, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const-string/jumbo p4, "minimal_battery_use"

    .line 114
    .line 115
    .line 116
    invoke-static {p4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 117
    .line 118
    .line 119
    move-result-object p4

    .line 120
    invoke-virtual {p1, p4, v0, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 121
    .line 122
    .line 123
    iput-object p3, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 124
    .line 125
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration(I)V

    .line 126
    .line 127
    .line 128
    return-void
.end method


# virtual methods
.method public final isEmergencyModeEnabledInSettings()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string/jumbo v3, "emergency_mode"

    .line 17
    .line 18
    .line 19
    const/4 v4, -0x2

    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    return v5
.end method

.method public final isLimitAppsAndHomeScreenEnabledInSettings()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string/jumbo v3, "minimal_battery_use"

    .line 17
    .line 18
    .line 19
    const/4 v4, -0x2

    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    return v5
.end method

.method public final isMpsmEnabledInSettings()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string/jumbo v3, "ultra_powersaving_mode"

    .line 17
    .line 18
    .line 19
    const/4 v4, -0x2

    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    return v5
.end method

.method public final onBlocked()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mLimitAppsAndHomeScreenEnabledInSettings:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const v0, 0x104046f

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const v1, 0x1040479

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mMpsmEnabledInSettings:Z

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const p0, 0x1040471

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEmergencyModeEnabledInSettings:Z

    .line 37
    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    const p0, 0x104046c

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const p0, 0x104047a

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :goto_1
    return-object p0
.end method

.method public final scheduleUpdateBlockerRegistration(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mUpdateRunnable:Lcom/android/server/desktopmode/EmergencyModeBlocker$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mUpdateRunnable:Lcom/android/server/desktopmode/EmergencyModeBlocker$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    int-to-long v1, p1

    .line 13
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
