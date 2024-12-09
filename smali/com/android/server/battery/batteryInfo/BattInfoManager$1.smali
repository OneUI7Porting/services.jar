.class public final Lcom/android/server/battery/batteryInfo/BattInfoManager$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;


# direct methods
.method public constructor <init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;->this$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;->this$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAsocData:Lcom/android/server/battery/batteryInfo/AsocData;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/AsocData;->updateAndSet()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
