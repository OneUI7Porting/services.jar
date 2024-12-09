.class public final Lcom/android/server/display/exynos/ExynosDisplayTune$1;
.super Ljava/util/TimerTask;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayTune;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayTune;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayTune$1;->this$0:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune$1;->this$0:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CALIB_DATA_XML_PATH:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "tune"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayTune;->setCalibrationDQE(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
