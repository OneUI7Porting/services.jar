.class public final synthetic Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl$5;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$5;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl$5;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl$5;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;->f$1:I

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onProcessDiedLocked(I)V

    .line 16
    .line 17
    .line 18
    monitor-exit v1

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0

    .line 23
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl$5;

    .line 24
    .line 25
    iget p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;->f$1:I

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 28
    .line 29
    iget-object v1, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v1

    .line 32
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onForegroundActivitiesChangedLocked(I)V

    .line 33
    .line 34
    .line 35
    monitor-exit v1

    .line 36
    return-void

    .line 37
    :catchall_1
    move-exception p0

    .line 38
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    throw p0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
