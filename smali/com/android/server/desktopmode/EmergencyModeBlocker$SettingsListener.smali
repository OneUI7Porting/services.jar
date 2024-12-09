.class public final Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;
.super Landroid/database/ContentObserver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isEmergencyModeEnabledInSettings()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput-boolean v0, p1, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEmergencyModeEnabledInSettings:Z

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isMpsmEnabledInSettings()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput-boolean v0, p1, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mMpsmEnabledInSettings:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isLimitAppsAndHomeScreenEnabledInSettings()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput-boolean v0, p1, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mLimitAppsAndHomeScreenEnabledInSettings:Z

    .line 27
    .line 28
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    sget p1, Lcom/android/server/desktopmode/EmergencyModeBlocker;->$r8$clinit:I

    .line 33
    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string/jumbo v0, "emergency_mode="

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    .line 43
    .line 44
    iget-boolean v0, v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEmergencyModeEnabledInSettings:Z

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, ", ultra_powersaving_mode="

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    .line 55
    .line 56
    iget-boolean v0, v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mMpsmEnabledInSettings:Z

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, ", minimal_battery_use="

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    .line 67
    .line 68
    iget-boolean v0, v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mLimitAppsAndHomeScreenEnabledInSettings:Z

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v0, "[DMS]EmergencyModeBlocker"

    .line 78
    .line 79
    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    .line 83
    .line 84
    const/4 p1, 0x0

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration(I)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
