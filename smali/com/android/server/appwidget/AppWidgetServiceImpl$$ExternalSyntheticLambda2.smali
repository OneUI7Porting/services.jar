.class public final synthetic Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;JLandroid/app/PendingIntent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda2;->f$1:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda2;->f$2:Landroid/app/PendingIntent;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 2
    .line 3
    iget-wide v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda2;->f$1:J

    .line 4
    .line 5
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda2;->f$2:Landroid/app/PendingIntent;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    add-long v3, v2, v5

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
