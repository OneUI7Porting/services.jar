.class public final Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getEKM()Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
