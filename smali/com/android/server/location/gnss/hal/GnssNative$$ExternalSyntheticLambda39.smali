.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:B

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:B

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:B

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda39;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda39;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-byte p3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda39;->f$2:B

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda39;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-byte p5, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda39;->f$4:B

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda39;->f$5:Ljava/lang/String;

    .line 15
    .line 16
    iput-byte p7, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda39;->f$6:B

    .line 17
    .line 18
    iput-boolean p8, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda39;->f$7:Z

    .line 19
    .line 20
    iput-boolean p9, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda39;->f$8:Z

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda39;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda39;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-byte v2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda39;->f$2:B

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda39;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iget-byte v4, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda39;->f$4:B

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda39;->f$5:Ljava/lang/String;

    .line 12
    .line 13
    iget-byte v6, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda39;->f$6:B

    .line 14
    .line 15
    iget-boolean v7, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda39;->f$7:Z

    .line 16
    .line 17
    iget-boolean v8, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda39;->f$8:Z

    .line 18
    .line 19
    sget p0, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 20
    .line 21
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportNfwNotification$31(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
