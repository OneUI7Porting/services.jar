.class public final Lcom/samsung/server/wallpaper/DesktopMode$2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/DesktopMode;

.field public final synthetic val$which:I


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/DesktopMode;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/server/wallpaper/DesktopMode$2;->this$0:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/server/wallpaper/DesktopMode$2;->val$which:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.intent.action.WALLPAPER_ENGINE_SHOWN"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "which"

    .line 9
    .line 10
    .line 11
    iget v2, p0, Lcom/samsung/server/wallpaper/DesktopMode$2;->val$which:I

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/server/wallpaper/DesktopMode$2;->this$0:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/samsung/server/wallpaper/DesktopMode;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    new-instance v2, Landroid/os/UserHandle;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DesktopMode$2;->this$0:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 25
    .line 26
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 27
    .line 28
    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
