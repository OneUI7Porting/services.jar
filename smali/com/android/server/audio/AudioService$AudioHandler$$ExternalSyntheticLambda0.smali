.class public final synthetic Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAliasRunner;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService$AudioHandler;

.field public final synthetic f$1:Lcom/android/server/audio/AudioService$VolumeStreamState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService$AudioHandler;Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexDividedBy10(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const/4 p1, -0x2

    .line 23
    invoke-static {v0, v2, p0, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method