.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;->$r8$classId:I

    iput-object p3, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;->f$0:I

    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Lcom/android/server/alarm/AlarmManagerService;

    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;->f$0:I

    .line 13
    .line 14
    check-cast p1, Lcom/android/server/alarm/Alarm;

    .line 15
    .line 16
    sget-object v3, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget v3, p1, Lcom/android/server/alarm/Alarm;->uid:I

    .line 22
    .line 23
    if-ne v3, p0, :cond_0

    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2, p0, p1}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    move v0, v1

    .line 36
    :cond_0
    return v0

    .line 37
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Ljava/lang/String;

    .line 40
    .line 41
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;->f$0:I

    .line 42
    .line 43
    check-cast p1, Lcom/android/server/alarm/Alarm;

    .line 44
    .line 45
    iget-object v3, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    iget p1, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 54
    .line 55
    if-ne p1, p0, :cond_1

    .line 56
    .line 57
    move v0, v1

    .line 58
    :cond_1
    return v0

    .line 59
    :pswitch_1
    iget v2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;->f$0:I

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p0, Ljava/lang/String;

    .line 64
    .line 65
    check-cast p1, Lcom/android/server/alarm/Alarm;

    .line 66
    .line 67
    sget-object v3, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 68
    .line 69
    iget v3, p1, Lcom/android/server/alarm/Alarm;->uid:I

    .line 70
    .line 71
    if-ne v3, v2, :cond_2

    .line 72
    .line 73
    iget-object v2, p1, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_2

    .line 80
    .line 81
    iget-wide p0, p1, Lcom/android/server/alarm/Alarm;->windowLength:J

    .line 82
    .line 83
    const-wide/16 v2, 0x0

    .line 84
    .line 85
    cmp-long p0, p0, v2

    .line 86
    .line 87
    if-nez p0, :cond_2

    .line 88
    .line 89
    move v0, v1

    .line 90
    :cond_2
    return v0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
