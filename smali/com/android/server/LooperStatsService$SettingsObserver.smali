.class public final Lcom/android/server/LooperStatsService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mService:Lcom/android/server/LooperStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/LooperStatsService;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/LooperStatsService$SettingsObserver;->mService:Lcom/android/server/LooperStatsService;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/LooperStatsService$SettingsObserver;->mService:Lcom/android/server/LooperStatsService;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/LooperStatsService;->-$$Nest$minitFromSettings(Lcom/android/server/LooperStatsService;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
