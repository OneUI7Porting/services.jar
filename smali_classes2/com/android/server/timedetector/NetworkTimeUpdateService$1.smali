.class public final Lcom/android/server/timedetector/NetworkTimeUpdateService$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mOnAlarmListener:Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;

.field public final synthetic val$alarmManager:Landroid/app/AlarmManager;

.field public final synthetic val$timeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;Landroid/app/AlarmManager;Lcom/android/server/timedetector/TimeDetectorInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$alarmManager:Landroid/app/AlarmManager;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$timeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;

    .line 7
    .line 8
    new-instance p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;-><init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->mOnAlarmListener:Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;

    .line 14
    .line 15
    return-void
.end method
