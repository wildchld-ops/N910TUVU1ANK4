.class Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast$1;
.super Landroid/content/BroadcastReceiver;
.source "SideSyncBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;-><init>(Landroid/content/Context;Lcom/diotek/ime/framework/sidesync/SideSyncManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast$1;->this$0:Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast$1;->this$0:Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;

    # invokes: Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->broadcastEventParser(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->access$000(Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
