.class Lcom/lewa/player/ExitApplication$1;
.super Ljava/lang/Object;
.source "ExitApplication.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 41
    iput-object p1, p0, Lcom/lewa/player/ExitApplication$1;->this$0:Lcom/lewa/player/ExitApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lewa/player/ExitApplication$1;->this$0:Lcom/lewa/player/ExitApplication;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, v0, Lcom/lewa/player/ExitApplication;->mService:Landroid/os/Messenger;

    .line 46
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 52
    return-void
.end method
