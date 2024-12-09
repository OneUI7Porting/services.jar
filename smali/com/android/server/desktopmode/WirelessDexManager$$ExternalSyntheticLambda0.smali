.class public final synthetic Lcom/android/server/desktopmode/WirelessDexManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/desktopmode/WirelessDexManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/WirelessDexManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/desktopmode/WirelessDexManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsLowLatencyMode:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsLowLatencyMode:Z

    .line 14
    .line 15
    const-string/jumbo v0, "wfd_sec_low_latency_mode"

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "off"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/WirelessDexManager;->setWifiDisplayParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void

    .line 25
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsLowLatencyMode:Z

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsLowLatencyMode:Z

    .line 31
    .line 32
    const-string/jumbo v0, "wfd_sec_low_latency_mode"

    .line 33
    .line 34
    .line 35
    const-string/jumbo v1, "on"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/WirelessDexManager;->setWifiDisplayParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
