.class public final synthetic Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/app/appsearch/BatchResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;

.field public final synthetic f$1:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;Ljava/util/concurrent/CompletableFuture;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/CompletableFuture;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/app/appsearch/AppSearchBatchResult;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/CompletableFuture;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    const-string p0, "TimeToLeaveHelper"

    .line 18
    .line 19
    const-string/jumbo p1, "succeeded to put documents"

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/CompletableFuture;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    const-string p0, "TimeToLeaveHelper"

    .line 38
    .line 39
    const-string/jumbo p1, "succeeded to remove documents"

    .line 40
    .line 41
    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
