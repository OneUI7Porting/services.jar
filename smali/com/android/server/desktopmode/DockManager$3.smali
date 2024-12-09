.class public final Lcom/android/server/desktopmode/DockManager$3;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public this$0:Ljava/lang/Object;


# direct methods
.method public static msgStateToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0xd2

    .line 2
    .line 3
    if-eq p0, v0, :cond_7

    .line 4
    .line 5
    const/16 v0, 0xd3

    .line 6
    .line 7
    if-eq p0, v0, :cond_6

    .line 8
    .line 9
    const/16 v0, 0xdc

    .line 10
    .line 11
    if-eq p0, v0, :cond_5

    .line 12
    .line 13
    const/16 v0, 0xdd

    .line 14
    .line 15
    if-eq p0, v0, :cond_4

    .line 16
    .line 17
    const/16 v0, 0xe6

    .line 18
    .line 19
    if-eq p0, v0, :cond_3

    .line 20
    .line 21
    const/16 v0, 0xe7

    .line 22
    .line 23
    if-eq p0, v0, :cond_2

    .line 24
    .line 25
    const/16 v0, 0xf0

    .line 26
    .line 27
    if-eq p0, v0, :cond_1

    .line 28
    .line 29
    const/16 v0, 0xf1

    .line 30
    .line 31
    if-eq p0, v0, :cond_0

    .line 32
    .line 33
    packed-switch p0, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    const-string v0, "Unknown="

    .line 37
    .line 38
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_0
    const-string p0, "MSG_DOCK_REQUEST_DESTROY"

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_1
    const-string p0, "MSG_DOCK_REQUEST_POWER_INFO"

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_2
    const-string p0, "MSG_DOCK_REQUEST_CREATE"

    .line 50
    .line 51
    return-object p0

    .line 52
    :pswitch_3
    const-string p0, "MSG_DOCK_REQUEST_UNDEFINED"

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_0
    const-string p0, "MSG_DOCK_EXTRA_ERROR_UPDATED"

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_1
    const-string p0, "MSG_DOCK_EXTRA_UNDEFINED"

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_2
    const-string p0, "MSG_DOCK_VERSION_DSVERSION_UPDATED"

    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_3
    const-string p0, "MSG_DOCK_VERSION_UNDEFINED"

    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_4
    const-string p0, "MSG_DOCK_ERROR"

    .line 68
    .line 69
    return-object p0

    .line 70
    :cond_5
    const-string p0, "MSG_DOCK_ERROR_UNDEFINED"

    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_6
    const-string p0, "MSG_DOCK_RESPONSE_POWER_INFO"

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_7
    const-string p0, "MSG_DOCK_RESPONSE_UNDEFINED"

    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public setLast(IILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager$3;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Lcom/android/server/desktopmode/DockManager$3;->msgStateToString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p2, ","

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-void
.end method
