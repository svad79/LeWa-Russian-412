.class Lcom/lewa/player/ExitApplication$3$1;
.super Lcom/ting/mp3/android/onlinedata/Job;
.source "ExitApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/player/ExitApplication$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lewa/player/ExitApplication$3;


# direct methods
.method constructor <init>(Lcom/lewa/player/ExitApplication$3;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/lewa/player/ExitApplication$3$1;->this$1:Lcom/lewa/player/ExitApplication$3;

    invoke-direct {p0}, Lcom/ting/mp3/android/onlinedata/Job;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 159
    :try_start_0
    iget-object v2, p0, Lcom/lewa/player/ExitApplication$3$1;->this$1:Lcom/lewa/player/ExitApplication$3;

    iget-object v2, v2, Lcom/lewa/player/ExitApplication$3;->this$0:Lcom/lewa/player/ExitApplication;

    invoke-virtual {v2}, Lcom/lewa/player/ExitApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "GGHe48qPA6VvGSwASGBoSUaq"

    const-string v4, "vSUMsQaz6fwHWN0AbfrkaMsAj9q7UZVI"

    const-string v5, "music_media_basic,music_musicdata_basic,music_search_basic,music_media_premium"

    invoke-static {v2, v3, v4, v5}, Lcom/ting/mp3/android/utils/oauth/OAuthHelper;->getClientCredentialsToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ting/mp3/android/utils/oauth/OAuthToken;

    move-result-object v1

    .line 160
    .local v1, token:Lcom/ting/mp3/android/utils/oauth/OAuthToken;
    if-eqz v1, :cond_0

    .line 161
    iget-object v2, p0, Lcom/lewa/player/ExitApplication$3$1;->this$1:Lcom/lewa/player/ExitApplication$3;

    iget-object v2, v2, Lcom/lewa/player/ExitApplication$3;->this$0:Lcom/lewa/player/ExitApplication;

    #getter for: Lcom/lewa/player/ExitApplication;->edit:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lcom/lewa/player/ExitApplication;->access$100(Lcom/lewa/player/ExitApplication;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "getToken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    iget-object v2, p0, Lcom/lewa/player/ExitApplication$3$1;->this$1:Lcom/lewa/player/ExitApplication$3;

    iget-object v2, v2, Lcom/lewa/player/ExitApplication$3;->this$0:Lcom/lewa/player/ExitApplication;

    #getter for: Lcom/lewa/player/ExitApplication;->edit:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lcom/lewa/player/ExitApplication;->access$100(Lcom/lewa/player/ExitApplication;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "refreshToken"

    invoke-virtual {v1}, Lcom/ting/mp3/android/utils/oauth/OAuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 163
    iget-object v2, p0, Lcom/lewa/player/ExitApplication$3$1;->this$1:Lcom/lewa/player/ExitApplication$3;

    iget-object v2, v2, Lcom/lewa/player/ExitApplication$3;->this$0:Lcom/lewa/player/ExitApplication;

    #getter for: Lcom/lewa/player/ExitApplication;->edit:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lcom/lewa/player/ExitApplication;->access$100(Lcom/lewa/player/ExitApplication;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "expiredTime"

    const-wide/32 v4, 0x278d00

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lcom/ting/mp3/android/utils/exception/OAuthException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1           #token:Lcom/ting/mp3/android/utils/oauth/OAuthToken;
    :cond_0
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Lcom/ting/mp3/android/utils/exception/OAuthException;
    invoke-virtual {v0}, Lcom/ting/mp3/android/utils/exception/OAuthException;->printStackTrace()V

    goto :goto_0
.end method
