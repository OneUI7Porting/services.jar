.class public final Lcom/android/server/display/DlnaController;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDevice:Landroid/hardware/display/SemDlnaDevice;

.field public mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/DlnaController;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance p1, Landroid/hardware/display/SemDlnaDevice;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/hardware/display/SemDlnaDevice;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    .line 14
    .line 15
    return-void
.end method
