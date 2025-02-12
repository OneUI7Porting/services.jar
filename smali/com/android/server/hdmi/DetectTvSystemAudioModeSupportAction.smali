.class public final Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;

.field public mSendSetSystemAudioModeRetryCount:I


# virtual methods
.method public final finishAction(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;->onResult(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final handleTimerEvent(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 p1, 0x1

    .line 7
    if-eq v0, p1, :cond_3

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mSendSetSystemAudioModeRetryCount:I

    .line 14
    .line 15
    add-int/2addr v0, p1

    .line 16
    iput v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mSendSetSystemAudioModeRetryCount:I

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    const/4 v2, 0x0

    .line 20
    if-ge v0, v1, :cond_2

    .line 21
    .line 22
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 23
    .line 24
    const/16 v0, 0x7d0

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/16 v1, 0x72

    .line 34
    .line 35
    invoke-static {v0, v2, v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->finishAction(Z)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->finishAction(Z)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    sget-object v0, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:Ljava/util/Map;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 15
    .line 16
    aget-byte v0, p1, v1

    .line 17
    .line 18
    and-int/lit16 v0, v0, 0xff

    .line 19
    .line 20
    const/16 v3, 0x72

    .line 21
    .line 22
    if-ne v0, v3, :cond_2

    .line 23
    .line 24
    aget-byte p1, p1, v2

    .line 25
    .line 26
    if-ne p1, v2, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    .line 29
    .line 30
    check-cast p1, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->clearTimerMessage()V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x2

    .line 36
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 37
    .line 38
    const/16 v0, 0x12c

    .line 39
    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->finishAction(Z)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return v2

    .line 48
    :cond_2
    return v1
.end method

.method public final start()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 3
    .line 4
    const/16 v1, 0x7d0

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x72

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v1, v3, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
