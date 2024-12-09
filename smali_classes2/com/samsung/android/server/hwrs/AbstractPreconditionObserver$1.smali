.class public final Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;
.super Landroid/database/ContentObserver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/hwrs/PreconditionObserver;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/samsung/android/server/hwrs/PreconditionObserver;->URI_CAMERASHARE:Landroid/net/Uri;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x2

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    .line 16
    .line 17
    const-string p1, "hwrs_camerashare_setting"

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->getValues(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-lez p1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x5

    .line 28
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->isSettingEnabled$1()Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->updateFlag(IZ)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->notifyChanged(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/samsung/android/server/hwrs/PreconditionObserver;->URI_STORAGESHARE:Landroid/net/Uri;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    .line 50
    .line 51
    const-string p1, "hwrs_storageshare_setting"

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->getValues(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-lez p1, :cond_3

    .line 58
    .line 59
    const/4 p1, 0x6

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    const/4 p1, 0x7

    .line 62
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->isSettingEnabled$1()Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->updateFlag(IZ)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->notifyChanged(I)V

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_2
    return-void
.end method
