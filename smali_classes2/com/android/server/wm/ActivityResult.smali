.class public final Lcom/android/server/wm/ActivityResult;
.super Landroid/app/ResultInfo;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mFrom:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    move v2, p3

    .line 4
    move v3, p4

    .line 5
    move-object v4, p5

    .line 6
    move-object v5, p6

    .line 7
    invoke-direct/range {v0 .. v5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/wm/ActivityResult;->mFrom:Lcom/android/server/wm/ActivityRecord;

    .line 11
    .line 12
    return-void
.end method
