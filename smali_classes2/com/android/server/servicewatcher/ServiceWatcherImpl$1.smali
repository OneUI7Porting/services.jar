.class public final Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onSomePackagesChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->onServiceChanged(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method