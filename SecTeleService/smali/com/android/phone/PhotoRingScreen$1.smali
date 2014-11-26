.class Lcom/android/phone/PhotoRingScreen$1;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhotoRingScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhotoRingScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/PhotoRingScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhotoRingScreen$1;->this$0:Lcom/android/phone/PhotoRingScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$1;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mPM:Lcom/android/phone/PhotoRingMgr;
    invoke-static {v0}, Lcom/android/phone/PhotoRingScreen;->access$100(Lcom/android/phone/PhotoRingScreen;)Lcom/android/phone/PhotoRingMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen$1;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->uploadPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/PhotoRingScreen;->access$000(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhotoRingMgr;->uploadContentCall(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$1;->this$0:Lcom/android/phone/PhotoRingScreen;

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen$1;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->pMe:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/PhotoRingScreen;->access$300(Lcom/android/phone/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen$1;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->pMe:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/PhotoRingScreen;->access$300(Lcom/android/phone/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0908f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    # setter for: Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/phone/PhotoRingScreen;->access$202(Lcom/android/phone/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$1;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/PhotoRingScreen;->access$200(Lcom/android/phone/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method
