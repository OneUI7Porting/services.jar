.class public final Lcom/android/server/display/exynos/ExynosDisplayATC$4;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayATC;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$4;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$4;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v6, Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    .line 7
    .line 8
    iget v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mTimeoutMs:I

    .line 9
    .line 10
    int-to-long v2, v0

    .line 11
    iget v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mIntervalMs:I

    .line 12
    .line 13
    int-to-long v4, v0

    .line 14
    move-object v0, v6

    .line 15
    move-object v1, p0

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/exynos/ExynosDisplayATC$2;-><init>(Lcom/android/server/display/exynos/ExynosDisplayATC;JJ)V

    .line 17
    .line 18
    .line 19
    iput-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    .line 20
    .line 21
    return-void
.end method