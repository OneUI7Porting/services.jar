.class public final Lcom/android/server/audio/AudioService$VolumeMap;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final lowerStep:S

.field public final raiseStep:S


# direct methods
.method public constructor <init>(SS)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-short p2, p0, Lcom/android/server/audio/AudioService$VolumeMap;->raiseStep:S

    .line 5
    .line 6
    iput-short p1, p0, Lcom/android/server/audio/AudioService$VolumeMap;->lowerStep:S

    .line 7
    .line 8
    return-void
.end method
