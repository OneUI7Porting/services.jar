.class public final Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# virtual methods
.method public final deInit()V
    .locals 0

    .line 1
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 2
    .line 3
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 4
    .line 5
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object p2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 11
    .line 12
    monitor-enter p2

    .line 13
    :try_start_0
    iget-object p3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 14
    .line 15
    invoke-static {p3, p4, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 p3, 0x0

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-boolean p1, p1, Lcom/android/server/am/MARsPackageInfo;->hasAppIcon:Z

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    monitor-exit p2

    .line 27
    return p3

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isFirstTimeTriggerAutorun()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    const-string/jumbo p0, "com.sec."

    .line 38
    .line 39
    .line 40
    invoke-virtual {p4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_1

    .line 45
    .line 46
    const-string/jumbo p0, "com.samsung."

    .line 47
    .line 48
    .line 49
    invoke-virtual {p4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-nez p0, :cond_1

    .line 54
    .line 55
    const-string/jumbo p0, "com.sds."

    .line 56
    .line 57
    .line 58
    invoke-virtual {p4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-nez p0, :cond_1

    .line 63
    .line 64
    return p3

    .line 65
    :cond_1
    const/4 p0, 0x5

    .line 66
    return p0

    .line 67
    :goto_0
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method
