.class public final synthetic Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda2;->f$0:Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda2;->f$0:Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;->onProfileChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
