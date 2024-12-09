.class public final Lcom/android/server/AppStateTrackerImpl$1;
.super Lcom/android/server/AppStateTrackerImpl$Listener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic val$listener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$1;->val$listener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$1;->val$listener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;->updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
