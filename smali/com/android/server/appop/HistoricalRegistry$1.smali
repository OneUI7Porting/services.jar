.class public final Lcom/android/server/appop/HistoricalRegistry$1;
.super Landroid/database/ContentObserver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/HistoricalRegistry;

.field public final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/HistoricalRegistry;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$1;->this$0:Lcom/android/server/appop/HistoricalRegistry;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/server/appop/HistoricalRegistry$1;->val$resolver:Landroid/content/ContentResolver;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$1;->this$0:Lcom/android/server/appop/HistoricalRegistry;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry$1;->val$resolver:Landroid/content/ContentResolver;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lcom/android/server/appop/HistoricalRegistry;->updateParametersFromSetting(Landroid/content/ContentResolver;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
