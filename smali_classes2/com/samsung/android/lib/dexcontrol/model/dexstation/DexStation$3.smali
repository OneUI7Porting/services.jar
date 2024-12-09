.class public final Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "samsung.net.ethernet.ETH_STATE_CHANGED"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string p1, "eth_state"

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "Connected"

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-string p1, "1ETH"

    .line 33
    .line 34
    invoke-static {p0, p1}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
