.class Lcom/android/incallui/InCallActivity$11;
.super Ljava/lang/Object;
.source "InCallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallActivity;->showIMSErrorDialog_Divert(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$toVoLTE:Z


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallActivity$11;->this$0:Lcom/android/incallui/InCallActivity;

    iput-object p2, p0, Lcom/android/incallui/InCallActivity$11;->val$number:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/incallui/InCallActivity$11;->val$toVoLTE:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$11;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$11;->val$number:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/incallui/InCallActivity$11;->val$toVoLTE:Z

    # invokes: Lcom/android/incallui/InCallActivity;->divertToVoiceCall(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/incallui/InCallActivity;->access$500(Lcom/android/incallui/InCallActivity;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$11;->this$0:Lcom/android/incallui/InCallActivity;

    # invokes: Lcom/android/incallui/InCallActivity;->onDialogDismissed()V
    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$400(Lcom/android/incallui/InCallActivity;)V

    return-void
.end method
