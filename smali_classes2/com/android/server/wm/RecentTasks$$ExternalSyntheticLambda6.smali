.class public final synthetic Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/wm/Task;

    .line 2
    .line 3
    iget-object p0, p1, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p0, p1, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p1, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    .line 12
    .line 13
    return-object p0
.end method
