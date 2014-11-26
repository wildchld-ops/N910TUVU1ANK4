.class Lcom/diotek/ime/framework/connect/ContactsConnectModule$1;
.super Ljava/lang/Thread;
.source "ContactsConnectModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/connect/ContactsConnectModule;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/connect/ContactsConnectModule;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/connect/ContactsConnectModule;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/connect/ContactsConnectModule$1;->this$0:Lcom/diotek/ime/framework/connect/ContactsConnectModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/connect/ContactsConnectModule$1;->this$0:Lcom/diotek/ime/framework/connect/ContactsConnectModule;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/connect/ContactsConnectModule;->getPhoneName()V

    iget-object v1, p0, Lcom/diotek/ime/framework/connect/ContactsConnectModule$1;->this$0:Lcom/diotek/ime/framework/connect/ContactsConnectModule;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/connect/ContactsConnectModule;->getEmailAccounts()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
