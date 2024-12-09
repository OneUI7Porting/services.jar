.class public final synthetic Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;->callback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    iget v1, v0, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/audio/SensorHandleThread;

    .line 13
    .line 14
    iput-object p0, v0, Lcom/samsung/android/server/audio/SensorHandleThread;->mMusicDevices:Ljava/util/Set;

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :pswitch_0
    iget-object v0, v0, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/audio/SensorHandleThread;

    .line 18
    .line 19
    iput-object p0, v0, Lcom/samsung/android/server/audio/SensorHandleThread;->mVoiceDevices:Ljava/util/Set;

    .line 20
    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    sget-object v1, Lcom/samsung/android/server/audio/SensorHandleThread;->sBluetoothCommunicationDevices:Ljava/util/Set;

    .line 30
    .line 31
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    new-instance v2, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda2;

    .line 35
    .line 36
    invoke-direct {v2, v1}, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    :goto_0
    if-eqz p0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/SensorHandleThread;->stopProximate()V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/SensorHandleThread;->startProximate()V

    .line 50
    .line 51
    .line 52
    :goto_1
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
