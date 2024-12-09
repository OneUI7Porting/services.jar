.class public final Lcom/android/server/notification/ValidateNotificationPeople$1;
.super Landroid/database/ContentObserver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/ValidateNotificationPeople;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 9
    .line 10
    iget p1, p1, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    .line 11
    .line 12
    rem-int/lit8 p1, p1, 0x64

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    :cond_0
    sget-boolean p1, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo p2, "mEvictionCount: "

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 29
    .line 30
    iget p2, p2, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    .line 31
    .line 32
    const-string v0, "ValidateNoPeople"

    .line 33
    .line 34
    invoke-static {p1, p2, v0}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/util/LruCache;->evictAll()V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 45
    .line 46
    iget p2, p1, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    .line 47
    .line 48
    add-int/lit8 p2, p2, 0x1

    .line 49
    .line 50
    iput p2, p1, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->val$context:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;

    .line 66
    .line 67
    invoke-direct {v1, p1, p3, p0, p2}, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;ILandroid/content/Context;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    return-void
.end method
