.class public final synthetic Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;

    .line 2
    .line 3
    const-string v0, "/data/system/UnknownSourceAppList.xml"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->writeUnknownPackageXmlSync(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method