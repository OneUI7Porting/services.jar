.class public final synthetic Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda1;->f$1:Z

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 15
    .line 16
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iput-object v3, v2, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 25
    .line 26
    new-instance v2, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda7;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda7;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 32
    .line 33
    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method
