.class public Lcom/android/phone/PhotoRingScreen$MobileDataBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhotoRingScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhotoRingScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MobileDataBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhotoRingScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhotoRingScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhotoRingScreen$MobileDataBroadcastReceiver;->this$0:Lcom/android/phone/PhotoRingScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhotoRingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataStateChanged state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "CONNECTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen$MobileDataBroadcastReceiver;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mHasphotoringToDial:Z
    invoke-static {v2}, Lcom/android/phone/PhotoRingScreen;->access$2300(Lcom/android/phone/PhotoRingScreen;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen$MobileDataBroadcastReceiver;->this$0:Lcom/android/phone/PhotoRingScreen;

    const/4 v3, 0x0

    # setter for: Lcom/android/phone/PhotoRingScreen;->mHasphotoringToDial:Z
    invoke-static {v2, v3}, Lcom/android/phone/PhotoRingScreen;->access$2302(Lcom/android/phone/PhotoRingScreen;Z)Z

    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen$MobileDataBroadcastReceiver;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mPM:Lcom/android/phone/PhotoRingMgr;
    invoke-static {v2}, Lcom/android/phone/PhotoRingScreen;->access$100(Lcom/android/phone/PhotoRingScreen;)Lcom/android/phone/PhotoRingMgr;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhotoRingScreen$MobileDataBroadcastReceiver;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->uploadPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/PhotoRingScreen;->access$000(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/PhotoRingMgr;->uploadContentCall(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen$MobileDataBroadcastReceiver;->this$0:Lcom/android/phone/PhotoRingScreen;

    iget-object v3, p0, Lcom/android/phone/PhotoRingScreen$MobileDataBroadcastReceiver;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->pMe:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/PhotoRingScreen;->access$300(Lcom/android/phone/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$MobileDataBroadcastReceiver;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->pMe:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/phone/PhotoRingScreen;->access$300(Lcom/android/phone/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0908f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v3

    # setter for: Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/android/phone/PhotoRingScreen;->access$202(Lcom/android/phone/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method
