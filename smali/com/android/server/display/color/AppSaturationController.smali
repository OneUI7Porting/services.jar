.class public final Lcom/android/server/display/color/AppSaturationController;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field static final TRANSLATION_VECTOR:[F


# instance fields
.field public final mAppsMap:Ljava/util/Map;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/server/display/color/AppSaturationController;->TRANSLATION_VECTOR:[F

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method public static computeGrayscaleTransformMatrix(F[F)V
    .locals 6

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    sub-float/2addr v0, p0

    .line 4
    const v1, 0x3e6c8b44    # 0.231f

    .line 5
    .line 6
    .line 7
    mul-float/2addr v1, v0

    .line 8
    const v2, 0x3f370a3d    # 0.715f

    .line 9
    .line 10
    .line 11
    mul-float/2addr v2, v0

    .line 12
    const v3, 0x3d9374bc    # 0.072f

    .line 13
    .line 14
    .line 15
    mul-float/2addr v0, v3

    .line 16
    const/4 v3, 0x3

    .line 17
    new-array v4, v3, [F

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    aput v1, v4, v5

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    aput v2, v4, v1

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    aput v0, v4, v2

    .line 27
    .line 28
    aget v0, v4, v5

    .line 29
    .line 30
    add-float/2addr v0, p0

    .line 31
    aput v0, p1, v5

    .line 32
    .line 33
    aget v0, v4, v5

    .line 34
    .line 35
    aput v0, p1, v1

    .line 36
    .line 37
    aput v0, p1, v2

    .line 38
    .line 39
    aget v0, v4, v1

    .line 40
    .line 41
    aput v0, p1, v3

    .line 42
    .line 43
    const/4 v1, 0x4

    .line 44
    add-float v3, v0, p0

    .line 45
    .line 46
    aput v3, p1, v1

    .line 47
    .line 48
    const/4 v1, 0x5

    .line 49
    aput v0, p1, v1

    .line 50
    .line 51
    aget v0, v4, v2

    .line 52
    .line 53
    const/4 v1, 0x6

    .line 54
    aput v0, p1, v1

    .line 55
    .line 56
    const/4 v1, 0x7

    .line 57
    aput v0, p1, v1

    .line 58
    .line 59
    const/16 v1, 0x8

    .line 60
    .line 61
    add-float/2addr v0, p0

    .line 62
    aput v0, p1, v1

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final getSaturationControllerLocked(ILjava/lang/String;)Lcom/android/server/display/color/AppSaturationController$SaturationController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    .line 12
    .line 13
    check-cast p0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/util/SparseArray;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    .line 28
    .line 29
    check-cast p0, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-object p0, v0

    .line 35
    :goto_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p2, Lcom/android/server/display/color/AppSaturationController$SaturationController;

    .line 49
    .line 50
    invoke-direct {p2}, Lcom/android/server/display/color/AppSaturationController$SaturationController;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    move-object p0, p2

    .line 57
    :goto_1
    return-object p0
.end method
