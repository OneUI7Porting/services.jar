.class public final Lcom/android/server/am/AppErrors$BadProcessInfo;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final longMsg:Ljava/lang/String;

.field public final shortMsg:Ljava/lang/String;

.field public final stack:Ljava/lang/String;

.field public final time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method