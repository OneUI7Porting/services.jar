.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/alarm/Alarm;

    .line 4
    .line 5
    check-cast p2, Lcom/android/server/alarm/Alarm;

    .line 6
    .line 7
    sget-object v0, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    .line 13
    .line 14
    and-int/lit8 v0, v0, 0x10

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    move v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    :goto_0
    iget v3, p2, Lcom/android/server/alarm/Alarm;->flags:I

    .line 24
    .line 25
    and-int/lit8 v3, v3, 0x10

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    move v3, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v3, v1

    .line 32
    :goto_1
    const/4 v4, -0x1

    .line 33
    if-eq v0, v3, :cond_2

    .line 34
    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    iget v0, p1, Lcom/android/server/alarm/Alarm;->priorityClass:I

    .line 39
    .line 40
    iget v3, p2, Lcom/android/server/alarm/Alarm;->priorityClass:I

    .line 41
    .line 42
    if-ge v0, v3, :cond_3

    .line 43
    .line 44
    :goto_2
    move v1, v4

    .line 45
    goto :goto_6

    .line 46
    :cond_3
    if-le v0, v3, :cond_5

    .line 47
    .line 48
    :cond_4
    :goto_3
    move v1, v2

    .line 49
    goto :goto_6

    .line 50
    :cond_5
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Lcom/android/server/alarm/AlarmManagerService$2;

    .line 53
    .line 54
    if-ne v0, p0, :cond_6

    .line 55
    .line 56
    move v0, v2

    .line 57
    goto :goto_4

    .line 58
    :cond_6
    move v0, v1

    .line 59
    :goto_4
    iget-object v3, p2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 60
    .line 61
    if-ne v3, p0, :cond_7

    .line 62
    .line 63
    move p0, v2

    .line 64
    goto :goto_5

    .line 65
    :cond_7
    move p0, v1

    .line 66
    :goto_5
    if-eq v0, p0, :cond_8

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_8
    iget-object p0, p1, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    .line 72
    .line 73
    aget-wide p0, p0, v1

    .line 74
    .line 75
    iget-object p2, p2, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    .line 76
    .line 77
    aget-wide v5, p2, v1

    .line 78
    .line 79
    cmp-long p0, p0, v5

    .line 80
    .line 81
    if-gez p0, :cond_9

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_9
    if-lez p0, :cond_a

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_a
    :goto_6
    return v1
.end method
