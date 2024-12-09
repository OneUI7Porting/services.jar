.class public interface abstract Landroid/net/ipmemorystore/OnStatusListener;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public static toAIDL(Landroid/net/ipmemorystore/OnStatusListener;)Landroid/net/ipmemorystore/IOnStatusListener;
    .locals 1

    .line 1
    new-instance v0, Landroid/net/ipmemorystore/OnStatusListener$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/net/ipmemorystore/OnStatusListener$1;-><init>(Landroid/net/ipmemorystore/OnStatusListener;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract onComplete(Landroid/net/ipmemorystore/Status;)V
.end method
