.class Lcom/diotek/ime/framework/connect/MessagingConnectModule$1;
.super Ljava/lang/Thread;
.source "MessagingConnectModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/connect/MessagingConnectModule;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/connect/MessagingConnectModule;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/connect/MessagingConnectModule;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule$1;->this$0:Lcom/diotek/ime/framework/connect/MessagingConnectModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule$1;->this$0:Lcom/diotek/ime/framework/connect/MessagingConnectModule;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->getSMSSendData()V

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule$1;->this$0:Lcom/diotek/ime/framework/connect/MessagingConnectModule;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->getSMSSentData()V

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule$1;->this$0:Lcom/diotek/ime/framework/connect/MessagingConnectModule;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->getSMSInboxData()V

    return-void
.end method
