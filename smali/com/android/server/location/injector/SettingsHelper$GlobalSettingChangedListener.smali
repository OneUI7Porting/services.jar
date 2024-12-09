.class public interface abstract Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;


# virtual methods
.method public abstract onSettingChanged()V
.end method

.method public onSettingChanged(I)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;->onSettingChanged()V

    return-void
.end method
