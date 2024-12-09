.class public final Lcom/android/server/desktopmode/MultiResolutionManager$1;
.super Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/desktopmode/MultiResolutionManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/MultiResolutionManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 7
    .line 8
    const-string/jumbo p1, "resolution_user_setting"

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 16
    .line 17
    const-string/jumbo p1, "standalone_mode_screen_zoom"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 25
    .line 26
    const-string/jumbo p1, "dual_mode_screen_zoom"

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onSettingChanged(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "[DMS]MultiResolutionManager"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->$r8$classId:I

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p0, v1, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    move p1, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    :goto_0
    if-ne p1, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->getDesktopModeDefaultDensity()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 28
    .line 29
    iget v2, v1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    .line 30
    .line 31
    if-eq v2, p1, :cond_3

    .line 32
    .line 33
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    sget-object v2, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    .line 38
    .line 39
    const-string/jumbo v2, "changed to: "

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v2, v0}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iput p1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->setForcedDisplayMertics(Z)V

    .line 49
    .line 50
    .line 51
    :cond_3
    return-void

    .line 52
    :pswitch_0
    iget-object p0, v1, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 55
    .line 56
    if-nez p1, :cond_4

    .line 57
    .line 58
    const/16 p1, 0xa0

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    :goto_1
    invoke-static {v1, p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$msetSelectedDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_1
    iget-object p0, v1, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 70
    .line 71
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexOnPcOrWirelessDexConnected()Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_5

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_5
    if-nez p1, :cond_7

    .line 85
    .line 86
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 87
    .line 88
    if-eqz p0, :cond_6

    .line 89
    .line 90
    sget-object p0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    .line 91
    .line 92
    const-string p0, "Resolution user setting is null."

    .line 93
    .line 94
    invoke-static {v0, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_6
    iget-object p0, v1, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 98
    .line 99
    iget-object p1, v1, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 100
    .line 101
    iget p1, p1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    .line 102
    .line 103
    invoke-static {v1, p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$msetSelectedDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_7
    sget-object p0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    .line 108
    .line 109
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 110
    .line 111
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 116
    .line 117
    iget-object p1, v1, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 118
    .line 119
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->isSupportedOn(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_8

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_8
    iget-object p0, v1, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 127
    .line 128
    :goto_2
    iget-object p1, v1, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 129
    .line 130
    iget p1, p1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    .line 131
    .line 132
    invoke-static {v1, p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$msetSelectedDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    .line 133
    .line 134
    .line 135
    :goto_3
    return-void

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
