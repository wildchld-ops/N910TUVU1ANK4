.class Lcom/android/incallui/vt/WaitingVoiceCallActivity$1;
.super Ljava/lang/Object;
.source "WaitingVoiceCallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/vt/WaitingVoiceCallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/vt/WaitingVoiceCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/vt/WaitingVoiceCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity$1;->this$0:Lcom/android/incallui/vt/WaitingVoiceCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity$1;->this$0:Lcom/android/incallui/vt/WaitingVoiceCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->cancelAndDestroy()V

    return-void
.end method
