.class public interface abstract Lcom/android/server/audio/PlayerFocusEnforcer;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public abstract duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z
.end method

.method public abstract fadeOutPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z
.end method

.method public abstract forgetUid(I)V
.end method

.method public abstract getFadeInDelayForOffendersMillis(Landroid/media/AudioAttributes;)J
.end method

.method public abstract getFadeOutDurationMillis(Landroid/media/AudioAttributes;)J
.end method

.method public abstract mutePlayersForCall([I)V
.end method

.method public abstract restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V
.end method

.method public abstract shouldEnforceFade()Z
.end method

.method public abstract unmutePlayersForCall()V
.end method
