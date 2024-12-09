.class public final synthetic Lcom/android/server/display/DisplayDevice$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Point;

    .line 2
    .line 3
    check-cast p2, Landroid/graphics/Point;

    .line 4
    .line 5
    iget p0, p1, Landroid/graphics/Point;->x:I

    .line 6
    .line 7
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 8
    .line 9
    mul-int/2addr p0, p1

    .line 10
    iget p1, p2, Landroid/graphics/Point;->x:I

    .line 11
    .line 12
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 13
    .line 14
    mul-int/2addr p1, p2

    .line 15
    sub-int/2addr p0, p1

    .line 16
    return p0
.end method
