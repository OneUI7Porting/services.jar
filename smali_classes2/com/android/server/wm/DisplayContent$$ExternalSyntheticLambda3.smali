.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/BiFunction;


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/wm/Task;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->remove()Lcom/android/server/wm/Task;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    move-object p2, p0

    .line 12
    :cond_0
    return-object p2
.end method