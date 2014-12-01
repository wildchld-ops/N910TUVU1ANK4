.class Lcom/android/mms/ui/ConversationComposer$1;
.super Landroid/content/BroadcastReceiver;
.source "ConversationComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationComposer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$1;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->clearCache()V

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->killMessage()V

    return-void
.end method
