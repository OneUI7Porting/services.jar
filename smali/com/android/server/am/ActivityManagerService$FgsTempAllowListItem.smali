.class public final Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mCallingUid:I

.field public final mDuration:J

.field public final mReason:Ljava/lang/String;

.field public final mReasonCode:I


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mDuration:J

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReasonCode:I

    .line 7
    .line 8
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReason:Ljava/lang/String;

    .line 9
    .line 10
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mCallingUid:I

    .line 11
    .line 12
    return-void
.end method
