.class public final Lcom/android/server/dreams/DreamUiEventLoggerImpl;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mLoggableDreamPrefixes:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/dreams/DreamUiEventLoggerImpl;->mLoggableDreamPrefixes:[Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-gtz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamUiEventLoggerImpl;->mLoggableDreamPrefixes:[Ljava/lang/String;

    .line 11
    .line 12
    array-length v3, v2

    .line 13
    if-ge v1, v3, :cond_2

    .line 14
    .line 15
    aget-object v2, v2, v1

    .line 16
    .line 17
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const-string/jumbo p2, "other"

    .line 28
    .line 29
    .line 30
    :goto_1
    const/16 p0, 0x1c1

    .line 31
    .line 32
    invoke-static {p0, v0, p1, v0, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method