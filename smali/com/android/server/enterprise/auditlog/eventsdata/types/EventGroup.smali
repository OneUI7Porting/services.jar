.class public final Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final group:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p1, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    const/4 v1, 0x3

    .line 14
    if-eq p1, v1, :cond_1

    .line 15
    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    const-string p0, "Unknown group"

    .line 19
    .line 20
    const-string p1, "EventGroup"

    .line 21
    .line 22
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iput v1, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;->group:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iput v0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;->group:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iput v0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;->group:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    iput v0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;->group:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_4
    const/4 p1, 0x5

    .line 39
    iput p1, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;->group:I

    .line 40
    .line 41
    :goto_0
    return-void
.end method
