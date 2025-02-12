.class public final Lcom/android/server/am/AppMediaSessionTracker;
.super Lcom/android/server/am/BaseAppStateDurationsTracker;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mHandlerExecutor:Landroid/os/HandlerExecutor;

.field public final mSessionsChangedListener:Lcom/android/server/am/AppMediaSessionTracker$$ExternalSyntheticLambda0;

.field public final mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BaseAppStateDurationsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/server/am/AppMediaSessionTracker$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/server/am/AppMediaSessionTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppMediaSessionTracker;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/am/AppMediaSessionTracker;->mSessionsChangedListener:Lcom/android/server/am/AppMediaSessionTracker$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    new-instance p1, Lcom/android/internal/app/ProcessMap;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/am/AppMediaSessionTracker;->mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;

    .line 17
    .line 18
    new-instance p1, Landroid/os/HandlerExecutor;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 21
    .line 22
    invoke-direct {p1, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/am/AppMediaSessionTracker;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 28
    .line 29
    new-instance p2, Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy;

    .line 30
    .line 31
    const-string/jumbo v3, "bg_media_session_monitor_enabled"

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    const-string/jumbo v5, "bg_media_session_monitor_max_tracking_duration"

    .line 36
    .line 37
    .line 38
    const-wide/32 v6, 0x14997000

    .line 39
    .line 40
    .line 41
    move-object v0, p2

    .line 42
    move-object v1, p1

    .line 43
    move-object v2, p0

    .line 44
    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateEventsTracker;Ljava/lang/String;ZLjava/lang/String;J)V

    .line 45
    .line 46
    .line 47
    iput-object p2, p1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateEvents;
    .locals 1

    .line 4
    new-instance v0, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    .line 5
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 6
    check-cast p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;)V

    return-object v0
.end method

.method public final createAppStateEvents(Lcom/android/server/am/BaseAppStateEvents;)Lcom/android/server/am/BaseAppStateEvents;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    .line 2
    new-instance p0, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    .line 3
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseAppStateEvents;-><init>(Lcom/android/server/am/BaseAppStateEvents;)V

    return-object p0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "APP MEDIA SESSION TRACKER:"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "  "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final getType()I
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    return p0
.end method
