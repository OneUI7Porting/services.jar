.class public final Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public callBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;

.field public tag:Ljava/lang/String;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->tag:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->tag:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->callBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->callBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;

    .line 20
    .line 21
    if-ne p0, p1, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0

    .line 27
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method
