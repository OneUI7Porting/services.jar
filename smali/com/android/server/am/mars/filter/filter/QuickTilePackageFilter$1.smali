.class public final Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$1;
.super Landroid/database/ContentObserver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->getActiveQuickTilePackages()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
