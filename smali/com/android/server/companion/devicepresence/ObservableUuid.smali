.class public final Lcom/android/server/companion/devicepresence/ObservableUuid;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mTimeApprovedMs:J

.field public final mUserId:I

.field public final mUuid:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>(ILandroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUserId:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUuid:Landroid/os/ParcelUuid;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/companion/devicepresence/ObservableUuid;->mPackageName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    iput-wide p1, p0, Lcom/android/server/companion/devicepresence/ObservableUuid;->mTimeApprovedMs:J

    .line 15
    .line 16
    return-void
.end method
