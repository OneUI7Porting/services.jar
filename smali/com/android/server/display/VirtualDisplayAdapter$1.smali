.class public final Lcom/android/server/display/VirtualDisplayAdapter$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;


# virtual methods
.method public final createDisplay(Ljava/lang/String;ZLjava/lang/String;F)Landroid/os/IBinder;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/display/DisplayControl;->createVirtualDisplay(Ljava/lang/String;ZLjava/lang/String;F)Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final destroyDisplay(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/display/DisplayControl;->destroyVirtualDisplay(Landroid/os/IBinder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
