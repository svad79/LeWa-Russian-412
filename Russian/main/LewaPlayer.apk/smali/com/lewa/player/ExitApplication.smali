.class public Lcom/lewa/player/ExitApplication;
.super Landroid/app/Application;
.source "ExitApplication.java"


# instance fields
.field private edit:Landroid/content/SharedPreferences$Editor;

.field private mConnection:Landroid/content/ServiceConnection;

.field public mService:Landroid/os/Messenger;

.field private mainActivity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field receiver:Landroid/content/BroadcastReceiver;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lewa/player/ExitApplication;->mainActivity:Ljava/util/List;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lewa/player/ExitApplication;->mService:Landroid/os/Messenger;

    .line 41
    new-instance v0, Lcom/lewa/player/ExitApplication$1;

    invoke-direct {v0, p0}, Lcom/lewa/player/ExitApplication$1;-><init>(Lcom/lewa/player/ExitApplication;)V

    iput-object v0, p0, Lcom/lewa/player/ExitApplication;->mConnection:Landroid/content/ServiceConnection;

    .line 143
    new-instance v0, Lcom/lewa/player/ExitApplication$3;

    invoke-direct {v0, p0}, Lcom/lewa/player/ExitApplication$3;-><init>(Lcom/lewa/player/ExitApplication;)V

    iput-object v0, p0, Lcom/lewa/player/ExitApplication;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/lewa/player/ExitApplication;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lewa/player/ExitApplication;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lewa/player/ExitApplication;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lewa/player/ExitApplication;->edit:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "act"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lewa/player/ExitApplication;->mainActivity:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public certify(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .parameter "sp"
    .parameter "edit"

    .prologue
    .line 71
    new-instance v0, Lcom/lewa/player/ExitApplication$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/lewa/player/ExitApplication$2;-><init>(Lcom/lewa/player/ExitApplication;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v0}, Lcom/lewa/player/ExitApplication$2;->start()V

    .line 118
    return-void
.end method

.method public finishAll()V
    .locals 3

    .prologue
    .line 132
    iget-object v2, p0, Lcom/lewa/player/ExitApplication;->mainActivity:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 133
    .local v0, act:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 137
    .end local v0           #act:Landroid/app/Activity;
    :cond_1
    iget-object v2, p0, Lcom/lewa/player/ExitApplication;->mainActivity:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 138
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lewa/player/ExitApplication;->mainActivity:Ljava/util/List;

    .line 139
    iget-object v2, p0, Lcom/lewa/player/ExitApplication;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/lewa/player/ExitApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    iget-object v2, p0, Lcom/lewa/player/ExitApplication;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2}, Lcom/lewa/player/ExitApplication;->unbindService(Landroid/content/ServiceConnection;)V

    .line 141
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    sget-object v1, Lcom/lewa/player/MusicUtils;->UPDATE_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/lewa/player/ExitApplication;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lewa/player/ExitApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    const-string v1, "Music_setting"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/lewa/player/ExitApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/player/ExitApplication;->sp:Landroid/content/SharedPreferences;

    .line 62
    iget-object v1, p0, Lcom/lewa/player/ExitApplication;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/player/ExitApplication;->edit:Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-static {p0}, Lcom/ting/mp3/android/onlinedata/ImageManager;->init(Landroid/content/Context;)V

    .line 64
    invoke-static {}, Lcom/ting/mp3/android/onlinedata/JobManager;->getInstance()Lcom/ting/mp3/android/onlinedata/JobManager;

    .line 65
    iget-object v1, p0, Lcom/lewa/player/ExitApplication;->sp:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/lewa/player/ExitApplication;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0, v1, v2}, Lcom/lewa/player/ExitApplication;->certify(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 66
    new-instance v1, Landroid/content/Intent;

    const-string v2, "lewa.lockscreen.service.LockScreenService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lewa/player/ExitApplication;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/lewa/player/ExitApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 69
    return-void
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "act"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lewa/player/ExitApplication;->mainActivity:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method
