.class public final synthetic Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/am/PhantomProcessRecord;

    .line 2
    .line 3
    const-string p0, "Trimming Orphan processes"

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, p0, v0}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
