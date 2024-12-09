.class public final Lcom/android/server/notification/NotificationHighlightCore;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static sNotificationHighlightCore:Lcom/android/server/notification/NotificationHighlightCore;


# instance fields
.field public final AUTO_GROUPING_URI:Landroid/net/Uri;

.field public final PRIVACY_CONVERSATION_URI:Landroid/net/Uri;

.field public mAutoGroupingEnabled:Z

.field public final mContext:Landroid/content/Context;

.field public final mConversationList:Ljava/util/HashSet;

.field public mHandler:Landroid/os/Handler;

.field public final mNonImportantList:Ljava/util/HashSet;

.field public mNotificationClassifier:Lcom/android/server/notification/NotificationClassifier;

.field public mPrivacyConverstionEnabled:Z

.field public mSettingsObserver:Lcom/android/server/notification/NotificationHighlightCore$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mConversationList:Ljava/util/HashSet;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mNonImportantList:Ljava/util/HashSet;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v0, Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mNotificationClassifier:Lcom/android/server/notification/NotificationClassifier;

    .line 40
    .line 41
    const-string/jumbo v0, "noti_intelligence_priority_conversation"

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->PRIVACY_CONVERSATION_URI:Landroid/net/Uri;

    .line 49
    .line 50
    const-string/jumbo v0, "noti_auto_more_grouping"

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->AUTO_GROUPING_URI:Landroid/net/Uri;

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mPrivacyConverstionEnabled:Z

    .line 61
    .line 62
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mAutoGroupingEnabled:Z

    .line 63
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final setConversationList(Ljava/util/List;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mConversationList:Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/notification/NotificationHighlightCore;->mConversationList:Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method
