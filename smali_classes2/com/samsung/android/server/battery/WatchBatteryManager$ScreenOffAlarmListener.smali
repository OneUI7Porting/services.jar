.class public final Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/battery/WatchBatteryManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 2

    .line 1
    const-string v0, "WatchBatteryManager"

    .line 2
    .line 3
    const-string v1, "ScreenOffAlarmListener onAlarm() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSyncStop()V

    .line 11
    .line 12
    .line 13
    return-void
.end method