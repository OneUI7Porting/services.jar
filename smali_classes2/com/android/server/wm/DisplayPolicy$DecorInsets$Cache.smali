.class public final Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mActive:Z

.field public final mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

.field public mPreserveId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 10
    .line 11
    return-void
.end method