.class public final Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;
.super Ljava/lang/Thread;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/SoundEffectsHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 2
    .line 3
    const-string p1, "AS.SfxWorker"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 8
    .line 9
    new-instance v2, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 12
    .line 13
    invoke-direct {v2, v3}, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    .line 14
    .line 15
    .line 16
    iput-object v2, v1, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 21
    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p0
.end method
