.class public final Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onComplete(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string v0, "Failed to complete One Touch Play. result="

    .line 9
    .line 10
    const-string v1, "HdmiCecLocalDeviceSource"

    .line 11
    .line 12
    invoke-static {p1, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    const/16 v0, 0x6b

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendUserControlPressedAndReleased(II)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :pswitch_0
    const/4 v0, -0x1

    .line 31
    const/4 v1, 0x0

    .line 32
    const-string v2, "HdmiCecLocalDeviceSource"

    .line 33
    .line 34
    if-ne p1, v0, :cond_1

    .line 35
    .line 36
    const-string p1, "TV power toggle: TV power status unknown"

    .line 37
    .line 38
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 44
    .line 45
    const/16 p1, 0x6b

    .line 46
    .line 47
    invoke-virtual {p0, v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendUserControlPressedAndReleased(II)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    if-eqz p1, :cond_4

    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    if-ne p1, v0, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 v0, 0x1

    .line 58
    if-eq p1, v0, :cond_3

    .line 59
    .line 60
    const/4 v0, 0x3

    .line 61
    if-ne p1, v0, :cond_5

    .line 62
    .line 63
    :cond_3
    const-string p1, "TV power toggle: turning on TV"

    .line 64
    .line 65
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 71
    .line 72
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;

    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    invoke-direct {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;-><init>(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    :goto_0
    const-string p1, "TV power toggle: turning off TV"

    .line 83
    .line 84
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->sendStandby(I)V

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    .line 101
    .line 102
    .line 103
    :cond_5
    :goto_1
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
