.class public final Lcom/android/server/am/ServiceRecord$ShortFgsInfo;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mStartForegroundCount:I

.field public mStartId:I

.field public final mStartTime:J

.field public final synthetic this$0:Lcom/android/server/am/ServiceRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ServiceRecord;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartTime:J

    .line 7
    .line 8
    iget p2, p1, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    .line 9
    .line 10
    iput p2, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartForegroundCount:I

    .line 11
    .line 12
    iget p1, p1, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    .line 13
    .line 14
    iput p1, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartId:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getAnrTime()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartTime:J

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 4
    .line 5
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 8
    .line 9
    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsTimeoutDuration:J

    .line 10
    .line 11
    add-long/2addr v0, v2

    .line 12
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 17
    .line 18
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsAnrExtraWaitDuration:J

    .line 19
    .line 20
    add-long/2addr v0, v2

    .line 21
    return-wide v0
.end method

.method public final getProcStateDemoteTime()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartTime:J

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 4
    .line 5
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 8
    .line 9
    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsTimeoutDuration:J

    .line 10
    .line 11
    add-long/2addr v0, v2

    .line 12
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 17
    .line 18
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsProcStateExtraWaitDuration:J

    .line 19
    .line 20
    add-long/2addr v0, v2

    .line 21
    return-wide v0
.end method

.method public final getTimeoutTime()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartTime:J

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 8
    .line 9
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsTimeoutDuration:J

    .line 10
    .line 11
    add-long/2addr v0, v2

    .line 12
    return-wide v0
.end method
