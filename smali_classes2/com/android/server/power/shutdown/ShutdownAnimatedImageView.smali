.class public final Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;
.super Landroid/widget/ImageView;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public canvas:Landroid/graphics/Canvas;

.field public listener:Lcom/android/server/power/shutdown/PlayerInterface$ViewSizeListener;


# virtual methods
.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->listener:Lcom/android/server/power/shutdown/PlayerInterface$ViewSizeListener;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/power/shutdown/PlayerInterface$ViewSizeListener;->onSizeChanged(IIII)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
