.class public final Lcom/android/server/devicestate/OverrideRequest;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mFlags:I

.field public final mPid:I

.field public final mRequestType:I

.field public final mRequestedState:Landroid/hardware/devicestate/DeviceState;

.field public final mToken:Landroid/os/IBinder;

.field public final mUid:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;IILandroid/hardware/devicestate/DeviceState;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/devicestate/OverrideRequest;->mUid:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/devicestate/OverrideRequest;->mFlags:I

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/devicestate/OverrideRequest;->mRequestType:I

    .line 15
    .line 16
    return-void
.end method
