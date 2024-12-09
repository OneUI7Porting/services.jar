.class public final Lcom/android/server/notification/NotificationHighlightCore$2;
.super Landroid/database/ContentObserver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationHighlightCore;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHighlightCore;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

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
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/notification/NotificationHighlightCore;->PRIVACY_CONVERSATION_URI:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, -0x2

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    .line 15
    .line 16
    iget-object p2, p1, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const-string/jumbo v3, "noti_intelligence_priority_conversation"

    .line 23
    .line 24
    .line 25
    invoke-static {p2, v3, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-ne p2, v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v1, v2

    .line 33
    :goto_0
    iput-boolean v1, p1, Lcom/android/server/notification/NotificationHighlightCore;->mPrivacyConverstionEnabled:Z

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/server/notification/NotificationHighlightCore;->AUTO_GROUPING_URI:Landroid/net/Uri;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    .line 47
    .line 48
    iget-object p2, p1, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const-string/jumbo v3, "noti_auto_more_grouping"

    .line 55
    .line 56
    .line 57
    invoke-static {p2, v3, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-ne p2, v1, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move v1, v2

    .line 65
    :goto_1
    iput-boolean v1, p1, Lcom/android/server/notification/NotificationHighlightCore;->mAutoGroupingEnabled:Z

    .line 66
    .line 67
    :cond_3
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string/jumbo p2, "onChange  mPrivacyConverstionEnabled="

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    .line 76
    .line 77
    iget-boolean p2, p2, Lcom/android/server/notification/NotificationHighlightCore;->mPrivacyConverstionEnabled:Z

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p2, " mAutoGroupingEnabled="

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    .line 88
    .line 89
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mAutoGroupingEnabled:Z

    .line 90
    .line 91
    const-string p2, "NotificationHighlightCore"

    .line 92
    .line 93
    invoke-static {p2, p1, p0}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 94
    .line 95
    .line 96
    return-void
.end method
