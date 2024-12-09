.class public final Lcom/android/server/display/VolumeController;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mDisplayController:Lcom/android/server/display/WifiDisplayController;

.field public final mDlnaController:Lcom/android/server/display/DlnaController;

.field public final mHandler:Landroid/os/Handler;

.field public final mKeyMap:Ljava/util/Map;

.field public mMaxVolume:I

.field public mMinVolume:I

.field public mMuted:Z

.field public mVolume:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/DlnaController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/VolumeController;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/display/VolumeController;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/display/VolumeController;->mDlnaController:Lcom/android/server/display/DlnaController;

    .line 9
    .line 10
    new-instance p1, Lcom/android/server/display/VolumeController$1;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/android/server/display/VolumeController$1;-><init>(Lcom/android/server/display/VolumeController;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/display/VolumeController;->mKeyMap:Ljava/util/Map;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final setVolumeKeyEvent(I)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, -0x1

    .line 5
    if-ne p1, v3, :cond_0

    .line 6
    .line 7
    const-string v4, "VOLUME_KEY_DOWN"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-ne p1, v2, :cond_1

    .line 11
    .line 12
    const-string v4, "VOLUME_KEY_UP"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    if-ne p1, v1, :cond_2

    .line 16
    .line 17
    const-string v4, "VOLUME_MUTE"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    if-ne p1, v0, :cond_3

    .line 21
    .line 22
    const-string v4, "VOLUME_UNMUTE"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    const-string v4, ""

    .line 26
    .line 27
    :goto_0
    const-string/jumbo v5, "sendDeviceVolumeKeyEvent : "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const-string v5, "VolumeController"

    .line 35
    .line 36
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    iget-object v4, p0, Lcom/android/server/display/VolumeController;->mDlnaController:Lcom/android/server/display/DlnaController;

    .line 42
    .line 43
    iget-object v4, v4, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/hardware/display/SemDlnaDevice;->isConnected()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_4

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/display/VolumeController;->mKeyMap:Ljava/util/Map;

    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v0, Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    new-instance v0, Lcom/android/server/display/VolumeController$2;

    .line 75
    .line 76
    invoke-direct {v0, p0, p1}, Lcom/android/server/display/VolumeController$2;-><init>(Lcom/android/server/display/VolumeController;I)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/display/VolumeController;->mHandler:Landroid/os/Handler;

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    iget-object p0, p0, Lcom/android/server/display/VolumeController;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    .line 86
    .line 87
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 88
    .line 89
    if-eqz v4, :cond_8

    .line 90
    .line 91
    const-string/jumbo v4, "vkev"

    .line 92
    .line 93
    .line 94
    if-ne p1, v3, :cond_5

    .line 95
    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p0, v4, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    if-ne p1, v2, :cond_6

    .line 105
    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p0, v4, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_6
    const-string/jumbo v2, "mkev"

    .line 115
    .line 116
    .line 117
    if-ne p1, v1, :cond_7

    .line 118
    .line 119
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 120
    .line 121
    invoke-virtual {p0, v2, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_7
    if-ne p1, v0, :cond_8

    .line 126
    .line 127
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 128
    .line 129
    invoke-virtual {p0, v2, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_8
    :goto_1
    return-void
.end method
