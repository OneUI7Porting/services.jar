.class public final Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3;
.super Landroid/app/HomeVisibilityListener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/HomeVisibilityListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onHomeVisibilityChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mHandler:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$4;

    .line 4
    .line 5
    new-instance v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
