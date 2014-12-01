.class Lcom/android/incallui/CallCardMwVoiceFragment$1;
.super Ljava/lang/Object;
.source "CallCardMwVoiceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardMwVoiceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardMwVoiceFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardMwVoiceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardMwVoiceFragment$1;->this$0:Lcom/android/incallui/CallCardMwVoiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardMwVoiceFragment$1;->this$0:Lcom/android/incallui/CallCardMwVoiceFragment;

    # invokes: Lcom/android/incallui/CallCardMwVoiceFragment;->returnToNormalWindowMode()V
    invoke-static {v0}, Lcom/android/incallui/CallCardMwVoiceFragment;->access$000(Lcom/android/incallui/CallCardMwVoiceFragment;)V

    return-void
.end method
