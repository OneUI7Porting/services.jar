.class public final Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;
.super Lcom/android/server/hdmi/HdmiCecMessage;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mAudioVolumeLevel:I


# direct methods
.method public constructor <init>(III[B)V
    .locals 6

    .line 1
    const/16 v3, 0x73

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(IIII[B)V

    .line 9
    .line 10
    .line 11
    iput p3, p0, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->mAudioVolumeLevel:I

    .line 12
    .line 13
    return-void
.end method

.method public static build(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 8

    .line 1
    and-int/lit16 v0, p2, 0xff

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    const/4 v1, 0x1

    .line 5
    new-array v7, v1, [B

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    aput-byte v0, v7, v1

    .line 9
    .line 10
    const/16 v0, 0x7fff

    .line 11
    .line 12
    invoke-static {p0, p1, v0, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->validateAddress(IIII)I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    if-nez v6, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1, p2, v7}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;-><init>(III[B)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    new-instance p2, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 25
    .line 26
    const/16 v5, 0x73

    .line 27
    .line 28
    move-object v2, p2

    .line 29
    move v3, p0

    .line 30
    move v4, p1

    .line 31
    invoke-direct/range {v2 .. v7}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(IIII[B)V

    .line 32
    .line 33
    .line 34
    return-object p2
.end method
