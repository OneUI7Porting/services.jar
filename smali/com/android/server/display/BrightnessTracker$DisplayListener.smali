.class public final Lcom/android/server/display/BrightnessTracker$DisplayListener;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$DisplayListener;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$DisplayListener;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget v0, p0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    .line 35
    .line 36
    cmpl-float p1, p1, v0

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method
