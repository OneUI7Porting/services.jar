.class public final Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mToken:Landroid/os/IBinder;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mToken:Landroid/os/IBinder;

    .line 6
    .line 7
    check-cast v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mToken:Landroid/os/IBinder;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mToken:Landroid/os/IBinder;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final setRestriction(IZ)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mToken:Landroid/os/IBinder;

    .line 6
    .line 7
    check-cast v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget-object p2, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    iget-object p2, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    .line 20
    .line 21
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 22
    .line 23
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p2, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Landroid/util/SparseBooleanArray;

    .line 36
    .line 37
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    const/4 v0, 0x1

    .line 45
    xor-int/2addr p2, v0

    .line 46
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object p2, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Landroid/util/SparseBooleanArray;

    .line 57
    .line 58
    if-nez p2, :cond_2

    .line 59
    .line 60
    const/4 p2, 0x0

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    iget-object p1, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_3
    move p2, v1

    .line 81
    :goto_0
    return p2
.end method