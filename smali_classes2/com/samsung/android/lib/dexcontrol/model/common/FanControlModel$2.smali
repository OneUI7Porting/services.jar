.class public final Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;
.super Landroid/telephony/PhoneStateListener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v0, "onCallStateChanged() : "

    .line 4
    .line 5
    .line 6
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const-string v0, "FanControlModel"

    .line 17
    .line 18
    invoke-static {v0, p2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-eq p1, v1, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    if-eq p1, v2, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    .line 29
    .line 30
    iput-boolean p2, p1, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsCallMode:Z

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    .line 34
    .line 35
    iput-boolean v1, p1, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsCallMode:Z

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    .line 39
    .line 40
    iput-boolean p2, p1, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsCallMode:Z

    .line 41
    .line 42
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    .line 43
    .line 44
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->isExistSystemRequest()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-virtual {p1, p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->setSystemRequest(Z)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const-string p0, "IDexFanControl is ull"

    .line 57
    .line 58
    invoke-static {v0, p0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    return-void
.end method
