.class public final Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public active:Z

.field public final minState:I

.field public monitoring:Z

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->name:Ljava/lang/String;

    .line 10
    .line 11
    iput p2, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    .line 12
    .line 13
    return-void
.end method
