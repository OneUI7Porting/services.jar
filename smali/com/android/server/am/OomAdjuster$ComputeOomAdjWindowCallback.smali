.class public final Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public adj:I

.field public app:Lcom/android/server/am/ProcessRecord;

.field public appUid:I

.field public foregroundActivities:Z

.field public logUid:I

.field public mAdjType:Ljava/lang/String;

.field public mHasVisibleActivities:Z

.field public procState:I

.field public processStateCurTop:I

.field public schedGroup:I

.field public final synthetic this$0:Lcom/android/server/am/OomAdjuster;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjuster;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    .line 5
    .line 6
    return-void
.end method
