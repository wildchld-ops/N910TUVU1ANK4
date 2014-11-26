.class final Landroid/server/spell/SpellManagerService$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SpellManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/spell/SpellManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/spell/SpellManagerService;


# direct methods
.method private constructor <init>(Landroid/server/spell/SpellManagerService;)V
    .locals 0

    iput-object p1, p0, Landroid/server/spell/SpellManagerService$BootCompletedReceiver;->this$0:Landroid/server/spell/SpellManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/spell/SpellManagerService;Landroid/server/spell/SpellManagerService$1;)V
    .locals 0
    .param p1    # Landroid/server/spell/SpellManagerService;
    .param p2    # Landroid/server/spell/SpellManagerService$1;

    invoke-direct {p0, p1}, Landroid/server/spell/SpellManagerService$BootCompletedReceiver;-><init>(Landroid/server/spell/SpellManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v0, p0, Landroid/server/spell/SpellManagerService$BootCompletedReceiver;->this$0:Landroid/server/spell/SpellManagerService;

    # getter for: Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/server/spell/SpellManagerService;->access$300(Landroid/server/spell/SpellManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Landroid/server/spell/SpellManagerService$BootCompletedReceiver;->this$0:Landroid/server/spell/SpellManagerService;

    const-string v1, "BootCompletedReceiver"

    # invokes: Landroid/server/spell/SpellManagerService;->scheduleUpdateSpellScrollInfo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/server/spell/SpellManagerService;->access$400(Landroid/server/spell/SpellManagerService;Ljava/lang/String;)V

    return-void
.end method
