.class public final Lcom/android/server/desktopmode/DefaultBlocker;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityManager;Landroid/hardware/display/DisplayManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;-><init>(Lcom/android/server/desktopmode/DefaultBlocker;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mActivityManager:Landroid/app/ActivityManager;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 16
    .line 17
    return-void
.end method
