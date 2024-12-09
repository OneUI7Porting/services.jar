.class public final Lcom/android/server/display/DisplayInfoProxy;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mInfo:Landroid/view/DisplayInfo;


# virtual methods
.method public final set(Landroid/view/DisplayInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/DisplayInfoProxy;->mInfo:Landroid/view/DisplayInfo;

    .line 2
    .line 3
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
