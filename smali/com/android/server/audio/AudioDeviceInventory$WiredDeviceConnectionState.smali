.class public final Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mAttributes:Landroid/media/AudioDeviceAttributes;

.field public final mCaller:Ljava/lang/String;

.field public mForTest:Z

.field public final mState:I


# direct methods
.method public constructor <init>(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mForTest:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 8
    .line 9
    iput p2, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method
