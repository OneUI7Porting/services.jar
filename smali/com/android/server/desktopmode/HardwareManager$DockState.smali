.class public final Lcom/android/server/desktopmode/HardwareManager$DockState;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mDesktopModeSupported:Z

.field public final mIsAdapter:Z

.field public final mRawDockUsbpdIds:Ljava/lang/String;

.field public final mType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x2710

    const/4 v1, 0x0

    .line 1
    const-string v2, ""

    invoke-direct {p0, v2, v1, v1, v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>(Ljava/lang/String;ZZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p4, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    .line 4
    iput-boolean p2, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mDesktopModeSupported:Z

    .line 5
    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mRawDockUsbpdIds:Ljava/lang/String;

    .line 6
    iput-boolean p3, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mIsAdapter:Z

    return-void
.end method

.method public static dockTypeToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string v0, "Unknown="

    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    const-string p0, "TYPE_DEX_RESERVED_DONGLE"

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_1
    const-string p0, "TYPE_MULTIPORT_ADAPTER_EE_P5400"

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_2
    const-string p0, "TYPE_TARGUS_ADAPTER"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_3
    const-string p0, "TYPE_MULTIPORT_ADAPTER_3"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_4
    const-string p0, "TYPE_DEX_CABLE"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_5
    const-string p0, "TYPE_HDMI_ADAPTER"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_6
    const-string p0, "TYPE_MULTIPORT_ADAPTER_2"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_7
    const-string p0, "TYPE_MULTIPORT_ADAPTER_1"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_8
    const-string p0, "TYPE_DEX_PAD_RECOVERY"

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_9
    const-string p0, "TYPE_DEX_RESERVED"

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_a
    const-string p0, "TYPE_DEX_PAD"

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_b
    const-string p0, "TYPE_INTERNAL_SCREEN"

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_c
    const-string p0, "TYPE_UNOFFICIAL_ADAPTER"

    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_d
    const-string p0, "TYPE_DEX_STATION"

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_e
    const-string p0, "TYPE_UNDOCKED"

    .line 54
    .line 55
    return-object p0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final isDexPad()Z
    .locals 1

    .line 1
    const/16 v0, 0x2714

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    .line 4
    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x2716

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method public final isDexStation()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    .line 2
    .line 3
    const/16 v0, 0x2711

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final isUndocked()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    .line 2
    .line 3
    const/16 v0, 0x2710

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DockState(mType="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->dockTypeToString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", mDesktopModeSupported="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mDesktopModeSupported:Z

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", mRawDockUsbpdIds="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mRawDockUsbpdIds:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", mIsAdapter="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-boolean p0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mIsAdapter:Z

    .line 43
    .line 44
    const-string v1, ")"

    .line 45
    .line 46
    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method
