.class public final Lcom/android/server/audio/SoundEffectsHelper$Resource;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mFileName:Ljava/lang/String;

.field public mHasSituationVolume:Z

.field public mLoaded:Z

.field public mSampleId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 8
    .line 9
    return-void
.end method
