.class public interface abstract Lcom/att/iqi/IMetricSourcingCallback;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.att.iqi.IMetricSourcingCallback"


# virtual methods
.method public abstract onMetricSourced(Lcom/att/iqi/lib/Metric$ID;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method