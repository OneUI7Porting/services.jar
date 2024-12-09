.class public interface abstract Landroid/net/ipmemorystore/OnBlobRetrievedListener;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public static toAIDL(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)Landroid/net/ipmemorystore/IOnBlobRetrievedListener;
    .locals 1

    .line 1
    new-instance v0, Landroid/net/ipmemorystore/OnBlobRetrievedListener$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/net/ipmemorystore/OnBlobRetrievedListener$1;-><init>(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract onBlobRetrieved(Landroid/net/ipmemorystore/Status;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;)V
.end method
