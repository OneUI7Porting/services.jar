.class public final Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/location/CountryListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCountryDetected(Landroid/location/Country;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    .line 13
    .line 14
    .line 15
    return-void
.end method