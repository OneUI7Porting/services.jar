.class public Lcom/android/server/appfunctions/AppSearchException;
.super Ljava/lang/RuntimeException;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field private final resultCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/appfunctions/AppSearchException;->resultCode:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getResultCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/appfunctions/AppSearchException;->resultCode:I

    .line 2
    .line 3
    return p0
.end method
