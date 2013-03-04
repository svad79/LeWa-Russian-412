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
    .line 143
    iput-object p1, p0, Lcom/lewa/player/ExitApplication$3;->this$0:Lcom/lewa/player/ExitApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 148
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/lewa/player/online/OnlineLoader;->isWiFiActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-static {p1}, Lcom/ting/mp3/android/onlinedata/ImageManager;->init(Landroid/content/Context;)V

    .line 151
    iget-object v1, p0, Lcom/lewa/player/ExitApplication$3;->this$0:Lcom/lewa/player/ExitApplication;

    iget-object v2, p0, Lcom/lewa/player/ExitApplication$3;->this$0:Lcom/lewa/player/ExitApplication;

    #getter for: Lcom/lewa/player/ExitApplication;->sp:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/lewa/player/ExitApplication;->access$000(Lcom/lewa/player/ExitApplication;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/lewa/player/ExitApplication$3;->this$0:Lcom/lewa/player/ExitApplication;

    #getter for: Lcom/lewa/player/ExitApplication;->edit:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/lewa/player/ExitApplication;->access$100(Lcom/lewa/player/ExitApplication;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lewa/player/ExitApplication;->certify(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    sget-object v1, Lcom/lewa/player/MusicUtils;->UPDATE_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    new-instance v1, Lcom/lewa/player/ExitApplication$3$1;

    invoke-direct {v1, p0}, Lcom/lewa/player/ExitApplication$3$1;-><init>(Lcom/lewa/player/ExitApplication$3;)V

    invoke-virtual {v1}, Lcom/lewa/player/ExitApplication$3$1;->start()V

    goto :goto_0
.end method
