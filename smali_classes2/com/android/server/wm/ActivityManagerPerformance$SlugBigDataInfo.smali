.class public final Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final activityName:Ljava/lang/String;

.field public final launchTime:J

.field public final launchType:I

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;->activityName:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;->launchTime:J

    .line 9
    .line 10
    iput p1, p0, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;->launchType:I

    .line 11
    .line 12
    return-void
.end method