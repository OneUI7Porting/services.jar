.class public final Lcom/android/server/display/exynos/ExynosDisplayFactory$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$1;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$1;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->startCountDownTimer(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
