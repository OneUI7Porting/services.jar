.class public final synthetic Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/corestate/CoreStateSettingObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
