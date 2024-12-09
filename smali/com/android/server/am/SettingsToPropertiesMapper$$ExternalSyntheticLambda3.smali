.class public final synthetic Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/aconfig_new_storage/Flags;->enableAconfigStorageDaemon()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method
