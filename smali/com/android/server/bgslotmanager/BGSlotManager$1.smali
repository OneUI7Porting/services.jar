.class public final Lcom/android/server/bgslotmanager/BGSlotManager$1;
.super Landroid/os/CountDownTimer;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/bgslotmanager/BGSlotManager;


# direct methods
.method public constructor <init>(Lcom/android/server/bgslotmanager/BGSlotManager;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager$1;->this$0:Lcom/android/server/bgslotmanager/BGSlotManager;

    .line 2
    .line 3
    const-wide/32 v0, 0xea60

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, v1, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .line 1
    const-string/jumbo v0, "swapTimer onfinish"

    .line 2
    .line 3
    .line 4
    const-string v1, "DynamicHiddenApp_BGSlotManager"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/bgslotmanager/BGSlotManager$1;->this$0:Lcom/android/server/bgslotmanager/BGSlotManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->setBonusMaxCachedAppsPerSwap()V

    .line 12
    .line 13
    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v0, "change Max_Cached by setSwapTimer : "

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    .line 23
    .line 24
    invoke-static {p0, v0, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    .line 1
    return-void
.end method
