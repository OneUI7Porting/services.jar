.class public final Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$InitialState;
.super Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public final available()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final hasData()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final read([BII)I
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string p1, "Cannot read in this state"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final state()Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;
    .locals 0

    .line 1
    sget-object p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->INITIAL:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 2
    .line 3
    return-object p0
.end method
