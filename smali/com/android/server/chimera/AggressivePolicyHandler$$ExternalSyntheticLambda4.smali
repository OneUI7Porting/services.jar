.class public final synthetic Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 4
    .line 5
    iget p0, p2, Lcom/android/server/chimera/ChimeraAppInfo;->finalScore:F

    .line 6
    .line 7
    iget p1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->finalScore:F

    .line 8
    .line 9
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
