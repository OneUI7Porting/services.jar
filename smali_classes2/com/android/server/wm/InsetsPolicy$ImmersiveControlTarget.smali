.class public final Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;
.super Lcom/android/server/wm/InsetsPolicy$ControlTarget;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final VISIBLE_TYPES:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 1
    const-string v0, "DexForceImmersiveModeControlTarget"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/InsetsPolicy$ControlTarget;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    not-int v0, v0

    .line 15
    and-int/2addr p1, v0

    .line 16
    iput p1, p0, Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;->VISIBLE_TYPES:I

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mInsetsController:Landroid/view/InsetsController;

    .line 19
    .line 20
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final getRequestedVisibleTypes()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;->VISIBLE_TYPES:I

    .line 2
    .line 3
    return p0
.end method

.method public final isRequestedVisible(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;->VISIBLE_TYPES:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method
