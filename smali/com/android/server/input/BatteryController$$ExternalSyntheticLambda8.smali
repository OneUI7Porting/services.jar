.class public final synthetic Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda8;->f$0:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda8;->f$0:J

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 4
    .line 5
    check-cast p2, Lcom/android/server/input/BatteryController$DeviceMonitor;

    .line 6
    .line 7
    sget-boolean p0, Lcom/android/server/input/BatteryController;->DEBUG:Z

    .line 8
    .line 9
    invoke-virtual {p2, v0, v1}, Lcom/android/server/input/BatteryController$DeviceMonitor;->onPoll(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
