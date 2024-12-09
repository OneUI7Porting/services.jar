.class public final Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;
.super Ljava/util/TimerTask;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

.field public final mSender:Ljava/lang/String;

.field public mSetUpdate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mSetUpdate:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mSender:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final cancel()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DexFanHoldingTimerTask - "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mSender:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " is canceled"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "DexFanHoldingTimerTask"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->destroy()V

    .line 28
    .line 29
    .line 30
    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final destroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mSetUpdate:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "before remove:"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingRequestCount()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "DexFanControlManager"

    .line 28
    .line 29
    invoke-static {v2, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingTimerTaskList()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, "after remove:"

    .line 42
    .line 43
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingRequestCount()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v2, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingRequestCount()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-interface {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;->onChangedFanHoldingRequestCount(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->controlFanLevel()V

    .line 72
    .line 73
    .line 74
    :cond_0
    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mSetUpdate:Z

    .line 76
    .line 77
    return-void
.end method

.method public final run()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DexFanHoldingTimerTask - "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mSender:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " is finished"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "DexFanHoldingTimerTask"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->destroy()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
