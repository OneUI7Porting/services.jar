.class public final Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final bedTimeMillis:J

.field public final confidence:F

.field public final isConfident:Z

.field public final wakeupTimeMillis:J

.field public final weekType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJFZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->weekType:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->bedTimeMillis:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->wakeupTimeMillis:J

    .line 9
    .line 10
    iput p6, p0, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->confidence:F

    .line 11
    .line 12
    iput-boolean p7, p0, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->isConfident:Z

    .line 13
    .line 14
    return-void
.end method