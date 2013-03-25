.class Lcom/lewa/player/ExitApplication$3;
.super Landroid/content/BroadcastReceiver;
.source "ExitApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/player/ExitApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/player/ExitApplication;


# direct methods
.method constructor <init>(Lcom/lewa/player/ExitApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/lewa/player/ExitApplication$3;->this$0:Lcom/lewa/player/ExitApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x3

    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p1}, Lcom/lewa/player/online/OnlineLoader;->isWiFiActive(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    invoke-static {p1}, Lcom/ting/mp3/android/onlinedata/ImageManager;->init(Landroid/content/Context;)V

    .line 155
    iget-object v5, p0, Lcom/lewa/player/ExitApplication$3;->this$0:Lcom/lewa/player/ExitApplication;

    iget-object v6, p0, Lcom/lewa/player/ExitApplication$3;->this$0:Lcom/lewa/player/ExitApplication;

    #getter for: Lcom/lewa/player/ExitApplication;->sp:Landroid/content/SharedPreferences;
    invoke-static {v6}, Lcom/lewa/player/ExitApplication;->access$000(Lcom/lewa/player/ExitApplication;)Landroid/content/SharedPreferences;

    move-result-object v6

    iget-object v7, p0, Lcom/lewa/player/ExitApplication$3;->this$0:Lcom/lewa/player/ExitApplication;

    #getter for: Lcom/lewa/player/ExitApplication;->edit:Landroid/content/SharedPreferences$Editor;
    invoke-static {v7}, Lcom/lewa/player/ExitApplication;->access$100(Lcom/lewa/player/ExitApplication;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/lewa/player/ExitApplication;->certify(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    sget-object v5, Lcom/lewa/player/MusicUtils;->UPDATE_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 158
    new-instance v5, Lcom/lewa/player/ExitApplication$3$1;

    invoke-direct {v5, p0}, Lcom/lewa/player/ExitApplication$3$1;-><init>(Lcom/lewa/player/ExitApplication$3;)V

    invoke-virtual {v5}, Lcom/lewa/player/ExitApplication$3$1;->start()V

    goto :goto_0

    .line 176
    :cond_2
    const-string v5, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 177
    iget-object v5, p0, Lcom/lewa/player/ExitApplication$3;->this$0:Lcom/lewa/player/ExitApplication;

    #getter for: Lcom/lewa/player/ExitApplication;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/lewa/player/ExitApplication;->access$200(Lcom/lewa/player/ExitApplication;)Landroid/media/AudioManager;

    move-result-object v5

    if-nez v5, :cond_3

    .line 178
    iget-object v6, p0, Lcom/lewa/player/ExitApplication$3;->this$0:Lcom/lewa/player/ExitApplication;

    iget-object v5, p0, Lcom/lewa/player/ExitApplication$3;->this$0:Lcom/lewa/player/ExitApplication;

    const-string v7, "audio"

    invoke-virtual {v5, v7}, Lcom/lewa/player/ExitApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    #setter for: Lcom/lewa/player/ExitApplication;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v6, v5}, Lcom/lewa/player/ExitApplication;->access$202(Lcom/lewa/player/ExitApplication;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 179
    :cond_3
    goto :goto_0
    iget-object v5, p0, Lcom/lewa/player/ExitApplication$3;->this$0:Lcom/lewa/player/ExitApplication;

    #getter for: Lcom/lewa/player/ExitApplication;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/lewa/player/ExitApplication;->access$200(Lcom/lewa/player/ExitApplication;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/lewa/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v5, :cond_0

    .line 180
    iget-object v5, p0, Lcom/lewa/player/ExitApplication$3;->this$0:Lcom/lewa/player/ExitApplication;

    #getter for: Lcom/lewa/player/ExitApplication;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/lewa/player/ExitApplication;->access$200(Lcom/lewa/player/ExitApplication;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 181
    .local v4, volume:I
    iget-object v5, p0, Lcom/lewa/player/ExitApplication$3;->this$0:Lcom/lewa/player/ExitApplication;

    #getter for: Lcom/lewa/player/ExitApplication;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/lewa/player/ExitApplication;->access$200(Lcom/lewa/player/ExitApplication;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 182
    .local v1, maxVolume:I
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v2

    .line 183
    .local v2, numberFormat:Ljava/text/NumberFormat;
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 184
    int-to-float v5, v4

    int-to-float v6, v1

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-virtual {v2, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, result:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3fe6666666666666L

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    .line 186
    iget-object v5, p0, Lcom/lewa/player/ExitApplication$3;->this$0:Lcom/lewa/player/ExitApplication;

    invoke-virtual {v5}, Lcom/lewa/player/ExitApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/lewa/player/ExitApplication$3;->this$0:Lcom/lewa/player/ExitApplication;

    const v7, 0x7f0b010e

    invoke-virtual {v6, v7}, Lcom/lewa/player/ExitApplication;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
