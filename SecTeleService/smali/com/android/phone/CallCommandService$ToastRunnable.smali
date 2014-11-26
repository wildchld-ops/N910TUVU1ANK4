.class Lcom/android/phone/CallCommandService$ToastRunnable;
.super Ljava/lang/Object;
.source "CallCommandService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToastRunnable"
.end annotation


# instance fields
.field mText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/CallCommandService;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallCommandService;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/CallCommandService$ToastRunnable;->this$0:Lcom/android/phone/CallCommandService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/phone/CallCommandService$ToastRunnable;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/CallCommandService$ToastRunnable;->this$0:Lcom/android/phone/CallCommandService;

    # getter for: Lcom/android/phone/CallCommandService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/CallCommandService;->access$000(Lcom/android/phone/CallCommandService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallCommandService$ToastRunnable;->mText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
