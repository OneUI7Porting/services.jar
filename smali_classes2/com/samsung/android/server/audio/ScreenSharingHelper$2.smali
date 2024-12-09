.class public final Lcom/samsung/android/server/audio/ScreenSharingHelper$2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/hardware/display/SemDeviceStatusListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConnectionStatusChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDlnaConnectionStatusChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onQosLevelChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onScreenSharingStatusChanged(I)V
    .locals 11

    .line 1
    const/4 v0, 0x6

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 5
    .line 6
    iget-boolean v0, p1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput-boolean v1, p1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setMirroringPolicyParameter(Z)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x7

    .line 18
    if-ne p1, v0, :cond_3

    .line 19
    .line 20
    iget-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 21
    .line 22
    iget-boolean v0, p1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iput-boolean v1, p1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    .line 28
    .line 29
    :cond_2
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setMirroringPolicyParameter(Z)V

    .line 30
    .line 31
    .line 32
    sget-boolean p1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    sput-boolean v1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    .line 37
    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v0, "l_smart_view_split_sound_enable="

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-boolean v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 60
    .line 61
    iget-object v0, p1, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    iget-object v1, v0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 66
    .line 67
    iget-object v3, p1, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundCb:Landroid/os/IBinder;

    .line 68
    .line 69
    iget v8, v0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    .line 70
    .line 71
    const/4 v10, -0x1

    .line 72
    iget v2, v0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    iget-object v5, v0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v6, v0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 78
    .line 79
    iget v7, v0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 80
    .line 81
    const/4 v9, 0x1

    .line 82
    move-object v0, p1

    .line 83
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/audio/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;IIZI)I

    .line 84
    .line 85
    .line 86
    const/4 v0, 0x0

    .line 87
    iput-object v0, p1, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    .line 88
    .line 89
    iput-object v0, p1, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundCb:Landroid/os/IBinder;

    .line 90
    .line 91
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string/jumbo v0, "onScreenSharingStatusChanged, status = "

    .line 94
    .line 95
    .line 96
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 100
    .line 101
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    .line 102
    .line 103
    const-string v0, "AS.ScreenSharingHelper"

    .line 104
    .line 105
    invoke-static {v0, p1, p0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 106
    .line 107
    .line 108
    return-void
.end method
