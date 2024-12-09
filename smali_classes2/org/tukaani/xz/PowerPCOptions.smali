.class public final Lorg/tukaani/xz/PowerPCOptions;
.super Lorg/tukaani/xz/BCJOptions;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public final getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance p0, Lorg/tukaani/xz/SimpleInputStream;

    .line 2
    .line 3
    new-instance p2, Lorg/tukaani/xz/simple/PowerPC;

    .line 4
    .line 5
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p2, Lorg/tukaani/xz/simple/PowerPC;->pos:I

    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lorg/tukaani/xz/SimpleInputStream;-><init>(Ljava/io/InputStream;Lorg/tukaani/xz/simple/SimpleFilter;)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method
