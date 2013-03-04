.class Lcom/lewa/player/ExitApplication$2;
.super Lcom/ting/mp3/android/onlinedata/Job;
.source "ExitApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/player/ExitApplication;->certify(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/player/ExitApplication;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/lewa/player/ExitApplication;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lewa/player/ExitApplication$2;->this$0:Lcom/lewa/player/ExitApplication;

    iput-object p2, p0, Lcom/lewa/player/ExitApplication$2;->val$sp:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/lewa/player/ExitApplication$2;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/ting/mp3/android/onlinedata/Job;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 76
    :try_start_0
    iget-object v8, p0, Lcom/lewa/player/ExitApplication$2;->val$sp:Landroid/content/SharedPreferences;

    const-string v9, "getToken"

    const-wide/16 v10, 0x0

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 77
    .local v3, getTokenTime:J
    iget-object v8, p0, Lcom/lewa/player/ExitApplication$2;->val$sp:Landroid/content/SharedPreferences;

    const-string v9, "refreshToken"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, refreshToken:Ljava/lang/String;
    iget-object v8, p0, Lcom/lewa/player/ExitApplication$2;->val$sp:Landroid/content/SharedPreferences;

    const-string v9, "expiredTime"

    const-wide/16 v10, 0x0

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 80
    .local v1, expiredTime:J
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-eqz v8, :cond_0

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-nez v8, :cond_2

    .line 81
    :cond_0
    iget-object v8, p0, Lcom/lewa/player/ExitApplication$2;->this$0:Lcom/lewa/player/ExitApplication;

    invoke-virtual {v8}, Lcom/lewa/player/ExitApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "GGHe48qPA6VvGSwASGBoSUaq"

    const-string v10, "vSUMsQaz6fwHWN0AbfrkaMsAj9q7UZVI"

    const-string v11, "music_media_basic,music_musicdata_basic,music_search_basic,music_media_premium"

    invoke-static {v8, v9, v10, v11}, Lcom/ting/mp3/android/utils/oauth/OAuthHelper;->getClientCredentialsToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ting/mp3/android/utils/oauth/OAuthToken;

    move-result-object v7

    .line 82
    .local v7, token:Lcom/ting/mp3/android/utils/oauth/OAuthToken;
    if-eqz v7, :cond_1

    .line 83
    iget-object v8, p0, Lcom/lewa/player/ExitApplication$2;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v9, "getToken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    iget-object v8, p0, Lcom/lewa/player/ExitApplication$2;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v9, "refreshToken"

    invoke-virtual {v7}, Lcom/ting/mp3/android/utils/oauth/OAuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    iget-object v8, p0, Lcom/lewa/player/ExitApplication$2;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v9, "expiredTime"

    const-wide/32 v10, 0x20f580

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    .end local v1           #expiredTime:J
    .end local v3           #getTokenTime:J
    .end local v6           #refreshToken:Ljava/lang/String;
    .end local v7           #token:Lcom/ting/mp3/android/utils/oauth/OAuthToken;
    :cond_1
    :goto_0
    return-void

    .line 87
    .restart local v1       #expiredTime:J
    .restart local v3       #getTokenTime:J
    .restart local v6       #refreshToken:Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v1

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 88
    iget-object v8, p0, Lcom/lewa/player/ExitApplication$2;->this$0:Lcom/lewa/player/ExitApplication;

    invoke-virtual {v8}, Lcom/lewa/player/ExitApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/ting/mp3/android/utils/oauth/OAuthHelper;->getAccessToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, token:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 90
    iget-object v8, p0, Lcom/lewa/player/ExitApplication$2;->this$0:Lcom/lewa/player/ExitApplication;

    invoke-virtual {v8}, Lcom/lewa/player/ExitApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "GGHe48qPA6VvGSwASGBoSUaq"

    const-string v10, "vSUMsQaz6fwHWN0AbfrkaMsAj9q7UZVI"

    const-string v11, "music_media_basic,music_musicdata_basic,music_search_basic,music_media_premium"

    invoke-static {v8, v9, v10, v11}, Lcom/ting/mp3/android/utils/oauth/OAuthHelper;->getClientCredentialsToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ting/mp3/android/utils/oauth/OAuthToken;

    move-result-object v5

    .line 91
    .local v5, newtoken:Lcom/ting/mp3/android/utils/oauth/OAuthToken;
    if-eqz v5, :cond_1

    .line 92
    iget-object v8, p0, Lcom/lewa/player/ExitApplication$2;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v9, "getToken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    iget-object v8, p0, Lcom/lewa/player/ExitApplication$2;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v9, "refreshToken"

    invoke-virtual {v5}, Lcom/ting/mp3/android/utils/oauth/OAuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    iget-object v8, p0, Lcom/lewa/player/ExitApplication$2;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v9, "expiredTime"

    const-wide/32 v10, 0x20f580

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lcom/ting/mp3/android/utils/exception/OAuthException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v1           #expiredTime:J
    .end local v3           #getTokenTime:J
    .end local v5           #newtoken:Lcom/ting/mp3/android/utils/oauth/OAuthToken;
    .end local v6           #refreshToken:Ljava/lang/String;
    .end local v7           #token:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Lcom/ting/mp3/android/utils/exception/OAuthException;
    invoke-virtual {v0}, Lcom/ting/mp3/android/utils/exception/OAuthException;->printStackTrace()V

    goto :goto_0

    .line 97
    .end local v0           #e:Lcom/ting/mp3/android/utils/exception/OAuthException;
    .restart local v1       #expiredTime:J
    .restart local v3       #getTokenTime:J
    .restart local v6       #refreshToken:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v1

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 98
    iget-object v8, p0, Lcom/lewa/player/ExitApplication$2;->this$0:Lcom/lewa/player/ExitApplication;

    invoke-virtual {v8}, Lcom/lewa/player/ExitApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "GGHe48qPA6VvGSwASGBoSUaq"

    const-string v10, "vSUMsQaz6fwHWN0AbfrkaMsAj9q7UZVI"

    const-string v11, "music_media_basic,music_musicdata_basic,music_search_basic,music_media_premium"

    invoke-static {v8, v6, v9, v10, v11}, Lcom/ting/mp3/android/utils/oauth/OAuthHelper;->refreshToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ting/mp3/android/utils/oauth/OAuthToken;

    move-result-object v7

    .line 99
    .local v7, token:Lcom/ting/mp3/android/utils/oauth/OAuthToken;
    if-eqz v7, :cond_4

    .line 100
    iget-object v8, p0, Lcom/lewa/player/ExitApplication$2;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v9, "getToken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    iget-object v8, p0, Lcom/lewa/player/ExitApplication$2;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v9, "refreshToken"

    invoke-virtual {v7}, Lcom/ting/mp3/android/utils/oauth/OAuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    iget-object v8, p0, Lcom/lewa/player/ExitApplication$2;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v9, "expiredTime"

    const-wide/32 v10, 0x20f580

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 104
    :cond_4
    iget-object v8, p0, Lcom/lewa/player/ExitApplication$2;->this$0:Lcom/lewa/player/ExitApplication;

    invoke-virtual {v8}, Lcom/lewa/player/ExitApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "GGHe48qPA6VvGSwASGBoSUaq"

    const-string v10, "vSUMsQaz6fwHWN0AbfrkaMsAj9q7UZVI"

    const-string v11, "music_media_basic,music_musicdata_basic,music_search_basic,music_media_premium"

    invoke-static {v8, v9, v10, v11}, Lcom/ting/mp3/android/utils/oauth/OAuthHelper;->getClientCredentialsToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ting/mp3/android/utils/oauth/OAuthToken;

    move-result-object v5

    .line 105
    .restart local v5       #newtoken:Lcom/ting/mp3/android/utils/oauth/OAuthToken;
    if-eqz v5, :cond_1

    .line 106
    iget-object v8, p0, Lcom/lewa/player/ExitApplication$2;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v9, "getToken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    iget-object v8, p0, Lcom/lewa/player/ExitApplication$2;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v9, "refreshToken"

    invoke-virtual {v5}, Lcom/ting/mp3/android/utils/oauth/OAuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    iget-object v8, p0, Lcom/lewa/player/ExitApplication$2;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v9, "expiredTime"

    const-wide/32 v10, 0x20f580

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Lcom/ting/mp3/android/utils/exception/OAuthException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
