.class public final synthetic Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/notification/NotificationManagerService$FlagChecker;


# virtual methods
.method public final apply(I)Z
    .locals 0

    .line 1
    and-int/lit8 p0, p1, 0x40

    .line 2
    .line 3
    if-nez p0, :cond_1

    .line 4
    .line 5
    const p0, 0x8000

    .line 6
    .line 7
    .line 8
    and-int/2addr p0, p1

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 15
    :goto_1
    return p0
.end method
