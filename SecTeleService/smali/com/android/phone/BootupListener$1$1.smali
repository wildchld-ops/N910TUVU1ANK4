.class Lcom/android/phone/BootupListener$1$1;
.super Ljava/lang/Object;
.source "BootupListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BootupListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/BootupListener$1;


# direct methods
.method constructor <init>(Lcom/android/phone/BootupListener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/BootupListener$1$1;->this$1:Lcom/android/phone/BootupListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "BootupListener"

    const-string v1, "Start FlatRateAlertActivity."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/BootupListener$1$1;->this$1:Lcom/android/phone/BootupListener$1;

    iget-object v0, v0, Lcom/android/phone/BootupListener$1;->this$0:Lcom/android/phone/BootupListener;

    # getter for: Lcom/android/phone/BootupListener;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/BootupListener;->access$000(Lcom/android/phone/BootupListener;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BootupListener$1$1;->this$1:Lcom/android/phone/BootupListener$1;

    iget-object v1, v1, Lcom/android/phone/BootupListener$1;->val$activityIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
