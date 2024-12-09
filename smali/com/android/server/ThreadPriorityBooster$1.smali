.class public final Lcom/android/server/ThreadPriorityBooster$1;
.super Ljava/lang/ThreadLocal;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public final initialValue()Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/ThreadPriorityBooster$PriorityState;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
