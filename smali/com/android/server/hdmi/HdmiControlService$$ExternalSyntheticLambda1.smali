.class public final synthetic Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0, v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(IZ)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(IZ)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeBehavior()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/hdmi/PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(IZ)V

    .line 48
    .line 49
    .line 50
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->startQueuedActions()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    return-void

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
