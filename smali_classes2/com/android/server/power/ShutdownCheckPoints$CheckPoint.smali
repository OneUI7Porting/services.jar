.class public abstract Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mReason:Ljava/lang/String;

.field public final mTimestamp:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->mTimestamp:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->mReason:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract dumpDetails(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/io/PrintWriter;)V
.end method

.method public abstract getOrigin()Ljava/lang/String;
.end method
