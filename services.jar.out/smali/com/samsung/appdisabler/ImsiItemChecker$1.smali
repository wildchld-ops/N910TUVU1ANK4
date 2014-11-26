.class Lcom/samsung/appdisabler/ImsiItemChecker$1;
.super Ljava/lang/Object;
.source "ImsiItemChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/appdisabler/ImsiItemChecker;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/appdisabler/ImsiItemChecker;


# direct methods
.method constructor <init>(Lcom/samsung/appdisabler/ImsiItemChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/appdisabler/ImsiItemChecker$1;->this$0:Lcom/samsung/appdisabler/ImsiItemChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker$1;->this$0:Lcom/samsung/appdisabler/ImsiItemChecker;

    # getter for: Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;
    invoke-static {v0}, Lcom/samsung/appdisabler/ImsiItemChecker;->access$300(Lcom/samsung/appdisabler/ImsiItemChecker;)Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    move-result-object v0

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
