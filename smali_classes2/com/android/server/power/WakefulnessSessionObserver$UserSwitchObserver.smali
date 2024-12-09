.class public final Lcom/android/server/power/WakefulnessSessionObserver$UserSwitchObserver;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/WakefulnessSessionObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/power/WakefulnessSessionObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$UserSwitchObserver;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUserSwitching(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/WakefulnessSessionObserver$UserSwitchObserver;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/power/WakefulnessSessionObserver;->updateSettingScreenOffTimeout(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
