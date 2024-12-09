.class public interface abstract Landroid/net/NetworkFactoryShim;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getLooper()Landroid/os/Looper;
.end method

.method public abstract getRequestCount()I
.end method

.method public abstract obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
.end method

.method public abstract reevaluateAllRequests()V
.end method

.method public abstract register(Ljava/lang/String;)V
.end method

.method public registerIgnoringScore(Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public abstract setCapabilityFilter(Landroid/net/NetworkCapabilities;)V
.end method

.method public abstract setScoreFilter(I)V
.end method

.method public abstract setScoreFilter(Landroid/net/NetworkScore;)V
.end method
