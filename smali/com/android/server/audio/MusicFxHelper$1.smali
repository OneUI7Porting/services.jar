.class public final Lcom/android/server/audio/MusicFxHelper$1;
.super Landroid/app/UidObserver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/MusicFxHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/MusicFxHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/MusicFxHelper$1;->this$0:Lcom/android/server/audio/MusicFxHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUidGone(IZ)V
    .locals 2

    .line 1
    const-string p2, "AS.MusicFxHelper"

    .line 2
    .line 3
    const-string v0, " send MSG_EFFECT_CLIENT_GONE"

    .line 4
    .line 5
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/audio/MusicFxHelper$1;->this$0:Lcom/android/server/audio/MusicFxHelper;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/audio/MusicFxHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    const/4 v0, 0x0

    .line 14
    const/16 v1, 0x44d

    .line 15
    .line 16
    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
