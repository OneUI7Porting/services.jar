.class public final Lcom/android/server/enterprise/constrained/ConstrainedModeService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/constrained/ConstrainedModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/constrained/ConstrainedModeService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService$1;->this$0:Lcom/android/server/enterprise/constrained/ConstrainedModeService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService$1;->this$0:Lcom/android/server/enterprise/constrained/ConstrainedModeService;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->getConstrainedStateAll()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    check-cast p1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Lcom/samsung/android/knox/EnrollData;

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x0

    .line 47
    move-object v0, p0

    .line 48
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnrollData;->getComment()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnrollData;->getDownloadUrl()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const/4 v5, 0x1

    .line 74
    move-object v0, p0

    .line 75
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    return-void
.end method
