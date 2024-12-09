.class public interface abstract Lcom/android/server/wm/InsetsControlTarget;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public canShowTransient()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;

    .line 2
    .line 3
    return p0
.end method

.method public getRequestedVisibleTypes()I
    .locals 0

    .line 1
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public getWindow()Lcom/android/server/wm/WindowState;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public hideInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    .line 1
    return-void
.end method

.method public isRequestedVisible(I)Z
    .locals 0

    .line 1
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    and-int/2addr p0, p1

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public notifyInsetsControlChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setImeInputTargetRequestedVisibility(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    .line 1
    return-void
.end method
