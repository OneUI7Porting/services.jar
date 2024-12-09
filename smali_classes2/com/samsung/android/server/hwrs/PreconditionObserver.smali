.class public final Lcom/samsung/android/server/hwrs/PreconditionObserver;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final URI_CAMERASHARE:Landroid/net/Uri;

.field public final URI_STORAGESHARE:Landroid/net/Uri;

.field public final mAccountChangeReceiver:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$3;

.field public mCameraShareInstalled:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserHandle:Landroid/os/UserHandle;

.field public final mHandler:Lcom/samsung/android/server/hwrs/PreconditionObserver$1;

.field public mIsAddedAccountListener:Z

.field public mIsRegisteredCameraShareObserver:Z

.field public mIsRegisteredStorageShareObserver:Z

.field public mIsValidState:Z

.field public mListener:Lcom/samsung/android/server/hwrs/PreconditionObserver$2;

.field public final mOnAccountsUpdateListener:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$2;

.field public final mSettingObserver:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;

.field public mState:I

.field public mStorageShareInstalled:Z

.field public mUserId:I

.field public settingList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "hwrs_camerashare_setting"

    .line 5
    .line 6
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->URI_CAMERASHARE:Landroid/net/Uri;

    .line 11
    .line 12
    const-string v0, "hwrs_storageshare_setting"

    .line 13
    .line 14
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->URI_STORAGESHARE:Landroid/net/Uri;

    .line 19
    .line 20
    const/16 v0, -0x2710

    .line 21
    .line 22
    iput v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    .line 23
    .line 24
    new-instance v0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;

    .line 25
    .line 26
    new-instance v1, Landroid/os/Handler;

    .line 27
    .line 28
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;-><init>(Lcom/samsung/android/server/hwrs/PreconditionObserver;Landroid/os/Handler;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mSettingObserver:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;

    .line 39
    .line 40
    new-instance v0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$2;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$2;-><init>(Lcom/samsung/android/server/hwrs/PreconditionObserver;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mOnAccountsUpdateListener:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$2;

    .line 46
    .line 47
    new-instance v0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$3;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$3;-><init>(Lcom/samsung/android/server/hwrs/PreconditionObserver;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mAccountChangeReceiver:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$3;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    const-string p1, "[HWRS_SYS]PreconditionObserver"

    .line 57
    .line 58
    const-string v0, "PreconditionObserver entered"

    .line 59
    .line 60
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    new-instance p1, Lcom/samsung/android/server/hwrs/PreconditionObserver$1;

    .line 64
    .line 65
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {p1, p0, v0}, Lcom/samsung/android/server/hwrs/PreconditionObserver$1;-><init>(Lcom/samsung/android/server/hwrs/PreconditionObserver;Landroid/os/Looper;)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mHandler:Lcom/samsung/android/server/hwrs/PreconditionObserver$1;

    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final getValues(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x1

    .line 8
    iget p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    .line 9
    .line 10
    invoke-static {v0, p1, v1, p0}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "getValues ID : "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, ", value : "

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v0, "[HWRS_SYS]PreconditionObserver"

    .line 37
    .line 38
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return p0
.end method

.method public final isPackageInstalled(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "Package : "

    .line 2
    .line 3
    const-string v1, "[HWRS_SYS]PreconditionObserver"

    .line 4
    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    const-string v3, "("

    .line 19
    .line 20
    const-string v4, ") installed"

    .line 21
    .line 22
    invoke-static {v0, p1, v3, p0, v4}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v2

    .line 30
    :catch_0
    const-string p0, " not installed"

    .line 31
    .line 32
    invoke-static {v0, p1, p0, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public final isSamsungAccountLogin()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/UserHandle;

    .line 8
    .line 9
    iget p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    .line 10
    .line 11
    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const-string p0, "com.osp.app.signin"

    .line 15
    .line 16
    invoke-virtual {v0, p0, v1}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    array-length p0, p0

    .line 21
    const-string v0, "[HWRS_SYS]PreconditionObserver"

    .line 22
    .line 23
    if-lez p0, :cond_0

    .line 24
    .line 25
    const-string p0, "SamsungAccount login"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_0
    const-string p0, "SamsungAccount not login"

    .line 33
    .line 34
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public final isSettingEnabled$1()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->settingList:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :cond_0
    move v2, v1

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_3

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/String;

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    iget-object v2, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget v5, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    .line 33
    .line 34
    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ne v2, v4, :cond_1

    .line 39
    .line 40
    move v2, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v2, v1

    .line 43
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v6, "isSettingEnabled - "

    .line 46
    .line 47
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v3, " : "

    .line 54
    .line 55
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const-string v5, "[HWRS_SYS]PreconditionObserver"

    .line 66
    .line 67
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    if-eqz v2, :cond_0

    .line 71
    .line 72
    :cond_2
    move v2, v4

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    return v2
.end method

.method public final meetConditions()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "meetConditions - current state : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mState:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "[HWRS_SYS]PreconditionObserver"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mState:I

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    if-ne p0, v0, :cond_0

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    :goto_0
    return p0
.end method

.method public final notifyChanged(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mListener:Lcom/samsung/android/server/hwrs/PreconditionObserver$2;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$2;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->meetConditions()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v2, "onChanged - isValid : "

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, ", reason : "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v1, "[HWRS_SYS]PreconditionObserver"

    .line 35
    .line 36
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsValidState:Z

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->setValues(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->setValues(I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public removeAndSendMessageDelayed(IIJ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mHandler:Lcom/samsung/android/server/hwrs/PreconditionObserver$1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4
    iput p1, v0, Landroid/os/Message;->what:I

    .line 5
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 6
    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public removeAndSendMessageDelayed(IJ)V
    .locals 1

    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mHandler:Lcom/samsung/android/server/hwrs/PreconditionObserver$1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final setValues(I)V
    .locals 5

    .line 1
    const-string/jumbo v0, "setValues ID : hwrs_service, value : "

    .line 2
    .line 3
    .line 4
    const-string v1, "[HWRS_SYS]PreconditionObserver"

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v2, -0x1

    .line 16
    iget v3, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    .line 17
    .line 18
    const-string v4, "hwrs_service"

    .line 19
    .line 20
    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eq v0, p1, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    .line 33
    .line 34
    invoke-static {v0, v4, p1, p0}, Landroid/provider/Settings$System;->semPutIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string/jumbo p0, "setValues ID : hwrs_service, same value"

    .line 39
    .line 40
    .line 41
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public final startUser(Landroid/os/UserHandle;)V
    .locals 3

    .line 1
    const-string v0, "[HWRS_SYS]PreconditionObserver"

    .line 2
    .line 3
    const-string/jumbo v1, "startUser entered"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mCurrentUserHandle:Landroid/os/UserHandle;

    .line 10
    .line 11
    const/16 v2, -0x2710

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    move v1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v1}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :goto_0
    if-eq v1, v2, :cond_1

    .line 22
    .line 23
    const-string/jumbo p0, "startUser - invalid request!"

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string/jumbo v2, "startUser : "

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mCurrentUserHandle:Landroid/os/UserHandle;

    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    const-wide/16 v0, 0x0

    .line 56
    .line 57
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->removeAndSendMessageDelayed(IJ)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final stopUser()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mCurrentUserHandle:Landroid/os/UserHandle;

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsRegisteredCameraShareObserver:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mCameraShareInstalled:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsRegisteredCameraShareObserver:Z

    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsRegisteredStorageShareObserver:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mStorageShareInstalled:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsRegisteredStorageShareObserver:Z

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v2, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mSettingObserver:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 34
    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsAddedAccountListener:Z

    .line 37
    .line 38
    const-string v2, "[HWRS_SYS]PreconditionObserver"

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    const-string/jumbo v0, "removeOnAccountsUpdatedListener - already added"

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string/jumbo v0, "removeOnAccountsUpdatedListener"

    .line 50
    .line 51
    .line 52
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v2, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mOnAccountsUpdateListener:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$2;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 64
    .line 65
    .line 66
    iget v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mAccountChangeReceiver:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$3;

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsAddedAccountListener:Z

    .line 78
    .line 79
    :goto_0
    iput v1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mState:I

    .line 80
    .line 81
    const/16 v0, -0x2710

    .line 82
    .line 83
    iput v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    .line 84
    .line 85
    return-void
.end method

.method public final updateFlag(IZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "updateFlag - "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "[HWRS_SYS]PreconditionObserver"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    iget p2, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mState:I

    .line 32
    .line 33
    or-int/2addr p1, p2

    .line 34
    iput p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mState:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget p2, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mState:I

    .line 38
    .line 39
    not-int p1, p1

    .line 40
    and-int/2addr p1, p2

    .line 41
    iput p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mState:I

    .line 42
    .line 43
    :goto_0
    return-void
.end method
