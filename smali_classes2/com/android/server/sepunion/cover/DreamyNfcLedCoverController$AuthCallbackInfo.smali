.class public final Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;
.super Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    .line 2
    .line 3
    invoke-direct/range {p0 .. p6}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    const-string v0, "DreamyNfcLedCoverController"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "binderDied : binder = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p0
.end method
