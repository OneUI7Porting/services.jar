.class public final Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;
.super Ljava/io/Writer;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Shouldn\'t be here"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final flush()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;->close()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public final write([CII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;->close()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0
.end method