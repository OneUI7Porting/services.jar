.class public final Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$4;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public final onComplete(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p0, "Failed to complete One Touch Play. result="

    .line 4
    .line 5
    const-string v0, "HdmiCecLocalDevicePlayback"

    .line 6
    .line 7
    invoke-static {p1, p0, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
