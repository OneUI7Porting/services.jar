.class public final Lcom/android/server/wm/WindowState$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    iget p0, p1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 6
    .line 7
    iget p1, p2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 8
    .line 9
    if-lt p0, p1, :cond_1

    .line 10
    .line 11
    if-ne p0, p1, :cond_0

    .line 12
    .line 13
    if-gez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, -0x1

    .line 19
    :goto_1
    return p0
.end method
