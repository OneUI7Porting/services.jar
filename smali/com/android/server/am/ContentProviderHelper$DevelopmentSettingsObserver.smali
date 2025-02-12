.class public final Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mBugreportStorageProvider:Landroid/content/ComponentName;

.field public final mUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/am/ContentProviderHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ContentProviderHelper;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->this$0:Lcom/android/server/am/ContentProviderHelper;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 6
    .line 7
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v0, "development_settings_enabled"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->mUri:Landroid/net/Uri;

    .line 18
    .line 19
    new-instance v1, Landroid/content/ComponentName;

    .line 20
    .line 21
    const-string/jumbo v2, "com.android.shell"

    .line 22
    .line 23
    .line 24
    const-string/jumbo v3, "com.android.shell.BugreportStorageProvider"

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->mBugreportStorageProvider:Landroid/content/ComponentName;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 v1, 0x0

    .line 41
    const/4 v2, -0x1

    .line 42
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->onChange()V

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final onChange()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->this$0:Lcom/android/server/am/ContentProviderHelper;

    iget-object v0, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    .line 5
    const-string/jumbo v2, "development_settings_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->this$0:Lcom/android/server/am/ContentProviderHelper;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->mBugreportStorageProvider:Landroid/content/ComponentName;

    invoke-virtual {v2, p0, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->onChange()V

    :cond_0
    return-void
.end method
