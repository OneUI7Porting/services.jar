.class public abstract Lcom/android/server/job/restrictions/JobRestriction;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mInternalReason:I

.field public final mPendingReason:I

.field public final mService:Lcom/android/server/job/JobSchedulerService;

.field public final mStopReason:I


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 5
    .line 6
    iput p3, p0, Lcom/android/server/job/restrictions/JobRestriction;->mPendingReason:I

    .line 7
    .line 8
    iput p2, p0, Lcom/android/server/job/restrictions/JobRestriction;->mStopReason:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/job/restrictions/JobRestriction;->mInternalReason:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public abstract dumpConstants(Landroid/util/IndentingPrintWriter;)V
.end method

.method public abstract isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z
.end method

.method public onSystemServicesReady()V
    .locals 0

    .line 1
    return-void
.end method
