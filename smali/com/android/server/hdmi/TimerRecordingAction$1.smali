.class public final Lcom/android/server/hdmi/TimerRecordingAction$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/TimerRecordingAction;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/TimerRecordingAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/TimerRecordingAction$1;->this$0:Lcom/android/server/hdmi/TimerRecordingAction;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Lcom/android/server/hdmi/TimerRecordingAction$1;->this$0:Lcom/android/server/hdmi/TimerRecordingAction;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 7
    .line 8
    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 9
    .line 10
    iget v1, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 20
    .line 21
    const p1, 0x1d4c0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
