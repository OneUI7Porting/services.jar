.class Lcom/android/server/BigdataException;
.super Ljava/lang/Exception;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field private final err:Lcom/android/server/HermesBigdataFunction$BigdataError;


# direct methods
.method public constructor <init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/HermesBigdataFunction$BigdataError;->reason()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/BigdataException;->err:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getErrCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/BigdataException;->err:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/HermesBigdataFunction$BigdataError;->errCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
