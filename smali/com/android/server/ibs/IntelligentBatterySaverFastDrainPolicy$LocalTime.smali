.class public final Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final hourOfDay:I

.field public final minute:I

.field public final second:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_2

    .line 5
    .line 6
    const/16 v0, 0x17

    .line 7
    .line 8
    if-gt p1, v0, :cond_2

    .line 9
    .line 10
    if-ltz p2, :cond_1

    .line 11
    .line 12
    const/16 v0, 0x3b

    .line 13
    .line 14
    if-gt p2, v0, :cond_1

    .line 15
    .line 16
    if-ltz p3, :cond_0

    .line 17
    .line 18
    if-gt p3, v0, :cond_0

    .line 19
    .line 20
    iput p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->hourOfDay:I

    .line 21
    .line 22
    iput p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->minute:I

    .line 23
    .line 24
    iput p3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->second:I

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string p1, "Invalid second: "

    .line 30
    .line 31
    invoke-static {p3, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0

    .line 39
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string p1, "Invalid minute: "

    .line 42
    .line 43
    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string p2, "Invalid hourOfDay: "

    .line 54
    .line 55
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0
.end method


# virtual methods
.method public final getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x6

    .line 14
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 19
    .line 20
    .line 21
    const/16 v2, 0xb

    .line 22
    .line 23
    iget v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->hourOfDay:I

    .line 24
    .line 25
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 26
    .line 27
    .line 28
    const/16 v2, 0xc

    .line 29
    .line 30
    iget v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->minute:I

    .line 31
    .line 32
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 33
    .line 34
    .line 35
    const/16 v2, 0xd

    .line 36
    .line 37
    iget p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->second:I

    .line 38
    .line 39
    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->set(II)V

    .line 40
    .line 41
    .line 42
    const/16 p0, 0xe

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, p0, v2}, Ljava/util/Calendar;->set(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_0

    .line 53
    .line 54
    const/4 p0, 0x5

    .line 55
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->add(II)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->hourOfDay:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->minute:I

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->second:I

    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v1, "%02d:%02d:%02d"

    .line 26
    .line 27
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method
