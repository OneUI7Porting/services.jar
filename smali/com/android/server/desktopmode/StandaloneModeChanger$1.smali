.class public final Lcom/android/server/desktopmode/StandaloneModeChanger$1;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/StandaloneModeChanger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$1;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUserChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/android/server/desktopmode/StandaloneModeChanger$1$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$1;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->storeDefaultHomePackageName(Ljava/util/function/Consumer;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
