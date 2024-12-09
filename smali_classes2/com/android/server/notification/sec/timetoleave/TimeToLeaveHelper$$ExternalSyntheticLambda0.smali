.class public final synthetic Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;

.field public final synthetic f$1:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;Ljava/util/concurrent/CompletableFuture;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CompletableFuture;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CompletableFuture;

    .line 9
    .line 10
    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    const-string p0, "TimeToLeaveHelper"

    .line 20
    .line 21
    const-string p1, "Succeeded to set Schema"

    .line 22
    .line 23
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CompletableFuture;

    .line 30
    .line 31
    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    const-string p0, "TimeToLeaveHelper"

    .line 41
    .line 42
    const-string/jumbo p1, "succeeded to clear documents"

    .line 43
    .line 44
    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CompletableFuture;

    .line 52
    .line 53
    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const-string v1, "TimeToLeaveHelper"

    .line 63
    .line 64
    if-nez v0, :cond_0

    .line 65
    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 76
    .line 77
    .line 78
    const-string p0, "Failed to create AppSearchSession"

    .line 79
    .line 80
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    const-string p0, "Succeeded to create AppSearchSession"

    .line 100
    .line 101
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    :cond_1
    :goto_0
    return-void

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
