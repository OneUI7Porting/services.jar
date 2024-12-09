.class public final Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 1
    const-string p1, "GmsAlarmManager"

    .line 2
    .line 3
    const-string/jumbo v0, "onChange - mSmartManagerSettingsObserver for GmsAlarmManger!"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getSettingsValueFromDB()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
