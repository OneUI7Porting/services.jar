.class public final Lcom/android/server/wm/InputConfigAdapter$FlagMapping;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mFlag:I

.field public final mInputConfig:I

.field public final mInverted:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mFlag:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mInputConfig:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mInverted:Z

    .line 9
    .line 10
    return-void
.end method
